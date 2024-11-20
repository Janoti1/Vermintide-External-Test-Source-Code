RatOgreStateWalking = class(RatOgreStateWalking, EnemyCharacterStateWalking)

RatOgreStateWalking.init = function (self, character_state_init_context)
	RatOgreStateWalking.super.init(self, character_state_init_context)

	self._ogre_jump_ability_id = self._career_extension:ability_id("ogre_jump")
end

RatOgreStateWalking.update = function (self, unit, input, dt, context, t)
	local handled = self:common_state_changes()

	if handled then
		return
	end

	local csm = self._csm
	local status_extension = self._status_extension
	local career_extension = self._career_extension
	local ghost_mode_extension = self._ghost_mode_extension
	local in_ghost_mode = ghost_mode_extension:is_in_ghost_mode()

	if not in_ghost_mode and career_extension:ability_was_triggered(self._ogre_jump_ability_id) then
		self._locomotion_extension:set_forced_velocity(Vector3.zero())
		self._locomotion_extension:set_wanted_velocity(Vector3.zero())

		return
	end

	self:_update_taunt_dialogue(t)

	handled = self:common_movement(in_ghost_mode, dt)

	if not handled then
		CharacterStateHelper.update_weapon_actions(t, unit, self._input_extension, self._inventory_extension, self._health_extension)
	end
end
