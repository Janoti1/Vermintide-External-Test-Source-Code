BaseObjectiveExtension = class(BaseObjectiveExtension)
BaseObjectiveExtension.NAME = "BaseObjectiveExtension"

BaseObjectiveExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self._is_server = extension_init_context.is_server
	self._unit = unit
	self._world = extension_init_context.world
	self._objective_name = extension_init_data.objective_name or Unit.get_data(unit, "objective_id")
	self._objecive_system = Managers.state.entity:system("objective_system")
	self._objective_name = self._objective_name or Unit.get_data(unit, "versus_objective_id") or Unit.get_data(unit, "weave_objective_id")

	assert(self._objective_name, "[BaseObjectiveExtension] Missing objective name")

	self._audio_system = Managers.state.entity:system("audio_system")
	self._wwise_world = Managers.world:wwise_world(self._world)
	self._scale = extension_init_data.scale or Vector3(1, 1, 1)
	self._num_sections = 1
	self._current_section = 0
	self._percentage = 0
	self._cached_value = 0

	Unit.set_local_scale(unit, 0, self._scale)
end

BaseObjectiveExtension.set_objective_data = function (self, objective_data)
	self._objective_type = objective_data.objective_type
	self._objective_tag = objective_data.objective_tag
	self._on_complete_func = objective_data.on_complete_func
	self._description = objective_data.description or "unlocalized_description"
	self._display_name = objective_data.display_name
	self._objective_icon = objective_data.objective_type or "icons_placeholder"
	self._score_for_completion = objective_data.score_for_completion or 0
	self._time_for_completion = objective_data.time_for_completion or 0
	self._on_last_leaf_complete_sound_event = objective_data.on_last_leaf_complete_sound_event

	self:_set_objective_data(objective_data)
end

BaseObjectiveExtension.activate = function (self)
	self:_activate()
	self:_store_position()
	self:_store_local_player()

	self._activated = true
end

BaseObjectiveExtension.objective_tag = function (self)
	return self._objective_tag
end

BaseObjectiveExtension._store_local_player = function (self)
	if not DEDICATED_SERVER then
		local local_player = Managers.player:local_player()
		local peer_id = local_player:network_id()
		local local_player_id = local_player:local_player_id()
		local party = Managers.party:get_party_from_player_id(peer_id, local_player_id)
		local side = Managers.state.side.side_by_party[party]

		self._local_side = side
	end
end

BaseObjectiveExtension.sync_objective = function (self, game_object_id, game_session)
	self._game_object_id = game_object_id
end

BaseObjectiveExtension.desync_objective = function (self)
	self._game_object_id = nil
end

BaseObjectiveExtension.complete = function (self, last_leaf_objective)
	if self._is_server and self._on_complete_func then
		self._on_complete_func(self._unit)
	end

	if not DEDICATED_SERVER then
		local last_leaf_complete_sound_event = self._on_last_leaf_complete_sound_event

		if last_leaf_complete_sound_event and last_leaf_objective then
			local complete_event = last_leaf_complete_sound_event[self._local_side:name()]

			self:play_local_sound(complete_event)
		end
	end

	self:deactivate()
end

BaseObjectiveExtension.deactivate = function (self)
	self:_deactivate()

	self._percentage = 1
	self._game_object_id = nil
	self._activated = false
end

BaseObjectiveExtension.play_local_sound = function (self, event)
	WwiseWorld.trigger_event(self._wwise_world, event)
end

BaseObjectiveExtension.play_local_unit_sound = function (self, event)
	WwiseUtils.trigger_unit_event(self._world, event, self._unit, 0)
end

BaseObjectiveExtension.play_unit_sound = function (self, event)
	self._audio_system:play_audio_unit_event(event, self._unit)
end

BaseObjectiveExtension.unit = function (self)
	return self._unit
end

BaseObjectiveExtension.display_name = function (self)
	return self._display_name
end

BaseObjectiveExtension.is_stacking_objective = function (self)
	return false
end

BaseObjectiveExtension.update = function (self, dt, t)
	if script_data.testify and self.update_testify then
		self:update_testify(dt, t)
	end

	if not self._activated then
		return
	end

	if self._is_server then
		self:_server_update(dt, t)
	else
		self:_client_update(dt, t)
	end
end

BaseObjectiveExtension.on_section_completed = function (self)
	self._current_section = self._current_section + 1

	Managers.state.event:trigger("obj_objective_section_completed", self)
end

BaseObjectiveExtension.server_set_value = function (self, value)
	local game_session = Network.game_session()

	if game_session then
		GameSession.set_game_object_field(game_session, self._game_object_id, "value", math.clamp01(value))
	end
end

BaseObjectiveExtension.client_get_value = function (self)
	local game_session = Network.game_session()

	if not game_session or not self._game_object_id then
		return self._cached_value
	end

	self._cached_value = GameSession.game_object_field(game_session, self._game_object_id, "value")

	return self._cached_value
end

BaseObjectiveExtension._store_position = function (self)
	local position = Unit.local_position(self._unit, 0)

	self._position = Vector3Box(position)
end

BaseObjectiveExtension._activate = function (self)
	error("This function needs to be overwritten")
end

BaseObjectiveExtension._deactivate = function (self)
	error("This function needs to be overwritten")
end

BaseObjectiveExtension._server_update = function (self, dt, t)
	error("This function needs to be overwritten")
end

BaseObjectiveExtension._client_update = function (self, dt, t)
	error("This function needs to be overwritten")
end

BaseObjectiveExtension.get_percentage_done = function (self)
	error("This function needs to be overwritten")
end

BaseObjectiveExtension.objective_name = function (self)
	return self._objective_name
end

BaseObjectiveExtension.get_current_section = function (self)
	return self._current_section
end

BaseObjectiveExtension.get_total_sections = function (self)
	return self._num_sections
end

BaseObjectiveExtension.get_num_sections_left = function (self)
	return self._current_section - self._num_sections
end

BaseObjectiveExtension.get_time_per_section = function (self)
	return self._time_per_section
end

BaseObjectiveExtension.get_score_per_section = function (self)
	return self._score_per_section
end

BaseObjectiveExtension.get_time_for_completion = function (self)
	return self._time_for_completion
end

BaseObjectiveExtension.get_score_for_completion = function (self)
	return self._score_for_completion
end

BaseObjectiveExtension.get_position = function (self)
	if self._position then
		return self._position:unbox()
	else
		return Unit.world_position(self._unit, 0)
	end
end

BaseObjectiveExtension.is_optional = function (self)
	return self._optional
end

BaseObjectiveExtension.description = function (self)
	return self._description
end

BaseObjectiveExtension.objective_icon = function (self)
	return self._objective_icon
end

BaseObjectiveExtension.objective_type = function (self)
	return self._objective_type
end

BaseObjectiveExtension.is_done = function (self)
	return self:get_percentage_done() >= 1
end

BaseObjectiveExtension.is_active = function (self)
	return self._activated
end