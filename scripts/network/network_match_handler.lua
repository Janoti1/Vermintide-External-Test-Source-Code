NetworkMatchHandler = class(NetworkMatchHandler)

local DEFAULT_DATA = {
	leader_peer_id = "",
	player_name = "",
	is_dedicated_server = false,
	is_synced = true,
	versus_level = 1,
	is_match_owner = false
}
local RPCS = {
	"rpc_network_match_sync_player_data",
	"rpc_network_match_changed",
	"rpc_network_match_request_sync"
}

NetworkMatchHandler.init = function (self, network_handler, is_server, peer_id, server_peer_id)
	self._network_handler = network_handler
	self._is_server = is_server
	self._my_peer_id = peer_id
	self._server_peer_id = server_peer_id
	self._stored_data = {}
	self._data_by_peer = {
		[peer_id] = self:_create_data({
			is_synced = true,
			is_dedicated_server = DEDICATED_SERVER,
			player_name = not DEDICATED_SERVER and PlayerUtils.player_name(peer_id) or nil,
			leader_peer_id = self._server_peer_id,
			is_match_owner = is_server and true,
			versus_level = not DEDICATED_SERVER and ExperienceSettings.get_versus_level() or nil
		})
	}

	if not is_server then
		self._data_by_peer[server_peer_id] = self:_create_data({
			is_match_owner = true,
			leader_peer_id = server_peer_id
		})
		self._pending_initial_sync = true
	end
end

NetworkMatchHandler.server_created = function (self, peer_id)
	Managers.persistent_event:trigger("new_network_match_synced", self._is_server, peer_id)
end

NetworkMatchHandler.register_pending_peer = function (self, peer_id, leader)
	local channel_id = PEER_ID_TO_CHANNEL[peer_id]

	self._data_by_peer[peer_id] = self:_try_unstore_data(peer_id) or self:_create_data()
	self._data_by_peer[peer_id].leader_peer_id = leader

	printf("[NetworkMatchHandler] Registering pending peer %s with leader %s", peer_id, leader)
	self:sync_data_down_to(peer_id)

	if leader == self._my_peer_id then
		RPC.rpc_network_match_request_sync(channel_id)
	elseif PEER_ID_TO_CHANNEL[leader] then
		local leader_channel = PEER_ID_TO_CHANNEL[leader]

		RPC.rpc_network_match_request_sync(leader_channel)
	else
		printf("[NetworkMatchHandler] Failed to sync client %s because of no longer holding a connection to their leader %s", peer_id, leader)
	end
end

NetworkMatchHandler.register_rpcs = function (self, network_event_delegate, network_transmit)
	self._network_event_delegate = network_event_delegate
	self._network_transmit = network_transmit

	network_event_delegate:register(self, unpack(RPCS))
end

NetworkMatchHandler.unregister_rpcs = function (self)
	self._network_event_delegate:unregister(self)
end

NetworkMatchHandler.poll_propagation_peer = function (self)
	assert(self._is_server, "[NetworkMatchHandler] Only lobby hosts may propagate to another lobby host")

	local propagation_peer
	local joining_lobby = Managers.lobby:query_lobby("matchmaking_join_lobby") or Managers.lobby:query_lobby("matchmaking_game_server_client")

	if joining_lobby then
		propagation_peer = joining_lobby:lobby_host()
	end

	local old_propagation_peer = self._propagate_peer_id

	if propagation_peer ~= old_propagation_peer then
		printf("[NetworkMatchHandler] Propagation peer changed. Old: %s, New: %s", old_propagation_peer, propagation_peer)

		self._propagate_peer_id = propagation_peer

		if old_propagation_peer then
			self:_clear_non_session_peers()
		end

		self:_network_match_changed(propagation_peer)

		if propagation_peer then
			self:sync_data_up()
			self:send_rpc_down("rpc_network_match_changed", self._propagate_peer_id)
			self:_request_sync()
		end
	end
end

NetworkMatchHandler.rpc_network_match_sync_player_data = function (self, channel_id, peer_id, player_name, leader_peer_id, is_match_owner, versus_level)
	local peer_data = self:_try_unstore_data(peer_id) or self:_create_data()

	self._data_by_peer[peer_id] = peer_data
	peer_data.player_name = player_name
	peer_data.leader_peer_id = leader_peer_id
	peer_data.versus_level = versus_level
	peer_data.is_match_owner = is_match_owner
	peer_data.is_synced = true

	local sender_peer_id = CHANNEL_TO_PEER_ID[channel_id]

	self:propagate_rpc("rpc_network_match_sync_player_data", sender_peer_id, peer_id, player_name, leader_peer_id, is_match_owner, versus_level)

	if self._pending_initial_sync then
		self._pending_initial_sync = false

		Managers.persistent_event:trigger("new_network_match_synced", self._is_server, self._my_peer_id)
	end
end

NetworkMatchHandler.rpc_network_match_changed = function (self, channel_id, new_match_owner_peer_id)
	self:_clear_non_session_peers()

	local peer_data = self._data_by_peer[new_match_owner_peer_id]

	if peer_data then
		peer_data.is_match_owner = true
	end

	printf("[NetworkMatchHandler] Network match changed. New match owner: %s", new_match_owner_peer_id)
	self:send_rpc_down("rpc_network_match_changed", new_match_owner_peer_id)
end

NetworkMatchHandler._network_match_changed = function (self, new_match_owner_peer_id)
	for peer_id, peer_data in pairs(self._data_by_peer) do
		peer_data.is_match_owner = false
	end

	if new_match_owner_peer_id then
		self._data_by_peer[new_match_owner_peer_id] = self:_create_data({
			is_match_owner = true,
			leader_peer_id = new_match_owner_peer_id
		})
	else
		self._data_by_peer[self._my_peer_id].is_match_owner = true
	end

	if self._is_server then
		self:send_rpc_down("rpc_network_match_changed", new_match_owner_peer_id or self._my_peer_id)
	end

	Managers.persistent_event:trigger("network_match_changed", new_match_owner_peer_id)
end

NetworkMatchHandler.rpc_network_match_request_sync = function (self, channel_id)
	local requester_peer_id = CHANNEL_TO_PEER_ID[channel_id]

	printf("[NetworkMatchHandler] Peer %s requested sync", requester_peer_id)

	local requester_data = self._data_by_peer[requester_peer_id]

	if requester_data.is_match_owner then
		self:sync_data_up()

		return
	end

	local my_peer_id = self._my_peer_id
	local my_peer_data = self._data_by_peer[my_peer_id]

	if my_peer_data.is_match_owner then
		self:sync_data_down_to(requester_peer_id)

		return
	elseif my_peer_data.leader_peer_id == requester_peer_id then
		self:sync_data_up()

		return
	end

	assert(requester_data.leader_peer_id == my_peer_id, "[NetworkMatchHandler] Only a client of ourselves is expected here")
	self:sync_data_down_to(requester_peer_id)
end

NetworkMatchHandler._request_sync = function (self)
	printf("[NetworkMatchHandler] Requesting sync.")
	self:send_rpc_up("rpc_network_match_request_sync")
end

NetworkMatchHandler.get_match_owner = function (self)
	for peer_id, peer_data in pairs(self._data_by_peer) do
		if peer_data.is_match_owner then
			return peer_id
		end
	end
end

NetworkMatchHandler.is_leader = function (self, peer_id)
	peer_id = peer_id or Network.peer_id()

	return self:query_peer_data(peer_id, "leader_peer_id") == peer_id
end

NetworkMatchHandler.synced_peers = function (self)
	return table.keys_if(self._data_by_peer, function (_, peer_data)
		return peer_data.is_synced
	end)
end

NetworkMatchHandler.sync_data_up = function (self)
	local my_peer_id = self._my_peer_id

	for peer_id, peer_data in pairs(self._data_by_peer) do
		if peer_data.leader_peer_id == my_peer_id or peer_id == my_peer_id then
			local player_name, leader_peer_id, is_match_owner = peer_data.player_name, peer_data.leader_peer_id, peer_data.is_match_owner

			self:send_rpc_up("rpc_network_match_sync_player_data", peer_id, player_name, leader_peer_id, is_match_owner, peer_data.versus_level)
		end
	end
end

NetworkMatchHandler.sync_data_down = function (self)
	for peer_id, peer_data in pairs(self._data_by_peer) do
		local player_name, leader_peer_id, is_match_owner = peer_data.player_name, peer_data.leader_peer_id, peer_data.is_match_owner

		self:send_rpc_down_except("rpc_network_match_sync_player_data", peer_id, peer_id, player_name, leader_peer_id, is_match_owner, peer_data.versus_level)
	end
end

NetworkMatchHandler.sync_data_down_to = function (self, target_peer)
	local channel_id = PEER_ID_TO_CHANNEL[target_peer]

	if not channel_id then
		return
	end

	for peer_id, peer_data in pairs(self._data_by_peer) do
		if peer_id ~= target_peer then
			local player_name, leader_peer_id, is_match_owner = peer_data.player_name, peer_data.leader_peer_id, peer_data.is_match_owner

			RPC.rpc_network_match_sync_player_data(channel_id, peer_id, player_name, leader_peer_id, is_match_owner, peer_data.versus_level)
		end
	end
end

NetworkMatchHandler.send_rpc_up = function (self, rpc, ...)
	if self._propagate_peer_id then
		local propagate_channel = PEER_ID_TO_CHANNEL[self._propagate_peer_id]

		if propagate_channel then
			RPC[rpc](propagate_channel, ...)
		end
	elseif self._server_peer_id ~= self._my_peer_id then
		local server_channel = PEER_ID_TO_CHANNEL[self._server_peer_id]

		if server_channel then
			RPC[rpc](server_channel, ...)
		end
	end
end

NetworkMatchHandler.can_propagate = function (self)
	return self._propagate_peer_id
end

NetworkMatchHandler.send_rpc_all = function (self, rpc, ...)
	self:send_rpc_self(rpc, ...)
	self:send_rpc_up(rpc, ...)
	self:send_rpc_down(rpc, ...)
end

NetworkMatchHandler.send_rpc_self = function (self, rpc, ...)
	RPC[rpc](PEER_ID_TO_CHANNEL[self._my_peer_id], ...)
end

NetworkMatchHandler.send_rpc = function (self, rpc, peer_id, ...)
	local channel_id = PEER_ID_TO_CHANNEL[peer_id]

	RPC[rpc](channel_id, ...)
end

NetworkMatchHandler.send_rpc_down = function (self, rpc, ...)
	self:send_rpc_down_except(rpc, nil, ...)
end

NetworkMatchHandler.send_rpc_down_except = function (self, rpc, except_peer, ...)
	local my_peer_id = self._my_peer_id
	local im_match_host = self._data_by_peer[my_peer_id].is_match_owner

	for peer_id, peer_data in pairs(self._data_by_peer) do
		if peer_id ~= except_peer and peer_id ~= my_peer_id and (peer_data.leader_peer_id == my_peer_id or peer_data.leader_peer_id == peer_id and im_match_host) then
			local channel_id = PEER_ID_TO_CHANNEL[peer_id]

			if channel_id then
				RPC[rpc](channel_id, ...)
			end
		end
	end
end

NetworkMatchHandler.send_rpc_down_except_if = function (self, rpc, except_peer, condition, ...)
	local my_peer_id = self._my_peer_id
	local im_match_host = self._data_by_peer[my_peer_id].is_match_owner

	for peer_id, peer_data in pairs(self._data_by_peer) do
		if peer_id ~= except_peer and condition(peer_id) and peer_id ~= my_peer_id and (peer_data.leader_peer_id == my_peer_id or peer_data.leader_peer_id == peer_id and im_match_host) then
			local channel_id = PEER_ID_TO_CHANNEL[peer_id]

			if channel_id then
				RPC[rpc](channel_id, ...)
			end
		end
	end
end

NetworkMatchHandler.send_rpc_down_if = function (self, rpc, condition, ...)
	local my_peer_id = self._my_peer_id
	local im_match_host = self._data_by_peer[my_peer_id].is_match_owner

	for peer_id, peer_data in pairs(self._data_by_peer) do
		if condition(peer_id) and peer_id ~= my_peer_id and (peer_data.leader_peer_id == my_peer_id or peer_data.leader_peer_id == peer_id and im_match_host) then
			local channel_id = PEER_ID_TO_CHANNEL[peer_id]

			if channel_id then
				RPC[rpc](channel_id, ...)
			end
		end
	end
end

NetworkMatchHandler.propagate_rpc = function (self, rpc, source_peer_id, ...)
	if self._propagate_peer_id then
		if self._propagate_peer_id == source_peer_id then
			self:send_rpc_down(rpc, ...)

			return
		end

		self:send_rpc_up(rpc, ...)
	end

	if self._is_server then
		self:send_rpc_down_except(rpc, source_peer_id, ...)
	end
end

NetworkMatchHandler.propagate_rpc_if = function (self, rpc, source_peer_id, condition, ...)
	if self._propagate_peer_id then
		if self._propagate_peer_id == source_peer_id then
			self:send_rpc_down_if(rpc, condition, ...)

			return
		end

		self:send_rpc_up(rpc, ...)
	end

	if self._is_server then
		self:send_rpc_down_except_if(rpc, source_peer_id, condition, ...)
	end
end

NetworkMatchHandler._clear_non_session_peers = function (self)
	for peer_id in pairs(self._data_by_peer) do
		if not self._network_handler:is_peer_hot_join_synced(peer_id) then
			self._data_by_peer[peer_id] = nil
		end
	end
end

NetworkMatchHandler.client_disconnected = function (self, peer_id)
	self:_store_data(peer_id)
end

NetworkMatchHandler.has_peer_data = function (self, peer_id)
	return self._data_by_peer[peer_id]
end

NetworkMatchHandler.query_peer_data = function (self, peer_id, key, disallow_default)
	local peer_data = self._data_by_peer[peer_id]

	if peer_data then
		return peer_data[key]
	end

	return not disallow_default and self:default_data(key) or nil
end

NetworkMatchHandler.default_data = function (self, key)
	return DEFAULT_DATA[key]
end

NetworkMatchHandler._try_unstore_data = function (self, peer_id)
	local stored_data = self._stored_data[peer_id]

	self._stored_data[peer_id] = nil

	return stored_data or self._data_by_peer[peer_id]
end

NetworkMatchHandler._store_data = function (self, peer_id)
	self._stored_data[peer_id] = self._data_by_peer[peer_id]
	self._data_by_peer[peer_id] = nil
end

NetworkMatchHandler._create_data = function (self, init_data)
	local data = table.shallow_copy(DEFAULT_DATA)

	if init_data then
		table.merge(data, init_data)
	end

	return data
end

NetworkMatchHandler.destroy = function (self)
	Managers.persistent_event:trigger("network_match_terminated")
end
