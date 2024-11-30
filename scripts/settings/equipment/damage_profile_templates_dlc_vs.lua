local drop_off_ranges = {
	shotgun_dropoff_ranges = {
		dropoff_start = 8,
		dropoff_end = 15
	},
	machinegun_dropoff_ranges = {
		dropoff_start = 10,
		dropoff_end = 30
	},
	blunderbuss_dropoff_ranges = {
		dropoff_start = 8,
		dropoff_end = 20
	},
	machinegun_shotgun_dropoff_ranges = {
		dropoff_start = 30,
		dropoff_end = 50
	},
	carbine_dropoff_ranges = {
		dropoff_start = 15,
		dropoff_end = 30
	},
	sniper_dropoff_ranges = {
		dropoff_start = 30,
		dropoff_end = 50
	},
	flamethrower_dropoff_ranges = {
		dropoff_start = 4,
		dropoff_end = 8
	},
	rapier_dropoff_ranges = {
		dropoff_start = 5,
		dropoff_end = 10
	}
}
local damage_templates = {
	playable_boss_melee_frenzy_light_vs = {
		charge_value = "light_attack",
		fatigue_type = "chaos_cleave",
		critical_strike = {},
		armor_modifier = {
			attack = {
				1,
				1,
				1,
				1,
				1,
				1
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.25,
			impact = 0.2
		},
		targets = {
			{
				boost_curve_type = "linesman_curve",
				boost_curve_coefficient = 2,
				attack_template = "slashing_linesman",
				power_distribution = {
					attack = 0.6,
					impact = 0.6
				}
			},
			{
				boost_curve_type = "linesman_curve",
				boost_curve_coefficient = 2,
				attack_template = "light_slashing_linesman",
				power_distribution = {
					attack = 0.4,
					impact = 0.4
				}
			}
		},
		default_target = {
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	playable_boss_melee_frenzy_heavy_vs = {
		charge_value = "heavy_attack",
		fatigue_type = "chaos_cleave",
		critical_strike = {},
		armor_modifier = {
			attack = {
				1,
				1,
				1,
				1,
				1,
				1
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.35,
			impact = 0.35
		},
		targets = {
			{
				boost_curve_type = "linesman_curve",
				boost_curve_coefficient = 2,
				attack_template = "heavy_slashing_linesman",
				power_distribution = {
					attack = 1,
					impact = 1
				}
			},
			{
				boost_curve_type = "linesman_curve",
				boost_curve_coefficient = 2,
				attack_template = "slashing_linesman",
				power_distribution = {
					attack = 0.5,
					impact = 0.5
				}
			}
		},
		default_target = {
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.25,
				impact = 0.25
			}
		}
	},
	playable_boss_melee_scrambler_light_vs = {
		charge_value = "light_attack",
		damage_type = "push",
		fatigue_type = "ogre_shove",
		critical_strike = {},
		armor_modifier = {
			attack = {
				1,
				1,
				1,
				1,
				1,
				1
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.25,
			impact = 0.2
		},
		targets = {
			{
				boost_curve_type = "default",
				boost_curve_coefficient = 2,
				attack_template = "basic_sweep_push",
				power_distribution = {
					attack = 0.4,
					impact = 0.4
				}
			}
		},
		default_target = {
			boost_curve_type = "default",
			boost_curve_coefficient = 2,
			attack_template = "basic_sweep_push",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	playable_boss_melee_scrambler_heavy_vs = {
		charge_value = "light_attack",
		damage_type = "push",
		fatigue_type = "ogre_shove",
		critical_strike = {},
		armor_modifier = {
			attack = {
				1,
				1,
				1,
				1,
				1,
				1
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.25,
			impact = 0.2
		},
		targets = {
			{
				boost_curve_type = "default",
				boost_curve_coefficient = 2,
				attack_template = "basic_sweep_push",
				power_distribution = {
					attack = 0.8,
					impact = 1
				}
			}
		},
		default_target = {
			boost_curve_type = "default",
			boost_curve_coefficient = 2,
			attack_template = "basic_sweep_push",
			power_distribution = {
				attack = 0.5,
				impact = 1
			}
		}
	},
	playable_boss_melee_frenzy_slam_vs = {
		charge_value = "light_attack",
		fatigue_type = "chaos_cleave",
		critical_strike = {},
		armor_modifier = {
			attack = {
				1,
				1,
				1,
				1,
				1,
				1
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.25,
			impact = 0.2
		},
		targets = {
			{
				boost_curve_type = "linesman_curve",
				boost_curve_coefficient = 2,
				attack_template = "slashing_linesman",
				power_distribution = {
					attack = 0.6,
					impact = 0.6
				}
			},
			{
				boost_curve_type = "linesman_curve",
				boost_curve_coefficient = 2,
				attack_template = "light_slashing_linesman",
				power_distribution = {
					attack = 0.4,
					impact = 0.4
				}
			}
		},
		default_target = {
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 2,
			attack_template = "light_slashing_linesman",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			}
		}
	},
	playable_boss_rat_ogre_leap_explosion_vs = {
		charge_value = "aoe",
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				0.25,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				0.75,
				0
			}
		},
		default_target = {
			attack_template = "drakegun",
			damage_type = "drakegun",
			power_distribution = {
				attack = 0.25,
				impact = 0.5
			}
		}
	},
	ratling_gunner_vs = {
		no_stagger_damage_reduction_ranged = true,
		charge_value = "projectile",
		fatigue_damage_override = "blocked_attack_2",
		dot_template_name = "vs_ratling_gunner_slow",
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				0.8,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				0.8,
				0.5,
				0
			}
		},
		default_target = {
			boost_curve_type = "default",
			boost_curve_coefficient = 0.2,
			attack_template = "shot_machinegun",
			power_distribution = {
				attack = 0.1,
				impact = 0.1
			},
			range_modifier_settings = {
				distance_scaling_steps = {
					{
						distance = 0.1,
						multiplier = 0.06
					},
					{
						distance = 10,
						multiplier = 0.06
					},
					{
						distance = 20,
						multiplier = 0.05
					},
					{
						distance = 30,
						multiplier = 0.04
					}
				}
			}
		}
	},
	questing_knight_career_sword_vs = {
		charge_value = "heavy_attack",
		is_explosion = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				1.5,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				1.5,
				0.1,
				1,
				1
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.5
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "slashing_smiter",
			power_distribution = {
				attack = 2,
				impact = 2
			}
		}
	},
	questing_knight_career_sword_stab_vs = {
		charge_value = "heavy_attack",
		is_explosion = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1.5,
				1.5,
				1.5,
				0.1,
				1.5,
				1.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1.5,
				1.5,
				1.5,
				0.1,
				1.5,
				1.5
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.5
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "heavy_slashing_fencer",
			power_distribution = {
				attack = 2,
				impact = 2
			}
		}
	},
	questing_knight_career_sword_tank_vs = {
		charge_value = "heavy_attack",
		is_explosion = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				1.5,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				1.5,
				0.1,
				1,
				1
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.5,
			impact = 2
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "heavy_slashing_tank",
			power_distribution = {
				attack = 2,
				impact = 2
			}
		}
	},
	thorn_sister_poison_vs = {
		deal_min_damage = true,
		is_dot = true,
		charge_value = "n/a",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.8,
				0.8,
				0.8,
				0.8,
				0.5,
				0.2
			},
			impact = {
				1,
				1,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			attack_template = "arrow_poison_aoe",
			damage_type = "arrow_poison_dot",
			power_distribution = {
				attack = 0.005,
				impact = 0
			}
		}
	},
	engineer_ability_shot_vs = {
		charge_value = "instant_projectile",
		shield_break = false,
		friendly_fire_multiplier = 0.15,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.25,
				0.5,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.25,
				0.5,
				1,
				1,
				0.25
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.1,
				0.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.1,
				0.5,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.1,
				0.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.1,
				0.5,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.6,
			attack_template = "shot_machinegun",
			power_distribution_near = {
				attack = 0.25,
				impact = 0.075
			},
			power_distribution_far = {
				attack = 0.125,
				impact = 0.05
			},
			range_modifier_settings = engineer_ability_shot_dropoff_ranges
		}
	},
	engineer_ability_shot_armor_pierce_vs = {
		charge_value = "instant_projectile",
		shield_break = true,
		friendly_fire_multiplier = 0.2,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				0.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				1,
				1,
				1,
				0.5,
				0.4
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.4
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				1,
				1,
				1,
				0.5,
				0.4
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.4
			}
		},
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.6,
			attack_template = "shot_repeating_handgun",
			power_distribution_near = {
				attack = 0.48,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.36,
				impact = 0.25
			},
			range_modifier_settings = engineer_ability_shot_dropoff_ranges
		}
	},
	shot_sniper_ability_vs = {
		charge_value = "instant_projectile",
		shield_break = true,
		no_stagger_damage_reduction_ranged = true,
		is_explosion = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				1.25,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				200,
				1,
				1,
				1
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				1.25,
				0.1,
				1,
				1
			},
			impact = {
				1,
				1,
				200,
				0.1,
				1,
				1
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.5,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "shot_sniper",
			power_distribution = {
				attack = 2,
				impact = 2
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	},
	shot_shotgun_ability_vs = {
		shield_break = true,
		charge_value = "instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		is_explosion = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.1,
				0.15,
				0.25,
				1,
				0.025
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				200,
				0.25,
				1,
				0.05
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.1,
				0.15,
				0.25,
				1,
				0
			},
			impact = {
				1,
				0.5,
				100,
				0.25,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				0.15,
				0.25,
				1,
				0
			},
			impact = {
				1,
				0.5,
				200,
				0.25,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.25,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.25,
			attack_template = "shot_sniper",
			power_distribution_near = {
				attack = 0.5,
				impact = 0.5
			},
			power_distribution_far = {
				attack = 0.25,
				impact = 0.25
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	},
	victor_priest_nuke_dot_vs = {
		is_dot = true,
		charge_value = "n/a",
		damage_type = "burninating",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.7,
				0.5,
				3,
				0.7,
				0.7,
				0.3
			},
			impact = {
				1,
				0,
				0,
				1,
				1,
				0
			}
		},
		default_target = {
			boost_curve_type = "tank_curve",
			boost_curve_coefficient = 0.2,
			attack_template = "light_blunt_tank",
			power_distribution = {
				attack = 0.07,
				impact = 0.05
			}
		}
	},
	shot_shotgun_vs = {
		charge_value = "instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.3,
				0.5,
				1,
				1,
				0
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.4,
				0.4,
				0.75,
				1,
				0
			},
			impact = {
				1,
				1,
				3,
				0,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.2,
				0.25,
				0.75,
				1,
				0
			},
			impact = {
				1,
				0.7,
				0.5,
				0,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.1,
			impact = 0.1
		},
		default_target = {
			boost_curve_coefficient_headshot = 0.75,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "shot_shotgun_vs",
			power_distribution_near = {
				attack = 0.25,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.15,
				impact = 0.15
			},
			range_modifier_settings = drop_off_ranges.blunderbuss_dropoff_ranges
		}
	},
	crossbow_bolt_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.8,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.8,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.8,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.6,
				1.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				0.6,
				1,
				1,
				1,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 2.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "bolt_sniper",
			power_distribution_near = {
				attack = 0.7,
				impact = 0.4
			},
			power_distribution_far = {
				attack = 0.6,
				impact = 0.3
			},
			range_modifier_settings = drop_off_ranges.sniper_dropoff_ranges
		}
	},
	crossbow_bolt_repeating_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1.5,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.4,
				1.5,
				1,
				0.5,
				0
			},
			impact = {
				1,
				0.4,
				1,
				1,
				1,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.2,
			impact = 0.2
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "bolt_carbine",
			power_distribution_near = {
				attack = 0.375,
				impact = 0.25
			},
			power_distribution_far = {
				attack = 0.25,
				impact = 0.15
			},
			range_modifier_settings = drop_off_ranges.carbine_dropoff_ranges
		}
	},
	shot_machinegun_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.75,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.75,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.2,
			impact = 0.2
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "shot_machinegun",
			power_distribution_near = {
				attack = 0.425,
				impact = 0.175
			},
			power_distribution_far = {
				attack = 0.3,
				impact = 0.075
			},
			range_modifier_settings = drop_off_ranges.machinegun_dropoff_ranges
		}
	},
	shot_machinegun_shotgun_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.25,
				1,
				1,
				1,
				0.175
			},
			impact_armor_power_modifer = {
				1,
				0.25,
				1,
				1,
				1,
				0.125
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				1,
				3,
				1,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0.7,
				1,
				1,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 0.4,
			attack_template = "shot_machinegun",
			power_distribution_near = {
				attack = 0.275,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.25,
				impact = 0.15
			},
			range_modifier_settings = drop_off_ranges.machinegun_shotgun_dropoff_ranges
		}
	},
	shot_sniper_pistol_vs = {
		charge_value = "instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1.4,
				0.8,
				1,
				0.75,
				0.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				0.5,
				1,
				1,
				1
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				1.2,
				0.8,
				1,
				0.75,
				0
			},
			impact = {
				1,
				1,
				0.5,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				1,
				0.5,
				1,
				0.75,
				0
			},
			impact = {
				1,
				1,
				0.5,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			headshot_boost_boss = 0.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "shot_sniper",
			power_distribution_near = {
				attack = 1,
				impact = 0.5
			},
			power_distribution_far = {
				attack = 0.5,
				impact = 0.5
			},
			range_modifier_settings = shotgun_dropoff_ranges
		}
	},
	dr_deus_01_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				2,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				1,
				2,
				1,
				1,
				1
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.75,
				1,
				1,
				0.75,
				0.8
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.8
			}
		},
		cleave_distribution = {
			attack = 0.3,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 2.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "bolt_sniper",
			power_distribution_near = {
				attack = 0.7,
				impact = 0.4
			},
			power_distribution_far = {
				attack = 0.6,
				impact = 0.3
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	},
	dr_deus_01_explosion_vs = {
		charge_value = "projectile",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				1,
				2,
				1,
				0.5
			},
			impact = {
				1,
				1,
				100,
				1,
				0.5
			}
		},
		default_target = {
			damage_type = "drakegun",
			attack_template = "drakegun",
			power_distribution = {
				attack = 1,
				impact = 2
			}
		}
	},
	dr_deus_01_glance_vs = {
		charge_value = "projectile",
		is_explosion = true,
		no_stagger_damage_reduction_ranged = true,
		armor_modifier = {
			attack = {
				1,
				1,
				2,
				1,
				0.5
			},
			impact = {
				1,
				1,
				100,
				1,
				0.5
			}
		},
		default_target = {
			damage_type = "grenade_glance",
			attack_template = "drakegun_glance",
			power_distribution = {
				attack = 0.5,
				impact = 1
			}
		}
	},
	thrown_javelin_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				1.3,
				1,
				0.75,
				0.5
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				0.75
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.63,
				1.1,
				1,
				0.75,
				0.2
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.75
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.63,
				1.1,
				1,
				0.75,
				0.2
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.15
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 1,
			attack_template = "projectile_javelin",
			power_distribution_near = {
				attack = 0.95,
				impact = 0.85
			},
			power_distribution_far = {
				attack = 0.6875,
				impact = 0.4
			},
			range_modifier_settings = {
				dropoff_start = 15,
				dropoff_end = 30
			}
		}
	},
	staff_fireball_vs = {
		charge_value = "projectile",
		require_damage_for_dot = true,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.65,
				1.5,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.6,
				0,
				0,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.65,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.6,
				0,
				0,
				0.5,
				0
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.15
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "fireball",
			power_distribution_near = {
				attack = 0.45,
				impact = 0.45
			},
			power_distribution_far = {
				attack = 0.25,
				impact = 0.25
			},
			range_modifier_settings = drop_off_ranges.carbine_dropoff_ranges
		}
	},
	beam_vs = {
		charge_value = "projectile",
		ignore_stagger_reduction = true,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.8,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			dot_template_name = "beam_burning_dot",
			boost_curve_coefficient_headshot = 2,
			dot_balefire_variant = true,
			boost_curve_coefficient = 0.75,
			attack_template = "wizard_staff_beam",
			boost_curve_type = "linesman_curve",
			power_distribution_near = {
				attack = 0.075,
				impact = 0.065
			},
			power_distribution_far = {
				attack = 0.025,
				impact = 0.05
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	},
	beam_initial_vs = {
		charge_value = "projectile",
		no_procs = true,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.1,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.2,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.1,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.2,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "wizard_staff_beam",
			power_distribution_near = {
				attack = 0.05,
				impact = 0.065
			},
			power_distribution_far = {
				attack = 0.025,
				impact = 0.05
			},
			range_modifier_settings = carbine_dropoff_ranges
		}
	},
	blast_vs = {
		charge_value = "projectile",
		dot_balefire_variant = true,
		no_stagger_damage_reduction_ranged = true,
		dot_template_name = "burning_dot_1tick",
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.2,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.8,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				0,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0.25,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.05,
			impact = 0.05
		},
		default_target = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "flame_blast",
			power_distribution_near = {
				attack = 0.1,
				impact = 0.275
			},
			power_distribution_far = {
				attack = 0.05,
				impact = 0.15
			},
			range_modifier_settings = carbine_dropoff_ranges
		}
	},
	beam_shot_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.8,
				1.5,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.8,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.8,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.5,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.15,
			impact = 0.05
		},
		default_target = {
			dot_template_name = "burning_dot_3tick",
			boost_curve_coefficient_headshot = 1,
			dot_balefire_variant = true,
			boost_curve_coefficient = 0.75,
			attack_template = "wizard_staff_beam_sniper",
			boost_curve_type = "ninja_curve",
			power_distribution_near = {
				attack = 0.7,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.5,
				impact = 0.2
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	},
	flamethrower_spray_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				1.5,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				2,
				1.5,
				2,
				1,
				1,
				0
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				1.5,
				1,
				1,
				0
			},
			impact = {
				2,
				1.5,
				2,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			boost_curve_coefficient_headshot = 0,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.5,
			attack_template = "wizard_staff_beam",
			power_distribution_near = {
				attack = 0.15,
				impact = 0.3
			},
			power_distribution_far = {
				attack = 0.1,
				impact = 0.25
			},
			range_modifier_settings = flamethrower_dropoff_ranges
		}
	},
	flamethrower_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.25,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				2,
				0.75,
				2,
				1,
				1,
				0
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.25,
				1.5,
				1,
				0.5,
				0
			},
			impact = {
				2,
				0.6,
				2,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			dot_template_name = "burning_flamethrower_dot",
			boost_curve_coefficient_headshot = 0,
			dot_balefire_variant = true,
			boost_curve_coefficient = 1,
			attack_template = "wizard_staff_beam",
			boost_curve_type = "linesman_curve",
			power_distribution_near = {
				attack = 0.075,
				impact = 0.1
			},
			power_distribution_far = {
				attack = 0.05,
				impact = 0.05
			},
			range_modifier_settings = flamethrower_dropoff_ranges
		}
	},
	flamethrower_initial_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact_armor_power_modifer = {
				2,
				1.5,
				2,
				1,
				1,
				0
			}
		},
		armor_modifier = {
			attack = {
				0.5,
				0,
				1,
				0.25,
				0.25,
				0
			},
			impact = {
				2,
				0.65,
				2,
				1,
				0.5,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			dot_template_name = "burning_flamethrower_dot",
			boost_curve_coefficient_headshot = 0,
			dot_balefire_variant = true,
			boost_curve_coefficient = 1,
			attack_template = "wizard_staff_beam",
			boost_curve_type = "linesman_curve",
			power_distribution_near = {
				attack = 0.1,
				impact = 0.2
			},
			power_distribution_far = {
				attack = 0.075,
				impact = 0.1
			},
			range_modifier_settings = flamethrower_dropoff_ranges
		}
	},
	geiser_vs = {
		dot_template_name = "burning_dot_1tick",
		charge_value = "aoe",
		dot_balefire_variant = true,
		no_stagger_damage_reduction_ranged = true,
		attack_template = "wizard_staff_geiser",
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				1.5,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier = {
			attack = {
				1,
				0.5,
				1,
				1,
				1,
				0
			},
			impact = {
				1,
				1.5,
				1,
				1,
				1,
				0.5
			}
		},
		cleave_distribution = {
			attack = 0.2,
			impact = 0.2
		},
		target_radius = {
			0.3,
			0.8
		},
		default_target = {
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 1,
			attack_template = "wizard_staff_geiser",
			power_distribution = {
				attack = 0.062,
				impact = 0.259
			}
		},
		targets = {
			{
				boost_curve_type = "ninja_curve",
				boost_curve_coefficient = 1,
				attack_template = "wizard_staff_geiser",
				power_distribution = {
					attack = 0.372,
					impact = 1.036
				}
			},
			{
				boost_curve_type = "ninja_curve",
				boost_curve_coefficient = 1,
				attack_template = "wizard_staff_geiser",
				power_distribution = {
					attack = 0.155,
					impact = 0.518
				}
			}
		}
	},
	staff_fireball_charged_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1,
				4,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.8,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier = {
			attack = {
				1,
				1,
				4,
				1,
				0.1,
				0
			},
			impact = {
				1,
				0.5,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 1,
			impact = 1
		},
		default_target = {
			dot_template_name = "burning_dot_1tick",
			dot_balefire_variant = true,
			boost_curve_type = "ninja_curve",
			boost_curve_coefficient = 1,
			attack_template = "fireball",
			power_distribution_near = {
				attack = 0.3,
				impact = 0.5
			},
			power_distribution_far = {
				attack = 0.3,
				impact = 0.25
			},
			range_modifier_settings = shotgun_dropoff_ranges
		}
	},
	fire_spark_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.25,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				2,
				0.25,
				2,
				1,
				1,
				0.25
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact = {
				2,
				0.25,
				2,
				1,
				1,
				0
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.25,
				1,
				1,
				1,
				0
			},
			impact = {
				1.5,
				0.25,
				1.5,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "wizard_staff_spark",
			power_distribution_near = {
				attack = 0.125,
				impact = 0.125
			},
			power_distribution_far = {
				attack = 0.05,
				impact = 0.05
			},
			range_modifier_settings = machinegun_dropoff_ranges
		}
	},
	thorn_sister_poison_vs = {
		deal_min_damage = true,
		is_dot = true,
		charge_value = "n/a",
		no_stagger_damage_reduction_ranged = true,
		no_stagger = true,
		cleave_distribution = {
			attack = 0.25,
			impact = 0.25
		},
		armor_modifier = {
			attack = {
				0.8,
				0.8,
				0.8,
				0.8,
				0.5,
				0.2
			},
			impact = {
				1,
				1,
				1,
				1,
				0.5,
				0
			}
		},
		default_target = {
			attack_template = "arrow_poison_aoe",
			damage_type = "arrow_poison_dot",
			power_distribution = {
				attack = 0.005,
				impact = 0
			}
		}
	},
	burst_thorn_vs = {
		charge_value = "projectile",
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.5,
				1.5,
				1,
				0.5,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.5,
				1,
				1,
				1,
				0.5
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.3,
				1,
				0.5,
				1.2,
				0
			},
			impact = {
				1,
				0.4,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0,
				1.5,
				0.5,
				1,
				0
			},
			impact = {
				1,
				0.25,
				1,
				1,
				1,
				0.25
			}
		},
		cleave_distribution = {
			attack = 0.1,
			impact = 0.1
		},
		default_target = {
			boost_curve_coefficient_headshot = 1.5,
			boost_curve_type = "smiter_curve",
			boost_curve_coefficient = 0.25,
			attack_template = "bolt_carbine",
			power_distribution_near = {
				attack = 0.15,
				impact = 0.12
			},
			power_distribution_far = {
				attack = 0.125,
				impact = 0.1
			},
			range_modifier_settings = drop_off_ranges.carbine_dropoff_ranges
		}
	},
	staff_suck_damage_vs = {
		charge_value = "projectile",
		no_procs = true,
		no_stagger_damage_reduction_ranged = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				0.1,
				1,
				1,
				1,
				0.25
			},
			impact_armor_power_modifer = {
				1,
				0.2,
				1,
				1,
				1,
				0.25
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				0.1,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.2,
				1,
				1,
				1,
				0
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				0.5,
				1.5,
				1,
				1,
				0
			},
			impact = {
				1,
				0.8,
				1,
				1,
				1,
				0
			}
		},
		cleave_distribution = {
			attack = 0.01,
			impact = 0.01
		},
		default_target = {
			boost_curve_coefficient_headshot = 2,
			boost_curve_type = "linesman_curve",
			boost_curve_coefficient = 0.75,
			attack_template = "wizard_staff_beam",
			power_distribution_near = {
				attack = 0.01,
				impact = 0.065
			},
			power_distribution_far = {
				attack = 0.01,
				impact = 0.05
			},
			range_modifier_settings = carbine_dropoff_ranges
		}
	},
	soul_rip_vs = {
		charge_value = "heavy_instant_projectile",
		no_stagger_damage_reduction_ranged = true,
		shield_break = true,
		critical_strike = {
			attack_armor_power_modifer = {
				1,
				1.4,
				3,
				1,
				1,
				1
			},
			impact_armor_power_modifer = {
				1,
				1,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_near = {
			attack = {
				1,
				1,
				2.5,
				1,
				0.75,
				0.7
			},
			impact = {
				1,
				1.2,
				1,
				1,
				1,
				1
			}
		},
		armor_modifier_far = {
			attack = {
				1,
				1,
				2.5,
				1,
				0.75,
				0.7
			},
			impact = {
				1,
				1,
				1,
				1,
				1,
				0.75
			}
		},
		cleave_distribution = {
			attack = 0.35,
			impact = 0.3
		},
		default_target = {
			boost_curve_coefficient_headshot = 1,
			impact_player_target_power_modifier = 1.5,
			boost_curve_coefficient = 1,
			attack_template = "shot_sniper",
			attack_player_target_power_modifier = 0.5,
			boost_curve_type = "smiter_curve",
			headshot_boost_boss = 0.5,
			power_distribution_near = {
				attack = 1,
				impact = 0.6
			},
			power_distribution_far = {
				attack = 1,
				impact = 0.5
			},
			range_modifier_settings = sniper_dropoff_ranges
		}
	}
}

damage_templates.bile_troll_sweep = table.clone(damage_templates.playable_boss_melee_frenzy_light_vs)
damage_templates.bile_troll_shove = table.clone(damage_templates.playable_boss_melee_frenzy_light_vs)
damage_templates.bile_troll_smiter = table.clone(damage_templates.playable_boss_melee_scrambler_heavy_vs)
damage_templates.rat_ogre_light_1 = table.clone(damage_templates.playable_boss_melee_frenzy_light_vs)
damage_templates.rat_ogre_light_2 = table.clone(damage_templates.playable_boss_melee_scrambler_light_vs)
damage_templates.rat_ogre_slam = table.clone(damage_templates.playable_boss_melee_frenzy_slam_vs)

return damage_templates
