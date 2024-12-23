local stagger_types = require("scripts/utils/stagger_types")
local breed_data = {
	detection_radius = 12,
	height = 1.75,
	walk_speed = 2.75,
	has_running_attack = true,
	patrol_active_target_selection = "pick_closest_target_with_spillover",
	passive_in_patrol_start_anim = "move_fwd",
	exchange_order = 3,
	target_selection = "pick_closest_target_with_spillover",
	animation_sync_rpc = "rpc_sync_anim_state_8",
	aoe_radius = 0.4,
	is_always_spawnable = true,
	aoe_height = 1.7,
	run_speed = 4.8,
	smart_targeting_outer_width = 1,
	player_dodged_radius = 0.3,
	death_reaction = "ai_default",
	scale_death_push = 0.8,
	slot_template = "beastmen_horde",
	attack_player_sound_event = "Play_enemy_ungor_attack_vce",
	attack_general_sound_event = "Play_enemy_ungor_attack_husk_vce",
	default_inventory_template = "beastmen_ungor_spear",
	stagger_resistance = 2.25,
	patrol_detection_radius = 10,
	push_sound_event = "Play_generic_pushed_impact_small",
	flingable = true,
	wwise_voice_switch_group = "beastmen_ungor_vce",
	panic_close_detection_radius_sq = 9,
	radius = 1,
	use_backstab_vo = true,
	dialogue_source_name = "beastmen_ungor",
	hit_mass_count = 4,
	patrol_active_perception = "perception_regular",
	perception_previous_attacker_stickyness_value = -4.5,
	race = "beastmen",
	headshot_coop_stamina_fatigue_type = "headshot_special",
	ai_strength = 1,
	poison_resistance = 70,
	armor_category = 1,
	threat_value = 1.5,
	backstab_player_sound_event = "Play_enemy_ungor_attack_player_back_vce",
	death_sound_event = "Play_enemy_ungor_die_vce",
	bone_lod_level = 1,
	smart_object_template = "ungor",
	smart_targeting_width = 0.2,
	behavior = "ungor",
	has_inventory = true,
	no_stagger_duration = false,
	follow_reach = 1,
	ai_toughness = 1,
	stagger_threshold_heavy = 3,
	stagger_multiplier = 0.75,
	stagger_threshold_light = 0,
	hit_reaction = "ai_default",
	passive_in_patrol = true,
	patrol_passive_target_selection = "patrol_passive_target_selection",
	player_dodged_cone = 0.98,
	hit_effect_template = "HitEffectsBeastmenUngor",
	smart_targeting_height_multiplier = 2.5,
	uses_attack_sfx_callback = true,
	horde_behavior = "ungor",
	unit_template = "ai_unit_clan_rat",
	leave_walk_distance = 4.5,
	perception = "perception_regular",
	player_locomotion_constrain_radius = 0.7,
	weapon_reach = 2.25,
	horde_target_selection = "horde_pick_closest_target_with_spillover",
	opt_default_inventory_template = "opt_beastmen_ungor_spear",
	patrol_passive_perception = "perception_regular",
	vortexable = true,
	base_unit = "units/beings/enemies/beastmen_ungor/chr_beastmen_ungor",
	enter_walk_distance = 2.5,
	perception_exceptions = {
		poison_well = true,
		wizard_destructible = true
	},
	size_variation_range = {
		0.95,
		1.075
	},
	infighting = InfightingSettings.small,
	max_health = BreedTweaks.max_health.ungor,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.ungor,
	stagger_duration = BreedTweaks.stagger_duration.ungor,
	hit_mass_counts = BreedTweaks.hit_mass_counts.ungor,
	bloodlust_health = BreedTweaks.bloodlust_health.beastmen_horde,
	wwise_voices = {
		"ungor_profile_a",
		"ungor_profile_b"
	},
	status_effect_settings = {
		category = "small"
	},
	debug_color = {
		255,
		200,
		0,
		170
	},
	stagger_modifier_function = function (stagger_type, duration, length, hit_zone_name, blackboard, breed)
		if blackboard.stagger_type == stagger_types.heavy then
			if stagger_type == stagger_types.heavy and blackboard.heavy_stagger_immune_time then
				stagger_type = stagger_types.none
				duration = 0
				length = 0
			elseif stagger_type ~= stagger_types.heavy and blackboard.stagger_immune_time then
				stagger_type = stagger_types.none
				duration = 0
				length = 0
			end
		end

		return stagger_type, duration, length
	end,
	animation_merge_options = {
		idle_animation_merge_options = {},
		walk_animation_merge_options = {},
		move_animation_merge_options = {}
	},
	hitzone_multiplier_types = {
		head = "headshot"
	},
	hit_zones = {
		head = {
			prio = 1,
			actors = {
				"c_head"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		neck = {
			prio = 1,
			actors = {
				"c_neck"
			},
			push_actors = {
				"j_head",
				"j_neck",
				"j_spine1"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_spine2",
				"c_spine",
				"c_hips"
			},
			push_actors = {
				"j_neck",
				"j_spine1",
				"j_hips"
			}
		},
		left_arm = {
			prio = 3,
			actors = {
				"c_leftshoulder",
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand"
			},
			push_actors = {
				"j_spine1",
				"j_leftshoulder",
				"j_leftarm"
			}
		},
		right_arm = {
			prio = 3,
			actors = {
				"c_rightshoulder",
				"c_rightarm",
				"c_rightforearm",
				"c_righthand"
			},
			push_actors = {
				"j_spine1",
				"j_rightshoulder",
				"j_rightarm"
			}
		},
		left_leg = {
			prio = 3,
			actors = {
				"c_leftupleg",
				"c_leftleg",
				"c_leftfoot"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		right_leg = {
			prio = 3,
			actors = {
				"c_rightupleg",
				"c_rightleg",
				"c_rightfoot"
			},
			push_actors = {
				"j_leftfoot",
				"j_rightfoot",
				"j_hips"
			}
		},
		full = {
			prio = 4,
			actors = {}
		},
		afro = {
			prio = 5,
			actors = {
				"c_afro"
			}
		}
	},
	hitbox_ragdoll_translation = {
		c_leftupleg = "j_leftupleg",
		c_rightarm = "j_rightarm",
		c_leftshoulder = "j_leftshoulder",
		c_rightshoulder = "j_rightshoulder",
		c_rightfoot = "j_rightfoot",
		c_rightleg = "j_rightleg",
		c_lefthand = "j_lefthand",
		c_righthand = "j_righthand",
		c_leftleg = "j_leftleg",
		c_spine2 = "j_spine1",
		c_rightupleg = "j_rightupleg",
		c_spine = "j_spine",
		c_head = "j_head",
		c_leftforearm = "j_leftforearm",
		c_leftfoot = "j_leftfoot",
		c_neck = "j_neck",
		c_rightforearm = "j_rightforearm",
		c_leftarm = "j_leftarm",
		c_hips = "j_hips"
	},
	ragdoll_actor_thickness = {
		j_rightfoot = 0.2,
		j_spine1 = 0.3,
		j_leftarm = 0.2,
		j_leftforearm = 0.2,
		j_leftleg = 0.2,
		j_leftshoulder = 0.3,
		j_rightarm = 0.2,
		j_leftupleg = 0.2,
		j_rightshoulder = 0.3,
		j_righthand = 0.2,
		j_righttoebase = 0.2,
		j_hips = 0.3,
		j_rightleg = 0.2,
		j_leftfoot = 0.2,
		j_rightupleg = 0.2,
		j_lefttoebase = 0.2,
		j_head = 0.3,
		j_neck = 0.3,
		j_spine = 0.3,
		j_lefthand = 0.2,
		j_rightforearm = 0.2
	}
}

Breeds.beastmen_ungor = table.create_copy(Breeds.beastmen_ungor, breed_data)
Breeds.beastmen_ungor_dummy = table.create_copy(Breeds.beastmen_ungor_dummy, breed_data)
Breeds.beastmen_ungor_dummy.behavior = "beastmen_dummy"
Breeds.beastmen_ungor_dummy.horde_behavior = "beastmen_dummy"
Breeds.beastmen_ungor_dummy.debug_spawn_category = "Misc"
Breeds.beastmen_ungor_dummy.perception = "perception_no_seeing"
Breeds.beastmen_ungor_dummy.wield_inventory_on_spawn = true

local AttackIntensityPerDifficulty = {
	normal = {
		easy = {
			normal = 3
		},
		normal = {
			normal = 3
		},
		hard = {
			normal = 3
		},
		harder = {
			normal = 3
		},
		hardest = {
			normal = 3
		},
		cataclysm = {
			normal = 3
		},
		cataclysm_2 = {
			normal = 3
		},
		cataclysm_3 = {
			normal = 3
		},
		versus_base = {
			normal = 3
		}
	},
	running = {
		easy = {
			running = 2.5
		},
		normal = {
			running = 2.5
		},
		hard = {
			running = 2.5
		},
		harder = {
			running = 2.5
		},
		hardest = {
			running = 2.5
		},
		cataclysm = {
			running = 2.5
		},
		cataclysm_2 = {
			running = 2.5
		},
		cataclysm_3 = {
			running = 2.5
		},
		versus_base = {
			running = 2.5
		}
	}
}
local action_data = {
	alerted = {
		no_hesitation = true,
		cooldown = -1,
		action_weight = 1,
		start_anims_name = {
			bwd = "alerted_bwd",
			fwd = "alerted_fwd",
			left = "alerted_left",
			right = "alerted_right"
		},
		start_anims_data = {
			alerted_fwd = {},
			alerted_bwd = {
				dir = -1,
				rad = math.pi
			},
			alerted_left = {
				dir = 1,
				rad = math.pi / 2
			},
			alerted_right = {
				dir = -1,
				rad = math.pi / 2
			}
		}
	},
	follow = {
		cooldown = -1,
		action_weight = 1,
		start_anims_name = {
			bwd = "move_start_bwd",
			fwd = "move_start_fwd",
			left = "move_start_left",
			right = "move_start_right"
		},
		start_anims_data = {
			move_start_fwd = {},
			move_start_bwd = {
				dir = -1,
				rad = math.pi
			},
			move_start_left = {
				dir = 1,
				rad = math.pi / 2
			},
			move_start_right = {
				dir = -1,
				rad = math.pi / 2
			}
		},
		considerations = UtilityConsiderations.clan_rat_follow
	},
	dodge_back = {
		dodge_distance = 2.5,
		move_speed = 6,
		action_weight = 4,
		considerations = UtilityConsiderations.ungor_backwards_combat_step,
		dodge_back_animation = {
			"combat_step_bwd",
			"combat_step_bwd_2"
		}
	},
	normal_attack = {
		damage_type = "piercing",
		hit_react_type = "light",
		dodge_rotation_time = 0.2,
		attack_intensity = 0.5,
		moving_attack_intensity = 0.75,
		weapon_reach = 2.75,
		damage = 3,
		player_push_speed = 2,
		attack_intensity_type = "normal",
		action_weight = 1,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.beastmen_ungor_attack,
		dodge_window_start = BreedTweaks.dodge_windows.piercing_attack,
		dodge_window_duration = BreedTweaks.dodge_window_durations.piercing_attack,
		default_attack = {
			anims = {
				"attack_pounce",
				"attack_pounce_2",
				"attack_pounce_3",
				"attack_pounce_4"
			},
			damage_box_range = {
				flat = 2.25,
				up = 1.7,
				down = -0.75
			}
		},
		high_attack = {
			z_threshold = 3,
			anims = {
				"attack_reach_up",
				"attack_reach_up_2",
				"attack_reach_up_3",
				"attack_reach_up_4"
			},
			damage_box_range = {
				flat = 1.5,
				up = 3.8,
				down = 0
			}
		},
		low_attack = {
			z_threshold = -3,
			anims = {
				"attack_reach_down",
				"attack_reach_down_2",
				"attack_reach_down_3"
			},
			damage_box_range = {
				flat = 1,
				up = 1.7,
				down = -3
			}
		},
		knocked_down_attack = {
			z_threshold = 0.6,
			anims = {
				"attack_downed",
				"attack_downed_2"
			},
			damage_box_range = {
				flat = 1,
				up = 1.7,
				down = -3
			}
		},
		step_attack = {
			step_distance_moving = 2.5,
			step_speed_moving = 1,
			step_distance_stationary = 3.5,
			moving_attack = true,
			anims = {
				"attack_step",
				"attack_step_2"
			},
			damage_box_range = {
				flat = 3,
				up = 1.7,
				down = -0.75
			}
		},
		difficulty_damage = BreedTweaks.difficulty_damage.skirmish_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.roamer.normal_attack,
		diminishing_damage = {},
		difficulty_diminishing_damage = BreedTweaks.diminishing_damage_and_cooldown.horde,
		attack_directions = {
			attack_reach_down = "left",
			attack_run_3 = "left",
			attack_pounce_6 = "right",
			attack_pounce_7 = "left",
			attack_run = "left",
			attack_pounce_2 = "right",
			attack_reach_up_3 = "left",
			attack_reach_up_2 = "left",
			attack_move = "left",
			attack_run_2 = "right",
			attack_pounce_5 = "left",
			attack_reach_down_2 = "left",
			attack_move_4 = "right",
			attack_move_2 = "right",
			attack_move_3 = "left",
			attack_reach_up_4 = "left",
			attack_reach_up = "left",
			attack_reach_down_3 = "left",
			attack_pounce_4 = "right",
			attack_pounce_3 = "left",
			attack_pounce = "left"
		},
		attack_finished_duration = BreedTweaks.attack_finished_duration.beastmen_horde
	},
	running_attack = {
		dodge_rotation_time = 1,
		hit_react_type = "medium",
		damage_type = "piercing",
		attack_intensity = 1,
		moving_attack = true,
		damage = 3,
		player_push_speed = 4,
		attack_intensity_type = "running",
		action_weight = 10,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.beastmen_ungor_running_attack,
		default_attack = {
			anims = {
				"attack_move",
				"attack_move_2"
			}
		},
		difficulty_damage = BreedTweaks.difficulty_damage.skirmish_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.roamer.running_attack,
		diminishing_damage = {},
		difficulty_diminishing_damage = BreedTweaks.diminishing_damage_and_cooldown.horde,
		dodge_window_start = BreedTweaks.dodge_windows.running_attack,
		dodge_window_duration = BreedTweaks.dodge_window_durations.piercing_attack,
		attack_finished_duration = BreedTweaks.attack_finished_duration.beastmen_horde
	},
	combat_shout = {
		cooldown = -1,
		shout_anim = "shout",
		action_weight = 1,
		considerations = UtilityConsiderations.clan_rat_shout
	},
	smash_door = {
		hit_react_type = "medium",
		name = "smash_door",
		damage = 3,
		damage_type = "cutting",
		move_anim = "move_fwd",
		unblockable = true,
		attack_anim = "attack_pounce"
	},
	blocked = {
		blocked_anims = {
			"blocked",
			"blocked_2",
			"blocked_3"
		},
		difficulty_duration = BreedTweaks.blocked_duration.beastmen_horde
	},
	stagger = {
		custom_enter_function = function (unit, blackboard, t, action)
			if blackboard.standard_bearer_stagger then
				local stagger_anims = action.standard_stagger_anims[blackboard.stagger_type]

				blackboard.standard_bearer_stagger = nil

				return stagger_anims, "idle"
			end

			local stagger_type = stagger_types

			if blackboard.stagger_type == stagger_type.heavy then
				blackboard.stagger_immune_time = t + 2.25
				blackboard.heavy_stagger_immune_time = t + 1.5
			elseif blackboard.stagger_type == stagger_type.explosion then
				blackboard.stagger_immune_time = t + 3.5
				blackboard.heavy_stagger_immune_time = t + 3
			end

			local stagger_anims = action.stagger_anims[blackboard.stagger_type]

			return stagger_anims, "idle"
		end,
		stagger_anims = {
			{
				fwd = {
					"stun_bwd_sword"
				},
				bwd = {
					"stun_fwd_sword"
				},
				left = {
					"stun_left_sword",
					"stun_left_sword_2",
					"stun_left_sword_3"
				},
				right = {
					"stun_right_sword",
					"stun_right_sword_2",
					"stun_right_sword_3"
				},
				dwn = {
					"stun_down"
				}
			},
			{
				fwd = {
					"stagger_fwd",
					"stagger_fwd_2",
					"stagger_fwd_3",
					"stagger_fwd_4"
				},
				bwd = {
					"stagger_bwd",
					"stagger_bwd_2",
					"stagger_bwd_3",
					"stagger_bwd_4",
					"stagger_bwd_5"
				},
				left = {
					"stagger_left",
					"stagger_left_2",
					"stagger_left_3",
					"stagger_left_4"
				},
				right = {
					"stagger_right",
					"stagger_right_2",
					"stagger_right_3",
					"stagger_right_4"
				},
				dwn = {
					"stun_down"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd_fall",
					"stagger_bwd_fall_2",
					"stagger_bwd_heavy",
					"stagger_bwd_heavy_2",
					"stagger_bwd_heavy_3",
					"stagger_bwd_heavy_4"
				},
				left = {
					"stagger_left_heavy",
					"stagger_left_heavy_2",
					"stagger_left_heavy_3",
					"stagger_left_heavy_4",
					"stagger_left_heavy_5"
				},
				right = {
					"stagger_right_heavy",
					"stagger_right_heavy_2",
					"stagger_right_heavy_3",
					"stagger_right_heavy_4",
					"stagger_right_heavy_5"
				},
				dwn = {
					"stun_down"
				}
			},
			{
				fwd = {
					"stun_fwd_ranged_light",
					"stun_fwd_ranged_light_2"
				},
				bwd = {
					"stun_bwd_ranged_light",
					"stun_bwd_ranged_light_2"
				},
				left = {
					"stun_left_ranged_light",
					"stun_left_ranged_light_2"
				},
				right = {
					"stun_right_ranged_light",
					"stun_right_ranged_light_2"
				}
			},
			{
				fwd = {
					"stagger_fwd_stab"
				},
				bwd = {
					"stagger_bwd_stab",
					"stagger_bwd_stab_2"
				},
				left = {
					"stagger_left_stab"
				},
				right = {
					"stagger_right_stab"
				}
			},
			{
				fwd = {
					"stagger_fwd_exp",
					"stagger_fwd_exp_2"
				},
				bwd = {
					"stagger_bwd_exp",
					"stagger_bwd_exp_2"
				},
				left = {
					"stagger_left_exp",
					"stagger_left_exp_2"
				},
				right = {
					"stagger_right_exp",
					"stagger_right_exp_2"
				}
			},
			{
				fwd = {
					"stagger_short_fwd",
					"stagger_short_fwd_2"
				},
				bwd = {
					"stagger_short_bwd",
					"stagger_short_bwd_2",
					"stagger_short_bwd_3",
					"stagger_short_bwd_4",
					"stagger_short_bwd_5"
				},
				left = {
					"stun_left_sword",
					"stun_left_sword_2",
					"stun_left_sword_3",
					"stagger_short_left",
					"stagger_short_left_2"
				},
				right = {
					"stun_right_sword",
					"stun_right_sword_2",
					"stun_right_sword_3",
					"stagger_short_right",
					"stagger_short_right_2"
				},
				dwn = {
					"stun_down"
				}
			},
			{
				fwd = {},
				bwd = {},
				left = {},
				right = {}
			},
			{
				fwd = {
					"stagger_fwd",
					"stagger_fwd_2",
					"stagger_fwd_3",
					"stagger_fwd_4"
				},
				bwd = {
					"stagger_bwd",
					"stagger_bwd_2",
					"stagger_bwd_3",
					"stagger_bwd_4",
					"stagger_bwd_5"
				},
				left = {
					"stagger_left",
					"stagger_left_2",
					"stagger_left_3",
					"stagger_left_4"
				},
				right = {
					"stagger_right",
					"stagger_right_2",
					"stagger_right_3",
					"stagger_right_4"
				},
				dwn = {
					"stun_down"
				}
			}
		},
		standard_stagger_anims = {
			{
				fwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				bwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				left = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				right = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				}
			},
			{
				fwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				bwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				left = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				right = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				}
			},
			{
				fwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				bwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				left = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				right = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				}
			},
			{
				fwd = {
					"stun_ranged_fwd"
				},
				bwd = {
					"stun_ranged_bwd"
				},
				left = {
					"stun_ranged_left"
				},
				right = {
					"stun_ranged_right"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd_stab"
				},
				left = {
					"stagger_left"
				},
				right = {
					"stagger_right"
				}
			},
			{
				fwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				bwd = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				left = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				},
				right = {
					"stagger_fwd_cheer_1",
					"stagger_fwd_cheer_2",
					"stagger_fwd_cheer_3",
					"stagger_fwd_cheer_4",
					"stagger_fwd_cheer_5"
				}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd"
				},
				left = {
					"stagger_left"
				},
				right = {
					"stagger_right"
				}
			},
			{
				fwd = {},
				bwd = {},
				left = {},
				right = {}
			},
			{
				fwd = {
					"stagger_fwd"
				},
				bwd = {
					"stagger_bwd",
					"stagger_bwd_2",
					"stagger_bwd_3",
					"stagger_bwd_4"
				},
				left = {
					"stagger_left",
					"stagger_left_heavy_2"
				},
				right = {
					"stagger_right",
					"stagger_right_heavy_2"
				}
			}
		}
	}
}

BreedActions.beastmen_ungor = table.create_copy(BreedActions.beastmen_ungor, action_data)
