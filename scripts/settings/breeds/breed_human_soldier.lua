local stagger_types = require("scripts/utils/stagger_types")
local breed_data = {
	detection_radius = 12,
	ai_strength = 1,
	walk_speed = 3.25,
	radius = 1.5,
	ai_toughness = 2,
	patrol_active_target_selection = "pick_closest_target_with_spillover",
	aim_template = "chaos_marauder",
	hesitation_timer = 7,
	dont_wield_weapon_on_patrol = true,
	animation_sync_rpc = "rpc_sync_anim_state_7",
	death_reaction = "ai_default",
	is_always_spawnable = true,
	target_selection = "pick_closest_target_with_spillover",
	aoe_height = 1.4,
	hit_mass_count = 3,
	leave_walk_distance = 5,
	scale_death_push = 0.65,
	slot_template = "chaos_roamer",
	attack_player_sound_event = "Play_npc_human_soldier_vce_attack",
	dialogue_source_name = "npc_human_soldier",
	attack_general_sound_event = "Play_npc_human_soldier_vce_attack",
	default_inventory_template = "human_soldier",
	uses_attack_sfx_callback = true,
	patrol_detection_radius = 10,
	flingable = true,
	wwise_voice_switch_group = "vce_variation_switch",
	panic_close_detection_radius_sq = 9,
	height = 1.7,
	use_slot_type = "medium",
	push_sound_event = "Play_generic_pushed_impact_small_armour",
	look_at_range = 30,
	patrol_active_perception = "perception_regular",
	threat_value = 2,
	perception_previous_attacker_stickyness_value = -7.75,
	race = "human",
	poison_resistance = 70,
	armor_category = 1,
	bone_lod_level = 0,
	smart_object_template = "chaos_marauder",
	backstab_player_sound_event = "Play_npc_human_soldier_vce_attack",
	death_sound_event = "Play_npc_human_soldier_vce_death",
	smart_targeting_width = 0.2,
	behavior = "human_pleb",
	use_regular_horde_spawning = true,
	during_horde_detection_radius = 15,
	has_inventory = true,
	run_speed = 3.25,
	follow_reach = 1,
	exchange_order = 4,
	stagger_multiplier = 0.45,
	stagger_threshold_light = 0,
	hit_reaction = "ai_default",
	patrol_passive_target_selection = "patrol_passive_target_selection",
	smart_targeting_outer_width = 0.75,
	hit_effect_template = "HitEffectsHumanPleb",
	smart_targeting_height_multiplier = 2,
	passive_walk_speed = 1.5,
	unit_template = "ai_unit_human_soldier",
	default_mover = "standing",
	has_running_attack = true,
	perception = "perception_regular",
	player_locomotion_constrain_radius = 0.7,
	weapon_reach = 2.5,
	horde_target_selection = "horde_pick_closest_target_with_spillover",
	use_backstab_vo = true,
	patrol_passive_perception = "perception_regular",
	vortexable = true,
	base_unit = "units/beings/npcs/regimental_soldier/chr_npc_regimental_soldier_male",
	enter_walk_distance = 2.5,
	passive_in_patrol_start_anim = {
		"move_fwd_1"
	},
	infighting = InfightingSettings.small,
	perception_exceptions = {
		poison_well = true,
		wizard_destructible = true
	},
	size_variation_range = {
		0.95,
		1.125
	},
	max_health = BreedTweaks.max_health.marauder,
	bloodlust_health = BreedTweaks.bloodlust_health.chaos_roamer,
	stagger_reduction = BreedTweaks.stagger_reduction.marauder,
	diff_stagger_resist = BreedTweaks.diff_stagger_resist.marauder,
	stagger_duration = BreedTweaks.stagger_duration.marauder,
	stagger_duration_difficulty_mod = BreedTweaks.stagger_duration_difficulty_mod.fast,
	hit_mass_counts = BreedTweaks.hit_mass_counts.marauder,
	wwise_voices = {
		"voice_01",
		"voice_02",
		"voice_04"
	},
	debug_color = {
		255,
		200,
		40,
		40
	},
	run_on_spawn = AiBreedSnippets.on_human_soldier_spawn,
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
	BTHesitationVariations = {
		hesitate = {
			"outnumbered_1"
		},
		hesitate_bwd = {
			"hesitate_bwd"
		}
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
				"j_spine2",
				"j_spine1",
				"j_spine"
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
				"j_spine2",
				"j_spine1",
				"j_spine"
			}
		},
		torso = {
			prio = 2,
			actors = {
				"c_spine2",
				"c_spine1",
				"c_spine",
				"c_hips"
			},
			push_actors = {
				"j_neck",
				"j_spine1",
				"j_spine2",
				"j_hips",
				"j_spine"
			}
		},
		left_arm = {
			prio = 3,
			actors = {
				"c_leftarm",
				"c_leftforearm",
				"c_lefthand",
				"c_leftshoulder"
			},
			push_actors = {
				"j_spine2",
				"j_spine1",
				"j_leftshoulder",
				"j_leftarm",
				"j_spine"
			}
		},
		right_arm = {
			prio = 3,
			actors = {
				"c_rightarm",
				"c_rightforearm",
				"c_righthand",
				"c_rightshoulder"
			},
			push_actors = {
				"j_spine2",
				"j_spine1",
				"j_rightshoulder",
				"j_rightarm",
				"j_spine"
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
				"j_leftleg",
				"j_hips",
				"j_spine"
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
				"j_rightfoot",
				"j_rightleg",
				"j_hips",
				"j_spine"
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
		c_rightshoulder = "j_rightshoulder",
		c_rightfoot = "j_rightfoot",
		c_leftshoulder = "j_leftshoulder",
		c_rightleg = "j_rightleg",
		c_lefthand = "j_lefthand",
		c_rightforearm = "j_rightforearm",
		c_leftleg = "j_leftleg",
		c_spine2 = "j_spine2",
		c_righthand = "j_righthand",
		c_rightupleg = "j_rightupleg",
		c_spine = "j_spine",
		c_head = "j_head",
		c_leftforearm = "j_leftforearm",
		c_leftfoot = "j_leftfoot",
		c_neck = "j_neck",
		c_spine1 = "j_spine1",
		c_leftarm = "j_leftarm",
		c_hips = "j_hips"
	},
	ragdoll_actor_thickness = {
		j_rightfoot = 0.2,
		j_leftarm = 0.2,
		j_leftleg = 0.2,
		j_leftforearm = 0.2,
		j_leftshoulder = 0.3,
		j_neck = 0.3,
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
		j_spine2 = 0.3,
		j_spine1 = 0.3,
		j_spine = 0.3,
		j_lefthand = 0.2,
		j_rightforearm = 0.2
	}
}

Breeds.human_soldier = table.create_copy(Breeds.human_soldier, breed_data)

local AttackIntensityPerDifficulty = {
	normal = {
		easy = {
			normal = 2
		},
		normal = {
			normal = 2
		},
		hard = {
			normal = 2
		},
		harder = {
			normal = 2
		},
		hardest = {
			normal = 2
		},
		cataclysm = {
			normal = 2
		},
		cataclysm_2 = {
			normal = 2
		},
		cataclysm_3 = {
			normal = 2
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
		}
	}
}
local action_data = {
	idle = {
		anim_cycle_index = 0,
		animations = {
			"idle"
		},
		combat_animations = {
			"idle"
		},
		alerted_anims = {
			"alerted"
		}
	},
	combat_shout = {
		cooldown = -1,
		shout_anim = "shout",
		action_weight = 1,
		considerations = UtilityConsiderations.clan_rat_shout
	},
	hesitate = {
		no_hesitation = true
	},
	alerted = {
		alerted_anims = {
			"alerted"
		},
		easter_egg_alerted_anims = {
			"alerted_2"
		},
		start_anims_name = {
			fwd = {
				"alerted_fwd"
			},
			bwd = {
				"alerted_bwd_2"
			},
			left = {
				"alerted_left"
			},
			right = {
				"alerted_right"
			}
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
			},
			alerted_fwd_2 = {},
			alerted_bwd_2 = {
				dir = -1,
				rad = math.pi
			},
			alerted_left_2 = {
				dir = 1,
				rad = math.pi / 2
			},
			alerted_right_2 = {
				dir = -1,
				rad = math.pi / 2
			},
			alerted_fwd_3 = {},
			alerted_bwd_3 = {
				dir = -1,
				rad = math.pi
			},
			alerted_left_3 = {
				dir = 1,
				rad = math.pi / 2
			},
			alerted_right_3 = {
				dir = -1,
				rad = math.pi / 2
			}
		}
	},
	follow = {
		action_weight = 1,
		considerations = UtilityConsiderations.clan_rat_follow,
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
		walk_anims = {
			"move_fwd_walk"
		}
	},
	reposition_on_slot = {
		action_weight = 2,
		considerations = UtilityConsiderations.reposition_on_slot,
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
		walk_anims = {
			"move_fwd_walk"
		}
	},
	running_attack = {
		dodge_rotation_time = 1,
		hit_react_type = "medium",
		damage_type = "cutting",
		attack_intensity = 1,
		moving_attack = true,
		damage = 3,
		player_push_speed = 3,
		attack_intensity_type = "running",
		action_weight = 10,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.marauder_running_attack,
		default_attack = {
			anims = {
				"attack_run"
			}
		},
		difficulty_damage = BreedTweaks.difficulty_damage.chaos_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.roamer.running_attack,
		diminishing_damage = {},
		difficulty_diminishing_damage = BreedTweaks.diminishing_damage_and_cooldown.roamer,
		dodge_window_start = BreedTweaks.dodge_windows.running_attack,
		dodge_window_duration = BreedTweaks.dodge_window_durations.running_attack,
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_roamer
	},
	normal_attack = {
		damage = 3,
		damage_type = "cutting",
		hit_react_type = "medium",
		attack_intensity = 0.5,
		dodge_rotation_time = 1.2,
		weapon_reach = 2.5,
		moving_attack_intensity = 0.75,
		player_push_speed = 5,
		attack_intensity_type = "normal",
		action_weight = 1,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.marauder_attack,
		dodge_window_start = BreedTweaks.dodge_windows.normal_attack,
		dodge_window_duration = BreedTweaks.dodge_window_durations.normal_attack,
		default_attack = {
			anims = {
				"attack_pounce",
				"attack_pounce_2",
				"attack_pounce_3"
			},
			damage_box_range = {
				flat = 2.25,
				up = 1.7,
				down = -0.75
			}
		},
		step_attack = {
			step_distance_moving = 2.5,
			step_speed_moving = 1,
			step_distance_stationary = 3.5,
			moving_attack = true,
			anims = {
				"attack_move"
			},
			damage_box_range = {
				flat = 2.25,
				up = 1.7,
				down = -0.75
			}
		},
		high_attack = {
			z_threshold = 1.5,
			anims = {
				"attack_reach_up"
			},
			damage_box_range = {
				flat = 1.5,
				up = 3.8,
				down = 0
			}
		},
		mid_attack = {
			z_threshold = -0.6,
			flat_threshold = 1.5,
			anims = {
				"attack_pounce_down"
			},
			damage_box_range = {
				flat = 2,
				up = 1.7,
				down = -2
			}
		},
		low_attack = {
			z_threshold = -0.6,
			anims = {
				"attack_reach_down"
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
				"attack_pounce_down"
			},
			damage_box_range = {
				flat = 1,
				up = 1.7,
				down = -3
			}
		},
		target_type_exceptions = {
			poison_well = {
				anims = "poison_well",
				damage_box_range = {
					flat = 2,
					up = 1.7,
					down = -0.75
				}
			}
		},
		difficulty_damage = BreedTweaks.difficulty_damage.chaos_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.roamer.normal_attack,
		diminishing_damage = {},
		difficulty_diminishing_damage = BreedTweaks.diminishing_damage_and_cooldown.roamer,
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
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_roamer
	},
	tutorial_attack = {
		moving_attack_intensity = 0.75,
		dodge_window_start = 0.25,
		dodge_rotation_time = 1.2,
		hit_react_type = "medium",
		damage_type = "cutting",
		attack_intensity = 0.5,
		weapon_reach = 2.5,
		damage = 3,
		player_push_speed = 5,
		attack_intensity_type = "normal",
		action_weight = 1,
		difficulty_attack_intensity = AttackIntensityPerDifficulty,
		considerations = UtilityConsiderations.marauder_attack,
		default_attack = {
			anims = {
				"attack_pounce"
			},
			damage_box_range = {
				flat = 2.25,
				up = 1.7,
				down = -0.75
			}
		},
		difficulty_damage = BreedTweaks.difficulty_damage.chaos_roamer_attack,
		fatigue_type = BreedTweaks.fatigue_types.roamer.normal_attack,
		diminishing_damage = {},
		difficulty_diminishing_damage = BreedTweaks.diminishing_damage_and_cooldown.roamer,
		attack_directions = {
			attack_pounce = "left"
		},
		attack_finished_duration = BreedTweaks.attack_finished_duration.chaos_roamer
	},
	combat_step = {
		move_speed = 4,
		action_weight = 1,
		considerations = UtilityConsiderations.chaos_marauder_combat_step,
		start_anims_data = {
			combat_step_fwd = {},
			combat_step_bwd = {
				dir = -1,
				rad = math.pi
			},
			combat_step_left = {
				dir = 1,
				rad = math.pi / 2
			},
			combat_step_right = {
				dir = -1,
				rad = math.pi / 2
			}
		}
	},
	climb = {},
	smash_door = {
		unblockable = true,
		damage = 4,
		damage_type = "cutting",
		move_anim = "move_fwd",
		door_attack_distance = 1,
		attack_anim = {
			"attack_blocker",
			"attack_blocker_2",
			"attack_blocker_3"
		}
	},
	utility_action = {
		fail_cooldown_blackboard_identifier = "attack_cooldown_at",
		name = "utility_action",
		fail_cooldown_name = "utility_fail_cooldown"
	},
	blocked = {
		blocked_anims = {
			"blocked"
		},
		difficulty_duration = BreedTweaks.blocked_duration.chaos_roamer
	},
	move_to_goal = {
		eval_time = 2,
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
		walk_anims = {
			"move_fwd_walk"
		}
	},
	stagger = {
		scale_animation_speeds = true,
		custom_enter_function = function (unit, blackboard, t, action)
			if blackboard.stagger_type == stagger_types.heavy then
				blackboard.stagger_immune_time = t + 2.25
				blackboard.heavy_stagger_immune_time = t + 1.5
			elseif blackboard.stagger_type == stagger_types.explosion then
				blackboard.stagger_immune_time = t + 3.5
				blackboard.heavy_stagger_immune_time = t + 3
			end

			local stagger_anims = action.stagger_anims[blackboard.stagger_type]

			return stagger_anims, "idle"
		end,
		stagger_anims = {
			{
				fwd = {
					"stagger_fwd_light"
				},
				bwd = {
					"stagger_bwd_light"
				},
				left = {
					"stagger_left_light"
				},
				right = {
					"stagger_right_light"
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
					"stagger_bwd"
				},
				left = {
					"stagger_left"
				},
				right = {
					"stagger_right"
				},
				dwn = {
					"stagger_medium_downward"
				}
			},
			{
				fwd = {
					"stagger_fwd_heavy"
				},
				bwd = {
					"stagger_up_heavy"
				},
				left = {
					"stagger_left_heavy"
				},
				right = {
					"stagger_right_heavy"
				},
				dwn = {
					"stagger_dwn_heavy"
				}
			},
			{
				fwd = {
					"stun_fwd_ranged_light"
				},
				bwd = {
					"stun_bwd_ranged_light"
				},
				left = {
					"stun_left_ranged_light"
				},
				right = {
					"stun_right_ranged_light"
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
				},
				dwn = {
					"stagger_medium_downward"
				}
			},
			{
				fwd = {
					"stagger_explosion_back"
				},
				bwd = {
					"stagger_explosion_front"
				},
				left = {
					"stagger_explosion_left"
				},
				right = {
					"stagger_explosion_right"
				}
			},
			{
				fwd = {
					"stagger_fwd_light"
				},
				bwd = {
					"stagger_bwd_light"
				},
				left = {
					"stagger_left_light"
				},
				right = {
					"stagger_right_light"
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
				},
				dwn = {
					"stagger_medium_downward"
				}
			}
		}
	}
}

action_data.fallback_idle = action_data.idle
BreedActions.human_soldier = table.create_copy(BreedActions.human_soldier, action_data)