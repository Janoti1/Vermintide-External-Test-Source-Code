CareerAbilityRatOgreJump = class(CareerAbilityRatOgreJump)

local MIN_DISTANCE_FOR_LEAP = 2
local JUMP_ANGLE = math.degrees_to_radians(45)
local SECTIONS = 8
local ACCEPTABLE_ACCURACY = 0.1
local segment_list = {}

local function get_leap_data(physics_world, own_position, target_position)
	local gravity = -PlayerUnitMovementSettings.gravity_acceleration
	local target_velocity = Vector3.zero()
	local jump_speed, hit_pos = WeaponHelper.speed_to_hit_moving_target(own_position, target_position, JUMP_ANGLE, target_velocity, gravity, ACCEPTABLE_ACCURACY)
	local in_los, velocity, _ = WeaponHelper.test_angled_trajectory(physics_world, own_position, target_position, -gravity, jump_speed, JUMP_ANGLE, segment_list, SECTIONS, nil, true)

	fassert(in_los, "no landing location for leap")

	local direction = Vector3.normalize(velocity)

	return direction, jump_speed, hit_pos
end

CareerAbilityRatOgreJump.was_triggered = function (self)
	local input_extension = self._input_extension

	if not input_extension then
		return false
	end

	if not self._is_priming then
		if not self:_ability_available() then
			return false
		end

		if input_extension:get(self._ability_input) then
			self:_start()

			return true
		end
	end

	return false
end

CareerAbilityRatOgreJump._ability_available = function (self)
	local career_extension = self._career_extension
	local status_extension = self._status_extension
	local locomotion_extension = self._locomotion_extension

	return career_extension:can_use_activated_ability() and not status_extension:is_disabled() and locomotion_extension:is_on_ground()
end

CareerAbilityRatOgreJump.init = function (self, extension_init_context, unit, extension_init_data)
	self._owner_unit = unit
	self._world = extension_init_context.world
	self._wwise_world = Managers.world:wwise_world(self._world)

	local player = extension_init_data.player

	self._player = player
	self._is_server = player.is_server
	self._local_player = player.local_player
	self._bot_player = player.bot_player
	self._network_manager = Managers.state.network
	self._input_manager = Managers.input
	self._effect_name = "fx/chr_slayer_jump"
	self._indicator_fx_unit_name = "fx/units/aoe_globadier"
	self._indicator_unit = nil
	self._effect_id = nil
	self._is_priming = false
	self._last_valid_landing_position = nil
end

CareerAbilityRatOgreJump.extensions_ready = function (self, world, unit)
	self._first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")
	self._status_extension = ScriptUnit.extension(unit, "status_system")
	self._career_extension = ScriptUnit.extension(unit, "career_system")
	self._ability_id = self._career_extension:ability_id("ogre_jump")
	self._ability_data = self._career_extension:get_activated_ability_data(self._ability_id)
	self._ability_input = self._ability_data.input_action
	self._jump_data = self._ability_data.jump_ability_data
	self._prime_time = self._ability_data.prime_time
	self._buff_extension = ScriptUnit.extension(unit, "buff_system")
	self._locomotion_extension = ScriptUnit.extension(unit, "locomotion_system")
	self._input_extension = ScriptUnit.has_extension(unit, "input_system")
	self._breed = Unit.get_data(unit, "breed")

	if self._first_person_extension then
		self._first_person_unit = self._first_person_extension:get_first_person_unit()
	end
end

CareerAbilityRatOgreJump.destroy = function (self)
	return
end

CareerAbilityRatOgreJump._start = function (self)
	print("ability start")
	self:_start_calculate_leap_position()

	self._priming_charged = Managers.time:time("game") + self._prime_time
end

CareerAbilityRatOgreJump._set_priming_progress = function (self, time_fraction)
	local ability_data = self._career_extension:get_activated_ability_data(self._ability_id)

	ability_data.priming_progress = time_fraction
end

CareerAbilityRatOgreJump._update_priming = function (self, unit, input, dt, context, t)
	if t > self._priming_charged then
		self._done_priming = true
	else
		local time_past = math.min(self._prime_time - (self._priming_charged - t), self._prime_time)
		local time_fraction = time_past / self._prime_time

		self:_set_priming_progress(time_fraction)
	end
end

CareerAbilityRatOgreJump.update = function (self, unit, input, dt, context, t)
	local input_extension = self._input_extension

	if not input_extension then
		return
	end

	if not self._is_priming then
		-- Nothing
	elseif self._is_priming then
		local cancel_input = input_extension:get("action_one") or input_extension:get("jump") or input_extension:get("jump_only") or input_extension:get("weapon_reload") or input_extension:get("action_two_release") and not self._done_priming or not input_extension:get("action_two_hold") and not self._done_priming

		if cancel_input then
			self:_stop_priming()
			self._career_extension:start_activated_ability_cooldown(self._ability_id, 0.9)
			Managers.state.network:anim_event(unit, "interrupt")
			CharacterStateHelper.play_animation_event_first_person(self._first_person_extension, "interrupt")

			return
		end

		self:_update_priming(unit, input, dt, context, t)

		local result, new_landing_position, leap_distance = self:_calculate_leap_position()

		if result and new_landing_position then
			if self._last_valid_landing_position then
				self._last_valid_landing_position:store(new_landing_position)
			else
				self._last_valid_landing_position = Vector3Box(new_landing_position)
			end
		end

		if not self._last_valid_landing_position then
			self:_stop_priming()

			return
		end

		local released_input = input_extension:get("action_two_release")

		if released_input and self._done_priming then
			if result and self._last_valid_landing_position then
				self:_set_priming_progress(0)

				if leap_distance <= MIN_DISTANCE_FOR_LEAP then
					self:_do_stomp(t)
				else
					self:_do_leap()
				end
			else
				self:_stop_priming()
			end
		end
	end
end

CareerAbilityRatOgreJump.stop = function (self, reason)
	if reason ~= "pushed" and reason ~= "stunned" and self._is_priming then
		self:_stop_priming()
	end
end

CareerAbilityRatOgreJump._start_calculate_leap_position = function (self)
	if self._local_player then
		local world = self._world
		local effect_name = self._effect_name

		self._effect_id = World.create_particles(world, effect_name, Vector3.zero())
	end

	self._last_valid_landing_position = nil
	self._done_priming = false
	self._is_priming = true
	self._ability_data.is_priming = true
end

CareerAbilityRatOgreJump._destroy_indicator_unit = function (self)
	if Unit.alive(self._indicator_unit) then
		World.destroy_unit(self._world, self._indicator_unit)

		self._indicator_unit = nil
	end
end

CareerAbilityRatOgreJump._handel_hit_indicator = function (self, new_landing_position)
	local unit_name = self._indicator_fx_unit_name

	if new_landing_position then
		if self._indicator_unit then
			Unit.set_local_position(self._indicator_unit, 0, new_landing_position)
		else
			self._indicator_unit = World.spawn_unit(self._world, unit_name, new_landing_position)

			local radius = self._jump_data.hit_indicator_raidus

			Unit.set_local_scale(self._indicator_unit, 0, Vector3(radius, radius, radius))
		end
	else
		self:_destroy_indicator_unit()
	end
end

CareerAbilityRatOgreJump._calculate_leap_position = function (self)
	local effect_id = self._effect_id
	local world = self._world
	local physics_world = World.get_data(world, "physics_world")
	local first_person_extension = self._first_person_extension
	local player_position = first_person_extension:current_position()
	local player_rotation = first_person_extension:current_rotation()
	local collision_filter = "filter_slayer_leap"
	local min_pitch = math.degrees_to_radians(self._jump_data.min_pitch)
	local max_pitch = math.degrees_to_radians(self._jump_data.max_pitch)
	local yaw = Quaternion.yaw(player_rotation)
	local pitch = math.clamp(Quaternion.pitch(player_rotation), -min_pitch, max_pitch)
	local yaw_rotation = Quaternion(Vector3.up(), yaw)
	local pitch_rotation = Quaternion(Vector3.right(), pitch)
	local raycast_rotation = Quaternion.multiply(yaw_rotation, pitch_rotation)
	local raycast_direction = Quaternion.forward(raycast_rotation)
	local speed = self._jump_data.movement_settings.jump_speed
	local velocity = raycast_direction * speed
	local gravity = Vector3(0, 0, -11)
	local result, new_landing_position = WeaponHelper:ground_target(physics_world, self._owner_unit, POSITION_LOOKUP[self._owner_unit], velocity, gravity, collision_filter)
	local leap_distance

	if result then
		leap_distance = Vector3.length(new_landing_position - player_position)

		self:_handel_hit_indicator(new_landing_position)

		if effect_id and new_landing_position then
			World.move_particles(world, effect_id, new_landing_position)
		end
	else
		new_landing_position = nil
	end

	return result, new_landing_position, leap_distance
end

CareerAbilityRatOgreJump._stop_priming = function (self)
	if self._effect_id then
		World.destroy_particles(self._world, self._effect_id)

		self._effect_id = nil
	end

	self:_destroy_indicator_unit()
	self:_set_priming_progress(0)

	self._is_priming = false
	self._ability_data.is_priming = false
	self._last_valid_landing_position = nil
end

CareerAbilityRatOgreJump._do_common_stuff = function (self)
	local owner_unit = self._owner_unit
	local is_server = self._is_server
	local local_player = self._local_player
	local bot_player = self._bot_player
	local network_manager = self._network_manager
	local network_transmit = network_manager.network_transmit
	local career_extension = self._career_extension
	local buffs = {
		"bardin_slayer_activated_ability"
	}
	local unit_object_id = network_manager:unit_game_object_id(owner_unit)

	if is_server then
		local buff_extension = self._buff_extension

		for i = 1, #buffs do
			local buff_name = buffs[i]
			local buff_template_name_id = NetworkLookup.buff_templates[buff_name]

			buff_extension:add_buff(buff_name, {
				attacker_unit = owner_unit
			})
			network_transmit:send_rpc_clients("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, false)
		end
	else
		for i = 1, #buffs do
			local buff_name = buffs[i]
			local buff_template_name_id = NetworkLookup.buff_templates[buff_name]

			network_transmit:send_rpc_server("rpc_add_buff", unit_object_id, buff_template_name_id, unit_object_id, 0, true)
		end
	end

	if is_server and bot_player or local_player then
		local first_person_extension = self._first_person_extension

		first_person_extension:play_hud_sound_event("Play_career_ability_bardin_slayer_enter")
		first_person_extension:play_remote_unit_sound_event("Play_career_ability_bardin_slayer_enter", owner_unit, 0)
		first_person_extension:play_hud_sound_event("Play_career_ability_bardin_slayer_loop")
	end

	career_extension:start_activated_ability_cooldown()
end

CareerAbilityRatOgreJump._do_stomp = function (self, t)
	self:_stop_priming()

	if not self._locomotion_extension:is_on_ground() then
		return
	end

	self:_do_common_stuff()

	local owner_unit = self._owner_unit
	local local_player = self._local_player
	local career_extension = self._career_extension
	local position = POSITION_LOOKUP[owner_unit]
	local rotation = Quaternion.identity()
	local scale = 1

	if local_player then
		local first_person_extension = self._first_person_extension

		first_person_extension:play_unit_sound_event("Play_career_ability_bardin_slayer_impact", owner_unit, 0, true)
		first_person_extension:play_camera_effect_sequence("leap_stomp", t)
	end
end

CareerAbilityRatOgreJump._do_leap = function (self)
	local landing_position = self._last_valid_landing_position:unbox()

	self:_stop_priming()

	if not self._locomotion_extension:is_on_ground() then
		return
	end

	self:_do_common_stuff()

	local world = self._world
	local owner_unit = self._owner_unit
	local local_player = self._local_player
	local network_manager = self._network_manager
	local network_transmit = network_manager.network_transmit
	local status_extension = self._status_extension
	local career_extension = self._career_extension
	local locomotion_extension = self._locomotion_extension

	locomotion_extension:set_external_velocity_enabled(false)
	status_extension:reset_move_speed_multiplier()
	status_extension:set_noclip(true, "skill_slayer")

	local physics_world = World.get_data(world, "physics_world")
	local direction, speed, hit_pos = get_leap_data(physics_world, POSITION_LOOKUP[owner_unit], landing_position)
	local distance = Vector3.distance(POSITION_LOOKUP[owner_unit], landing_position)
	local ability_lerp_data = self._jump_data.lerp_data
	local movement_settings = self._jump_data.movement_settings
	local zero_dist = ability_lerp_data and ability_lerp_data.zero_distance
	local start_accel_dist = ability_lerp_data and ability_lerp_data.start_accel_distance
	local end_accel_dist = ability_lerp_data and ability_lerp_data.end_accel_distance
	local glide_dist = ability_lerp_data and ability_lerp_data.glide_distance
	local slow_dist = ability_lerp_data and ability_lerp_data.slow_distance
	local full_dist = ability_lerp_data and ability_lerp_data.full_distance
	local jump_speed = movement_settings and movement_settings.jump_speed
	local vertical_height = movement_settings and movement_settings.vertical_height
	local vertical_speed_modifier = math.clamp(distance * vertical_height, 0, 50)

	speed = jump_speed
	status_extension.do_leap = {
		move_function = "leap",
		camera_effect_sequence_start = "jump",
		camera_effect_sequence_land = "landed_leap",
		anim_finish_event_3p = "attack_jump_land",
		anim_start_event_3p = "attack_jump_air",
		anim_finish_event_1p = "attack_jump_land",
		anim_start_event_1p = "attack_jump_air",
		direction = Vector3Box(direction),
		speed = speed,
		initial_vertical_speed = (jump_speed or PlayerUnitMovementSettings.leap.jump_speed) * vertical_speed_modifier,
		projected_hit_pos = Vector3Box(hit_pos),
		lerp_data = {
			zero_distance = zero_dist or 0,
			start_accel_distance = start_accel_dist or 0.1,
			end_accel_distance = end_accel_dist or 0.2,
			glide_distance = glide_dist or 0.5,
			slow_distance = slow_dist or 0.7,
			full_distance = full_dist or 1
		},
		movement_settings = movement_settings,
		update_leap_anim_variable = function (parent, unit)
			local anim_variable = "jump_rotation"
			local anim_value = math.clamp(parent._percentage_done * 2, 0, 2)

			parent._first_person_extension:animation_set_variable(anim_variable, anim_value)

			local variable_index = Unit.animation_find_variable(unit, anim_variable)

			Unit.animation_set_variable(unit, variable_index, anim_value)
		end,
		sfx_event_jump = local_player and "Play_career_ability_bardin_slayer_jump",
		sfx_event_land = local_player and "Play_career_ability_bardin_slayer_impact",
		leap_events = {
			start = function (parent)
				local unit_3p = parent.unit
				local buff_extension = ScriptUnit.has_extension(unit_3p, "buff_system")

				self._uninterruptible_buff_id = buff_extension:add_buff("bardin_slayer_passive_uninterruptible_leap")
			end,
			finished = function (parent, unit, aborted, final_position)
				local unit_3p = parent.unit

				if not aborted then
					if parent._leap_data.anim_finish_event_1p then
						CharacterStateHelper.play_animation_event_first_person(parent._first_person_extension, parent._leap_data.anim_finish_event_1p)
					end

					if parent._leap_data.anim_finish_event_3p then
						CharacterStateHelper.play_animation_event(unit, parent._leap_data.anim_finish_event_3p)
					end

					local rotation = Quaternion.identity()
					local explosion_template = "vs_rat_ogre_leap_landing"
					local scale = 1
					local career_power_level = 50
					local area_damage_system = Managers.state.entity:system("area_damage_system")

					area_damage_system:create_explosion(unit, final_position, rotation, explosion_template, scale, "career_ability", career_power_level, false)
				end

				local buff_extension = ScriptUnit.has_extension(unit_3p, "buff_system")

				if self._uninterruptible_buff_id then
					buff_extension:remove_buff(self._uninterruptible_buff_id)

					self._uninterruptible_buff_id = nil
				end
			end
		}
	}
end

CareerAbilityRatOgreJump._play_vo = function (self)
	local owner_unit = self._owner_unit
	local dialogue_input = ScriptUnit.extension_input(owner_unit, "dialogue_system")
	local event_data = FrameTable.alloc_table()

	dialogue_input:trigger_networked_dialogue_event("activate_ability", event_data)
end
