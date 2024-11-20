local push_radius = 2
local time_mod = 0.9
local weapon_template = {}
local planted_decrease_movement_settings = {
	charge = {
		{
			start_time = 0,
			external_multiplier = 0.2,
			buff_name = "planted_charging_decrease_movement"
		},
		{
			start_time = 0,
			external_value = 2,
			buff_name = "set_rotation_limit"
		},
		{
			start_time = 0,
			external_multiplier = 0.75,
			buff_name = "planted_decrease_rotation_speed"
		}
	},
	light_attack = {
		{
			start_time = 0,
			external_multiplier = 0.4,
			end_time = 0.6,
			buff_name = "planted_decrease_movement"
		},
		{
			start_time = 0.6,
			external_multiplier = 1.2,
			end_time = 0.65,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 1,
			external_multiplier = 0.4,
			end_time = 1.3,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 1.3,
			buff_name = "planted_return_to_normal_walk_movement"
		},
		{
			start_time = 0.6,
			external_value = 1,
			end_time = 1.3,
			buff_name = "set_rotation_limit"
		},
		{
			start_time = 0,
			external_multiplier = 0.75,
			end_time = 0.6,
			buff_name = "planted_decrease_rotation_speed"
		},
		{
			start_time = 0.6,
			external_multiplier = 0.5,
			end_time = 0.65,
			buff_name = "planted_decrease_rotation_speed"
		},
		{
			start_time = 1,
			external_multiplier = 0.75,
			end_time = 1.3,
			buff_name = "planted_decrease_rotation_speed"
		}
	},
	heavy_attack = {
		{
			start_time = 0,
			external_multiplier = 1.2,
			end_time = 0.3,
			buff_name = "planted_fast_decrease_movement"
		},
		{
			start_time = 0.3,
			external_multiplier = 0.4,
			end_time = 0.6,
			buff_name = "planted_decrease_movement"
		},
		{
			start_time = 0.6,
			buff_name = "planted_return_to_normal_walk_movement"
		},
		{
			start_time = 0,
			external_value = 0.1,
			end_time = 0.8,
			buff_name = "set_rotation_limit"
		},
		{
			start_time = 0,
			external_multiplier = 0.5,
			end_time = 0.8,
			buff_name = "planted_decrease_rotation_speed"
		},
		{
			start_time = 0.8,
			external_multiplier = 0.75,
			end_time = 1,
			buff_name = "planted_decrease_rotation_speed"
		}
	}
}
local knockback_tables = {
	frenzy = {
		player_catapult_speed_blocked = 12,
		player_knockback_speed_blocked = 12,
		player_knockback_speed = 10,
		player_catapult_speed_blocked_z = 6,
		player_catapult_speed_z = 6,
		catapult = false,
		player_catapult_speed = 12,
		catapult_players = false
	},
	scrambler = {
		player_catapult_speed_blocked = 12,
		player_knockback_speed_blocked = 12,
		player_knockback_speed = 10,
		player_catapult_speed_blocked_z = 6,
		player_catapult_speed_z = 6,
		catapult = true,
		player_catapult_speed = 12,
		catapult_players = true
	}
}

weapon_template.actions = {
	action_one = {
		default = {
			disallow_ghost_mode = true,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			uninterruptible = true,
			anim_event = "attack_ogre_slam_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			condition_func = function (action_user, input_extension, ammo_extension, current_action_extension)
				local ghost_mode_extenstion = ScriptUnit.has_extension(action_user, "ghost_mode_system")
				local is_in_ghost_mode = ghost_mode_extenstion:is_in_ghost_mode()

				return not is_in_ghost_mode
			end,
			total_time = math.huge,
			buff_data = planted_decrease_movement_settings.charge,
			allowed_chain_actions = {
				{
					sub_action = "attack_swing_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "attack_slam",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "attack_slam",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
		},
		default_2 = {
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			uninterruptible = true,
			anim_event = "attack_ogre_slam_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = planted_decrease_movement_settings.charge,
			allowed_chain_actions = {
				{
					sub_action = "attack_swing_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.4,
					input = "action_one_release"
				},
				{
					sub_action = "attack_slam",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_release"
				},
				{
					start_time = 0.6,
					blocker = true,
					end_time = 1.5,
					input = "action_one_hold"
				},
				{
					sub_action = "attack_slam",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				}
			}
		},
		attack_swing_right = {
			damage_window_start = 0.85,
			anim_end_event = "attack_finished",
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			disallow_ghost_mode = true,
			width_mod = 50,
			hit_effect = "melee_hit_axes_1h",
			weapon_action_hand = "right",
			no_damage_impact_sound_event = "blunt_hit_armour",
			damage_profile = "rat_ogre_sweep",
			use_precision_sweep = false,
			damage_window_end = 0.95,
			impact_sound_event = "axe_1h_hit",
			damage_profile_outer = "light_push",
			aim_assist_max_ramp_multiplier = 0.8,
			aim_assist_ramp_decay_delay = 0,
			dedicated_target_range = 2,
			aim_assist_ramp_multiplier = 0.4,
			anim_event = "attack_swing_right",
			damage_profile_inner = "medium_push",
			total_time = 2.17,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			sweep_rotation_offset = {
				roll = math.pi * 0.5
			},
			knockback_data = knockback_tables.frenzy,
			buff_data = planted_decrease_movement_settings.light_attack,
			allowed_chain_actions = {
				{
					sub_action = "default_2",
					start_time = 1.3,
					action = "action_one",
					end_time = 1.8,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one_hold"
				}
			}
		},
		attack_swing_left = {
			damage_window_start = 0.8,
			range_mod = 1.2,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 50,
			hit_effect = "melee_hit_axes_1h",
			weapon_action_hand = "left",
			no_damage_impact_sound_event = "blunt_hit_armour",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_window_end = 0.95,
			impact_sound_event = "axe_1h_hit",
			charge_value = "action_push",
			disallow_ghost_mode = true,
			damage_profile = "rat_ogre_sweep",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_left",
			total_time = 2.17,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			sweep_rotation_offset = {
				roll = math.pi * 0.5
			},
			knockback_data = knockback_tables.frenzy,
			buff_data = planted_decrease_movement_settings.light_attack,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 1.8,
					action = "action_one",
					input = "action_one"
				}
			}
		},
		attack_slam = {
			damage_window_start = 0.1,
			disallow_ghost_mode = true,
			range_mod = 0.85,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 100,
			hit_stop_anim = "attack_hit",
			hit_effect = "melee_hit_axes_1h",
			weapon_action_hand = "both",
			no_damage_impact_sound_event = "blunt_hit_armour",
			damage_window_end = 0.225,
			impact_sound_event = "axe_1h_hit",
			additional_critical_strike_chance = 0.1,
			use_precision_sweep = false,
			damage_profile_left = "rat_ogre_slam",
			damage_profile_right = "rat_ogre_slam",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_slam",
			height_mod = 5,
			total_time = 1.33,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			sweep_rotation_offset = {
				roll = math.pi * 0.5
			},
			knockback_data = knockback_tables.frenzy,
			buff_data = planted_decrease_movement_settings.heavy_attack,
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end
		}
	},
	action_two = {
		default = {
			disallow_ghost_mode = true,
			anim_end_event = "attack_jump_air",
			kind = "dummy",
			uninterruptible = true,
			anim_event = "attack_jump",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			condition_func = function (action_user, input_extension, ammo_extension, current_action_extension)
				local ghost_mode_extenstion = ScriptUnit.has_extension(action_user, "ghost_mode_system")
				local is_in_ghost_mode = ghost_mode_extenstion:is_in_ghost_mode()
				local career_extension = ScriptUnit.has_extension(action_user, "career_system")
				local can_use_ability = career_extension:can_use_activated_ability(1)

				if can_use_ability then
					-- Nothing
				else
					career_extension:stop_ability("cooldown", 1)
				end

				local meet_conditions = not is_in_ghost_mode and can_use_ability

				return meet_conditions
			end,
			enter_function = function (owner_unit, input_extension, remaining_time, weapon_extension)
				input_extension:clear_input_buffer()
				input_extension:reset_release_input()

				local career_extension = ScriptUnit.has_extension(owner_unit, "career_system")
				local can_use_ability = career_extension:can_use_activated_ability(1)

				if can_use_ability and career_extension:ability_was_triggered(1) then
					print("enter ability")
				end
			end,
			finish_function = function (owner_unit, reason, weapon_extension)
				if reason ~= "new_interupting_action" then
					local career_extension = ScriptUnit.has_extension(owner_unit, "career_system")
					local was_triggered = career_extension:ability_was_triggered(1)
				end
			end,
			total_time = math.huge,
			buff_data = planted_decrease_movement_settings.heavy_attack,
			allowed_chain_actions = {}
		}
	},
	action_three = {
		default = {
			weapon_action_hand = "left",
			kind = "career_dummy",
			total_time = 0,
			allowed_chain_actions = {},
			enter_function = function (attacker_unit, input_extension)
				input_extension:clear_input_buffer()

				return input_extension:reset_release_input()
			end
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.weapon_sway_settings = {
	camera_look_sensitivity = 1,
	sway_range = 1,
	recetner_dampening = 1,
	look_sensitivity = 0.5,
	recenter_max_vel = 5,
	recenter_acc = 5,
	lerp_speed = math.huge
}
weapon_template.left_hand_unit = "units/weapons/player/wpn_invisible_weapon"
weapon_template.right_hand_unit = "units/weapons/player/wpn_invisible_weapon"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.vs_rat_ogre_hands.right
weapon_template.left_hand_attachment_node_linking = AttachmentNodeLinking.vs_rat_ogre_hands.left
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_axes"
weapon_template.wield_anim = "to_1h_axe"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "AXE_1H"
weapon_template.max_fatigue_points = 6
weapon_template.buffs = {}
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = true,
		arc = 0
	},
	hold_attack = {
		penetrating = true,
		arc = 0
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	vertical_only = true,
	base_multiplier = 0,
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 4,
		[DamageTypes.CLEAVE] = 1,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 5
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 5,
		[DamageTypes.CLEAVE] = 0,
		[DamageTypes.SPEED] = 3,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 4
	}
}
weapon_template.tooltip_keywords = {}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_left"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "default"
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_axes"
}

return {
	vs_rat_ogre_hands = weapon_template
}
