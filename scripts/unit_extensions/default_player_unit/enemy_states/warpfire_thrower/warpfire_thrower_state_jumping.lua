WarpfireThrowerStateJumping = class(WarpfireThrowerStateJumping, EnemyCharacterStateJumping)

WarpfireThrowerStateJumping.init = function (self, character_state_init_context)
	WarpfireThrowerStateJumping.super.init(self, character_state_init_context)

	self._fire_ability_id = self._career_extension:ability_id("fire")
end

WarpfireThrowerStateJumping.update = function (self, unit, input, dt, context, t)
	local handled = self:common_state_changes()

	if handled then
		return
	end

	local csm = self._csm
	local ghost_mode_extension = self._ghost_mode_extension
	local in_ghost_mode = ghost_mode_extension:is_in_ghost_mode()

	handled = self:common_movement(in_ghost_mode, dt, unit)

	if not handled then
		CharacterStateHelper.update_weapon_actions(t, unit, self._input_extension, self._inventory_extension, self._health_extension)
	end
end