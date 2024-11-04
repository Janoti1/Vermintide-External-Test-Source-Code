local versus_win_conditions_testify = script_data.testify and require("scripts/managers/game_mode/versus_win_conditions_testify")
local ObjectiveTypes = require("scripts/entity_system/systems/objective/objective_types")
local settings = DLCSettings.carousel

VersusWinConditions = class(VersusWinConditions)

local RPCS = {
	"rpc_versus_set_score"
}

VersusWinConditions.init = function (self, versus_mechanism)
	self._current_round = 0
	self._win_data = {}
	self.mechanism = versus_mechanism
	self._round_almost_over_time_breakpoint = GameModeSettings.versus.round_almost_over_time_breakpoint
	self._distance_to_winning_objective_breakpoint = GameModeSettings.versus.distance_to_winning_objective_breakpoint
	self._num_sections_completed = 0
	self.party_won_early = nil
	self._current_objective_marker_positions = {}
end

VersusWinConditions._reset_set_score = function (self, level_id)
	local objective_settings = VersusObjectiveSettings[level_id]

	if objective_settings then
		local num_sets = objective_settings.num_sets

		self._has_objectives = false

		local parties = Managers.party:parties()

		for party_id = 1, #parties do
			local party_data = parties[party_id]

			if party_data.game_participating then
				local win_data = {}

				for k = 1, num_sets do
					local objective_list = ObjectiveLists[objective_settings.objective_lists[k]]

					win_data[k] = {
						distance_traveled = 0,
						claimed_points = 0,
						unclaimed_points = objective_list.max_score,
						max_points = objective_list.max_score
					}
					self._has_objectives = true
				end

				self._win_data[party_id] = win_data
			end
		end

		self._set_score_is_setup = true
	end
end

VersusWinConditions.hot_join_sync = function (self, peer_id)
	local channel_id = PEER_ID_TO_CHANNEL[peer_id]

	for party_id, total_data in pairs(self._win_data) do
		local sets_data = self._win_data[party_id]

		for i = 1, #sets_data do
			local data = sets_data[i]

			RPC.rpc_versus_set_score(channel_id, party_id, data.claimed_points, i)
		end
	end
end

VersusWinConditions.register_rpcs = function (self, network_event_delegate, network_transmit)
	network_event_delegate:register(self, unpack(RPCS))

	self._network_event_delegate = network_event_delegate
end

VersusWinConditions.unregister_rpcs = function (self)
	self._network_event_delegate:unregister(self)

	self._network_event_delegate = nil
end

VersusWinConditions.setup_round = function (self, is_server)
	local objective_settings = self.mechanism:get_objective_settings()

	self._is_server = is_server
	self._round_timer = objective_settings.round_timer or 36000
	self._current_round = self._current_round + 1
	self._final_round = self.mechanism:is_last_set() and self.mechanism:get_state() == "round_2"
	self._round_over = false
	self._level_id = objective_settings.level_id
	self._level_id = Managers.level_transition_handler:get_current_level_key()
	self._current_level_progress = 0
	self._round_started = false
	self._heroes_close_to_winning = false
	self._num_sections_completed = 0
	self._pactsworn_party_id = Managers.state.side:get_side_from_name("dark_pact").party.party_id
	self._hero_party_id = Managers.state.side:get_side_from_name("heroes").party.party_id

	if self._current_round == 1 or not self._set_score_is_setup then
		self:_reset_set_score(self._level_id)
	end

	Managers.state.event:register(self, "gm_event_round_started", "on_round_started")
	Managers.state.event:register(self, "gm_event_end_conditions_met", "on_end_conditions_met")
	Managers.state.event:register(self, "gm_event_initial_peers_spawned", "on_initial_peers_spawned")
	Managers.state.event:register(self, "objective_completed", "on_objective_completed")
	Managers.state.event:register(self, "obj_objective_section_completed", "on_objective_section_completed")
end

VersusWinConditions.on_game_mode_data_created = function (self, game_session, go_id)
	self._game_session = game_session
	self._go_id = go_id

	if game_session and not self._is_server then
		self._round_timer = GameSession.game_object_field(game_session, go_id, "round_timer")
	end
end

VersusWinConditions.wipe_unclaimed_points = function (self)
	local set_data = self:current_set_data(self._hero_party_id)

	set_data.unclaimed_points = 0
end

VersusWinConditions.round_ended = function (self)
	self:wipe_unclaimed_points()
end

VersusWinConditions.on_game_mode_data_destroyed = function (self)
	self._game_session = nil
	self._go_id = nil
	self._round_timer = nil
end

VersusWinConditions.server_update = function (self, t, dt)
	if script_data.testify then
		self:update_testify(dt, t)
	end

	self:_server_update_round_timer(dt)
end

VersusWinConditions._server_update_round_timer = function (self, dt)
	if not self._round_started then
		return
	end

	local game = Network.game_session()

	if not game then
		return
	end

	self._round_timer = math.max(self._round_timer - dt, 0)

	GameSession.set_game_object_field(game, self._go_id, "round_timer", self._round_timer)
end

VersusWinConditions.client_update = function (self, t, dt)
	if script_data.testify then
		self:update_testify(dt, t)
	end

	if not self._go_id then
		return
	end

	if not self._round_started then
		return
	end

	local game = Network.game_session()

	if not game then
		return
	end

	self._round_timer = GameSession.game_object_field(game, self._go_id, "round_timer")
	self._heroes_close_to_winning = GameSession.game_object_field(game, self._go_id, "heroes_close_to_winning")
end

VersusWinConditions.is_heroes_close_to_win = function (self)
	return self._close_to_winning
end

VersusWinConditions.on_round_started = function (self)
	self._round_started = true

	if self._is_server then
		local game = Network.game_session()

		GameSession.set_game_object_field(game, self._go_id, "round_timer", self._round_timer)
	end
end

VersusWinConditions.on_end_conditions_met = function (self, reason, checkpoint_available, percentages_completed)
	self._round_over = true

	Managers.state.event:unregister("gm_event_round_started", self)
	Managers.state.event:unregister("gm_event_end_conditions_met", self)
	Managers.state.event:unregister("gm_event_initial_peers_spawned", self)
	Managers.state.event:unregister("obj_objective_section_completed", self)
	Managers.state.event:unregister("objective_completed", self)

	local avg = {}
	local player_manager = Managers.player

	for unique_id, completed_distance in pairs(percentages_completed) do
		local player = player_manager:player_from_unique_id(unique_id)

		if player then
			local party = player:get_party()
			local data = avg[party.party_id] or {
				distance = 0,
				num_players = 0
			}

			data.num_players = data.num_players + 1
			data.distance = data.distance + completed_distance
			avg[party.party_id] = data
		end
	end

	local set_number = self.mechanism:get_current_set()

	for party_id, data in pairs(avg) do
		local sets_data = self._win_data[party_id]
		local set_data = sets_data[set_number]

		set_data.distance_traveled = data.distance / data.num_players
	end
end

VersusWinConditions.current_set_data = function (self, party_id)
	local sets_data = self._win_data[party_id]

	if not sets_data then
		return
	end

	local set_index = self.mechanism:get_current_set()
	local data = sets_data[set_index]

	return data, set_index
end

VersusWinConditions.get_sets_data_for_party = function (self, party_id)
	local sets_data = self._win_data[party_id]

	if not sets_data then
		return nil
	end

	return sets_data
end

VersusWinConditions.on_initial_peers_spawned = function (self)
	self._objective_system = Managers.state.entity:system("objective_system")
end

VersusWinConditions.on_objective_completed = function (self, objective_extension, objective_data)
	Managers.state.achievement:trigger_event("register_objective_completed", objective_data, self._hero_party_id, objective_extension)

	if not self._is_server then
		return
	end

	self._main_path_distance_to_winning_objective = nil

	self:add_time(objective_extension:get_time_for_completion())
	self:add_score(objective_extension:get_score_for_completion(), objective_extension)

	if not self._heroes_close_to_winning then
		self:_check_heroes_close_to_win_conditions_met()
	end

	local has_nested_parent_objectives = self:_has_nested_parent_objectives(objective_data)
	local has_sections = objective_extension:get_total_sections() > 1 or has_nested_parent_objectives

	if not has_sections then
		self._objective_system:objective_section_completed_telemetry()
	end
end

VersusWinConditions._get_current_objective_data = function (self)
	local current_objective = Managers.state.game_mode:game_mode():get_current_objective_data()
	local _, objective = next(current_objective)

	return objective
end

VersusWinConditions._get_next_objective_data = function (self)
	local next_objective = Managers.state.game_mode:game_mode():get_next_objective_data()

	if not next_objective then
		return
	end

	local _, objective = next(next_objective)

	return objective
end

VersusWinConditions.on_objective_section_completed = function (self, objective_extension)
	if not self._is_server then
		return
	end

	self:add_time(objective_extension:get_time_per_section())
	self:add_score(objective_extension:get_score_per_section(), objective_extension)

	local current_section = objective_extension:get_current_section()
	local total_sections = objective_extension:get_total_sections()

	if not self._heroes_close_to_winning then
		self:_check_heroes_close_to_win_conditions_met(current_section, total_sections)
	end

	if total_sections > 1 then
		self._objective_system:objective_section_completed_telemetry(current_section, total_sections)
	end
end

VersusWinConditions._check_heroes_close_to_win_conditions_met = function (self, current_section, total_sections)
	local early_win_data = self:_get_early_win_data(self._hero_party_id)
	local objective_data, score_per_section

	if current_section and total_sections and current_section < total_sections then
		objective_data = self:_get_current_objective_data()
	else
		objective_data = self:_get_next_objective_data()
	end

	if not objective_data then
		return
	end

	local has_nested_parent_objectives, num_nested_objectives = self:_has_nested_parent_objectives(objective_data)

	if has_nested_parent_objectives then
		local _, section = next(objective_data.sub_objectives)

		score_per_section = section.score_for_completion
		total_sections = num_nested_objectives
	end

	total_sections = total_sections or objective_data.num_sockets or objective_data.num_sections or nil
	score_per_section = score_per_section or objective_data.score_per_section or objective_data.score_per_socket or nil

	local is_granular_objective = total_sections and score_per_section and total_sections >= 10
	local close_to_win = false

	if objective_data.score_for_completion then
		close_to_win = early_win_data.score + objective_data.score_for_completion > early_win_data.other_party_score_potential
	elseif is_granular_objective then
		close_to_win = early_win_data.score + score_per_section * total_sections > early_win_data.other_party_score_potential
	elseif total_sections and score_per_section and total_sections then
		close_to_win = early_win_data.score + score_per_section > early_win_data.other_party_score_potential
	end

	if not close_to_win then
		if objective_data.objective_type and objective_data.objective_type == ObjectiveTypes.objective_safehouse then
			close_to_win = true
		elseif objective_data.close_to_win_on_completion then
			close_to_win = true
		elseif objective_data.close_to_win_on_section then
			close_to_win = self._num_sections_completed >= objective_data.close_to_win_on_section
			close_to_win = close_to_win or early_win_data.score + score_per_section > early_win_data.other_party_score_potential
		end
	end

	if close_to_win then
		self._heroes_close_to_winning = true

		local game = Network.game_session()

		GameSession.set_game_object_field(game, self._go_id, "heroes_close_to_winning", true)
	end
end

VersusWinConditions._has_nested_parent_objectives = function (self, objective_data)
	if not objective_data.sub_objectives then
		return false
	end

	local num_nested_objectives = table.size(objective_data.sub_objectives)
	local _, nested_parent_objective = next(objective_data.sub_objectives)

	return nested_parent_objective.sub_objectives, nested_parent_objective.sub_objectives and num_nested_objectives or nil
end

VersusWinConditions.rpc_versus_set_score = function (self, sender, party_id, points, set_number)
	local sets_data = self._win_data[party_id]

	if not sets_data then
		return
	end

	local data = sets_data[set_number]

	data.claimed_points = points
	data.unclaimed_points = data.max_points - points

	Presence.set_presence("score", PresenceHelper.get_game_score())
end

VersusWinConditions.is_round_timer_started = function (self)
	return self._round_started
end

VersusWinConditions.is_round_timer_over = function (self)
	return self._round_timer <= 0
end

VersusWinConditions.is_round_almost_over = function (self)
	return self._round_timer <= self._round_almost_over_time_breakpoint
end

VersusWinConditions.round_timer = function (self)
	return self._round_timer
end

VersusWinConditions.is_final_round = function (self)
	return self._final_round
end

VersusWinConditions.num_rounds_played = function (self)
	return self._current_round
end

VersusWinConditions.add_time = function (self, value)
	self._round_timer = self._round_timer + value

	local game = Network.game_session()

	GameSession.set_game_object_field(game, self._go_id, "round_timer", self._round_timer)
end

VersusWinConditions.set_time = function (self, value)
	self._round_timer = value

	local game = Network.game_session()

	GameSession.set_game_object_field(game, self._go_id, "round_timer", self._round_timer)
end

VersusWinConditions.add_score = function (self, score_to_add, objective_extension)
	if self._is_server then
		self:_add_points_collected(self._hero_party_id, score_to_add)
		self:update_party_has_won_early(self._hero_party_id)

		if not DEDICATED_SERVER then
			Presence.set_presence("score", PresenceHelper.get_game_score())
		end

		self:play_score_sfx(objective_extension)
	end
end

VersusWinConditions.set_data = function (self, party_id)
	return self._win_data[party_id] or {}
end

VersusWinConditions.play_score_sfx = function (self, current_objective_extension)
	local event = "Play_hud_versus_score_points"
	local close_to_win_events = settings.versus_close_to_win_score_ticks
	local early_win_data = self:_get_early_win_data(self._hero_party_id)
	local score_to_win = early_win_data.other_party_score_potential - early_win_data.score + 1
	local num_score_ticks_to_win = 0
	local current_objective_sections_left = current_objective_extension:get_num_sections_left()
	local current_objective_score_per_section = current_objective_extension:get_score_per_section()
	local remaining_objectives = self._objective_system:get_remaining_objectives_list()
	local num_ramping_ticks = #close_to_win_events
	local num_sections_checked = 0

	if current_objective_sections_left > 0 and current_objective_score_per_section > 0 then
		for i = 1, current_objective_sections_left do
			num_score_ticks_to_win = num_score_ticks_to_win + 1
			score_to_win = score_to_win - current_objective_score_per_section
			num_sections_checked = num_sections_checked + 1

			if score_to_win <= 0 or num_sections_checked == num_ramping_ticks then
				break
			end
		end
	end

	if score_to_win > 0 then
		for i, objective in ipairs(remaining_objectives) do
			local _, objective_data = next(objective)
			local score_per_section = objective_data.score_per_section or objective_data.score_per_socket or objective_data.score_for_completion or 0
			local num_sections = objective_data.num_sockets or objective_data.num_sections or 1

			for section = 1, num_sections do
				score_to_win = score_to_win - score_per_section
				num_score_ticks_to_win = num_score_ticks_to_win + 1
				num_sections_checked = num_sections_checked + 1

				if score_to_win <= 0 or num_sections_checked == num_ramping_ticks then
					break
				end
			end

			if score_to_win <= 0 or num_sections_checked == num_ramping_ticks then
				break
			end
		end
	end

	if score_to_win <= 0 and close_to_win_events[num_score_ticks_to_win + 1] then
		event = close_to_win_events[num_score_ticks_to_win + 1]
	end

	local sound_event_id = NetworkLookup.sound_events[event]
	local network_transmit = Managers.state.network.network_transmit

	network_transmit:send_rpc_clients("rpc_play_2d_audio_event", sound_event_id)

	if not DEDICATED_SERVER then
		local world = Managers.world:world("level_world")
		local wwise_world = Managers.world:wwise_world(world)

		WwiseWorld.trigger_event(wwise_world, event)
	end
end

VersusWinConditions._add_points_collected = function (self, party_id, score)
	local data, set_index = self:current_set_data(party_id)

	if not data then
		return
	end

	data.claimed_points = data.claimed_points + score
	data.unclaimed_points = data.unclaimed_points - score

	Managers.state.network.network_transmit:send_rpc_clients("rpc_versus_set_score", party_id, data.claimed_points, set_index)
end

VersusWinConditions.save_points_collected = function (self, party_id, set_number, score)
	local sets_data = self._win_data[party_id]

	if not sets_data then
		return
	end

	local data = sets_data[set_number]

	data.claimed_points = score
	data.unclaimed_points = data.unclaimed_points - score
end

VersusWinConditions.update_party_has_won_early = function (self, party_id, ignore_last_round)
	if ignore_last_round and self._final_round then
		return
	end

	if not self._has_objectives then
		return
	end

	local early_win_data = self:_get_early_win_data(party_id)

	if early_win_data.score > early_win_data.other_party_score_potential then
		self.party_won_early = early_win_data

		return true, self.party_won_early
	end
end

VersusWinConditions._get_early_win_data = function (self, party_id, ignore_last_round)
	local set_number = self.mechanism:get_current_set()
	local other_party_id = party_id == 1 and 2 or 1
	local score = self:get_total_score(party_id)
	local other_score = self:get_total_score(other_party_id)
	local set_data = self._win_data[other_party_id]
	local unclaimed = 0

	for i = set_number, #set_data do
		unclaimed = unclaimed + set_data[i].unclaimed_points
	end

	local other_party_score_potential = other_score + unclaimed
	local early_win_data = {
		party_id = party_id,
		score = score,
		other_party_score = other_score,
		other_party_unclaimed_points = unclaimed,
		other_party_score_potential = other_party_score_potential
	}

	return early_win_data
end

VersusWinConditions.set_score = function (self, value)
	local set_data = self:current_set_data(self._hero_party_id)

	set_data.claimed_points = value

	if self._is_server then
		local is_total_score = false
		local network_transmit = Managers.state.network.network_transmit
		local set_number = self.mechanism:get_current_set()

		network_transmit:send_rpc_clients("rpc_versus_set_score", self._hero_party_id, value, set_number)
	end
end

VersusWinConditions.get_current_score = function (self, party_id)
	local set_data = self:current_set_data(party_id)

	return set_data and set_data.claimed_points or 0
end

VersusWinConditions.get_total_score = function (self, party_id)
	local points = 0
	local set_data = self._win_data[party_id]

	if not set_data then
		return 0
	end

	for i = 1, #set_data do
		points = points + set_data[i].claimed_points
	end

	return points
end

VersusWinConditions.get_total_scores = function (self)
	local win_data = self._win_data
	local scores = {}

	for party_id in pairs(win_data) do
		scores[party_id] = self:get_total_score(party_id)
	end

	return scores
end

VersusWinConditions.get_match_results = function (self)
	local winning_party_id, best_score = nil, 0
	local num_parties = Managers.party:get_num_game_participating_parties()

	for id = 1, num_parties do
		local total_score = self:get_total_score(id)

		if best_score < total_score then
			winning_party_id = id
			best_score = total_score
		elseif total_score == best_score then
			winning_party_id = nil
		end
	end

	local results

	results = winning_party_id == 1 and "party_one_won" or winning_party_id == 2 and "party_two_won" or "draw"

	return results
end

VersusWinConditions.get_side_close_to_winning = function (self)
	if self._heroes_close_to_winning then
		return "heroes"
	end

	if not self._round_timer then
		return nil
	end

	if self._round_timer <= self._round_almost_over_time_breakpoint then
		return self._final_round and "dark_pact" or "NONE"
	end

	return nil
end

VersusWinConditions.has_party_won_early = function (self)
	return self.party_won_early ~= nil
end

VersusWinConditions.update_testify = function (self, dt, t)
	Testify:poll_requests_through_handler(versus_win_conditions_testify, self)
end
