MatchmakingStateFriendClient = class(MatchmakingStateFriendClient)
MatchmakingStateFriendClient.NAME = "MatchmakingStateFriendClient"

local MatchmakingState = {
	Default = "Default",
	CollectingTicket = "CollectingTicket",
	RequestingTicket = "RequestingTicket",
	CheckingLatency = "CheckingLatency",
	RequestingRegions = "RequestingRegions"
}
local TimeoutWaitingForPing = 2
local PingCount = 3
local TimeOutCheckingLatency = 10

MatchmakingStateFriendClient.init = function (self, params)
	self.matchmaking_manager = params.matchmaking_manager
	self.wwise_world = params.wwise_world
	self.lobby = params.lobby
	self.network_transmit = params.network_transmit
	self._network_options = params.network_options
	self.params = params
	self._request_timer = 0
	self._lobby = params.lobby
end

MatchmakingStateFriendClient.destroy = function (self)
	return
end

MatchmakingStateFriendClient.on_enter = function (self, state_context)
	self._game_server_data = nil
	self._state_context = state_context
	self._estimated_wait_time = -1
	self._state = MatchmakingState.Init
	self._region_latency = {}
	self._timeout = math.huge
	self._is_versus = state_context.mechanism == "versus"

	if self._is_versus then
		self:_sync_player_data()
	end
end

MatchmakingStateFriendClient._sync_player_data = function (self)
	local player = Managers.player:local_player()
	local name = player:name()
	local career_name = player:career_name()
	local profile_id = player:profile_index()
	local career_id = player:career_index()
	local party_id = self._state_context.party_id
	local slots = {
		"slot_frame",
		"slot_melee",
		"slot_ranged"
	}
	local items_interface = Managers.backend:get_interface("items")
	local versus_interface = Managers.backend:get_interface("versus")
	local slot_data = {}

	print("========================================")

	for _, slot_name in pairs(slots) do
		local item_id = versus_interface:get_loadout_item_id(career_name, slot_name)
		local item_key = items_interface:get_key(item_id)

		print(slot_name, item_key)

		slot_data[slot_name] = NetworkLookup.item_names[item_key]
	end

	print("----------------------------------------")
	table.dump(slot_data, "SLOT_SYNC_DATA", 2)
	print("========================================")

	local do_full_sync = true
	local fake_party_id = 0
	local peer_id = Network.peer_id()
	local host = self.lobby:lobby_host()

	self.network_transmit:send_rpc("rpc_matchmaking_sync_player_data", host, peer_id, name, profile_id, career_id, slot_data.slot_frame, slot_data.slot_melee, slot_data.slot_ranged, fake_party_id, do_full_sync)
end

MatchmakingStateFriendClient.on_exit = function (self)
	local mechanism = Managers.mechanism:game_mechanism()
	local server_id = mechanism and mechanism.get_server_id and mechanism:get_server_id()

	if server_id then
		print("JOINING MATCH. SERVER NAME: " .. server_id)
	end

	if Managers.mechanism:game_mechanism().using_dedicated_servers then
		local _, aws_servers = Managers.mechanism:game_mechanism():using_dedicated_servers()

		if aws_servers then
			local network_client = Managers.mechanism:network_handler()

			if self._session_id and network_client.fail_reason then
				Managers.backend:get_interface("versus"):cancel_matchmaking(callback(self, "_cancel_matchmaking_cb"))
			end

			self._session_id = nil
			self._base_url = nil
		end
	end
end

MatchmakingStateFriendClient.update = function (self, dt, t)
	if not Managers.state.game_mode then
		return
	end

	local level_key = Managers.state.game_mode:level_key()
	local level_settings = LevelSettings[level_key]

	if not level_settings.hub_level then
		return
	end

	local search_config = self._state_context.search_config

	if self._is_versus and self.matchmaking_manager:is_quick_game() then
		if self._state == MatchmakingState.Init then
			self._state = MatchmakingState.RequestingRegions
		elseif self._state == MatchmakingState.RequestingRegions then
			self:_update_requesting_regions(dt, t)
		elseif self._state == MatchmakingState.CheckingLatency then
			self:_update_checking_latency(dt, t)
		elseif self._state == MatchmakingState.RequestingTicket then
			self:_update_requesting_ticket(dt, t)
		end
	end

	local gamepad_active_last_frame = self._gamepad_active_last_frame
	local gamepad_active = Managers.input:is_device_active("gamepad")

	self._gamepad_active_last_frame = gamepad_active
end

MatchmakingStateFriendClient._update_requesting_regions = function (self, dt, t)
	if self._requesting_regions then
		return
	end

	local interface = Managers.backend:get_interface("versus")

	if not interface then
		return
	end

	self._requesting_regions = true

	local cb = callback(self, "_request_regions_cb")

	interface:request_regions(cb)

	self._timeout = t + TimeOutCheckingLatency
end

MatchmakingStateFriendClient._request_regions_cb = function (self, result)
	if self._ignore_results then
		return
	end

	if not result.success then
		return
	end

	self._regions = result.regions
	self._base_url = result.url
	self._state = MatchmakingState.CheckingLatency
end

MatchmakingStateFriendClient._update_checking_latency = function (self, dt, t)
	if t >= self._timeout then
		return
	end

	if self._requesting_latency then
		return
	end

	local interface = Managers.backend:get_interface("versus")

	if not interface then
		return
	end

	Managers.ping:ping_multiple_times(TimeoutWaitingForPing, self._regions, PingCount, callback(self, "_ping_cb"))

	self._requesting_latency = true
end

MatchmakingStateFriendClient._ping_cb = function (self, result, data)
	if self._ignore_results then
		return
	end

	if not result then
		return
	end

	self._region_latency = data
	self._state = MatchmakingState.RequestingTicket
end

MatchmakingStateFriendClient._update_requesting_ticket = function (self, dt, t)
	local interface = Managers.backend:get_interface("versus")

	if not interface then
		return
	end

	local cb = callback(self, "_request_matchmaking_ticket_cb")

	interface:request_matchmaking_ticket(self._region_latency, cb)

	self._state = MatchmakingState.CollectingTicket
end

MatchmakingStateFriendClient._request_matchmaking_ticket_cb = function (self, result)
	if not Network.game_session() then
		return
	end

	if not result.success then
		if result.errorCode == 404 then
			local text = Localize("wrong_game_version")

			Managers.simple_popup:queue_popup(text, Localize("popup_needs_restart_topic"), "confirm", Localize("button_ok"))
		end

		return
	end

	self._base_url = result.url

	local packed_ticket = NetworkUtils.net_pack_flexmatch_ticket(result.ticket)

	self.network_transmit:send_rpc_server("rpc_matchmaking_ticket_response", packed_ticket)

	self._state = MatchmakingState.Default
end

MatchmakingStateFriendClient.rpc_matchmaking_ticket_request = function (self)
	self._state = MatchmakingState.RequestingRegions
end

MatchmakingStateFriendClient.rpc_matchmaking_queue_session_data = function (self, packed_session_id, eta)
	local session_id = NetworkUtils.unnet_pack_flexmatch_ticket(packed_session_id)

	self._session_id = session_id

	Managers.backend:get_interface("versus"):set_matchmaking_session_id(session_id)

	self._estimated_wait_time = eta
end

MatchmakingStateFriendClient._cancel_matchmaking_cb = function (self, result, code, headers, data)
	self._session_id = nil
end

MatchmakingStateFriendClient.get_transition = function (self)
	if self._game_server_data then
		return "join_server", self._game_server_data
	end
end

MatchmakingStateFriendClient.rpc_matchmaking_broadcast_game_server_ip_address = function (self, channel_id, ip_address)
	self._game_server_data = {
		server_info = {
			ip_port = ip_address
		}
	}
end