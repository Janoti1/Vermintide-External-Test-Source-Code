local horde_ability_settings = {
	save_charges_between_rounds = true,
	max_num_horde_units_per_player = 32,
	cooldown = 300,
	horde_units_batch_sync_interval = 1,
	max_score_difference_modifier = 200,
	recharge_boosts_on_downed_units = false,
	team_size_difference_recharge_modifier = {
		[0] = 1,
		1.3,
		1.75,
		2.5
	},
	score_difference_recharge_modifier = {
		[200] = {
			boost_mod = 0.25,
			cooldown_mod = 0
		},
		[190] = {
			boost_mod = 0.3,
			cooldown_mod = 0
		},
		[180] = {
			boost_mod = 0.35,
			cooldown_mod = 0
		},
		[170] = {
			boost_mod = 0.4,
			cooldown_mod = 0
		},
		[160] = {
			boost_mod = 0.45,
			cooldown_mod = 0
		},
		[150] = {
			boost_mod = 0.5,
			cooldown_mod = 0
		},
		[140] = {
			boost_mod = 0.55,
			cooldown_mod = 0.1
		},
		[130] = {
			boost_mod = 0.6,
			cooldown_mod = 0.2
		},
		[120] = {
			boost_mod = 0.65,
			cooldown_mod = 0.3
		},
		[110] = {
			boost_mod = 0.7,
			cooldown_mod = 0.4
		},
		[100] = {
			boost_mod = 0.75,
			cooldown_mod = 0.5
		},
		[90] = {
			boost_mod = 0.775,
			cooldown_mod = 0.55
		},
		[80] = {
			boost_mod = 0.8,
			cooldown_mod = 0.6
		},
		[70] = {
			boost_mod = 0.825,
			cooldown_mod = 0.65
		},
		[60] = {
			boost_mod = 0.85,
			cooldown_mod = 0.7
		},
		[50] = {
			boost_mod = 0.875,
			cooldown_mod = 0.75
		},
		[40] = {
			boost_mod = 0.9,
			cooldown_mod = 0.8
		},
		[30] = {
			boost_mod = 0.925,
			cooldown_mod = 0.85
		},
		[20] = {
			boost_mod = 0.95,
			cooldown_mod = 0.9
		},
		[10] = {
			boost_mod = 0.975,
			cooldown_mod = 0.95
		},
		[0] = {
			boost_mod = 1,
			cooldown_mod = 1
		},
		[-10] = {
			boost_mod = 1.025,
			cooldown_mod = 1.05
		},
		[-20] = {
			boost_mod = 1.05,
			cooldown_mod = 1.1
		},
		[-30] = {
			boost_mod = 1.075,
			cooldown_mod = 1.15
		},
		[-40] = {
			boost_mod = 1.1,
			cooldown_mod = 1.2
		},
		[-50] = {
			boost_mod = 1.125,
			cooldown_mod = 1.25
		},
		[-60] = {
			boost_mod = 1.15,
			cooldown_mod = 1.3
		},
		[-70] = {
			boost_mod = 1.175,
			cooldown_mod = 1.35
		},
		[-80] = {
			boost_mod = 1.2,
			cooldown_mod = 1.4
		},
		[-90] = {
			boost_mod = 1.225,
			cooldown_mod = 1.45
		},
		[-100] = {
			boost_mod = 1.25,
			cooldown_mod = 1.5
		},
		[-110] = {
			boost_mod = 1.275,
			cooldown_mod = 1.55
		},
		[-120] = {
			boost_mod = 1.3,
			cooldown_mod = 1.6
		},
		[-130] = {
			boost_mod = 1.325,
			cooldown_mod = 1.65
		},
		[-140] = {
			boost_mod = 1.35,
			cooldown_mod = 1.7
		},
		[-150] = {
			boost_mod = 1.375,
			cooldown_mod = 1.75
		},
		[-160] = {
			boost_mod = 1.4,
			cooldown_mod = 1.8
		},
		[-170] = {
			boost_mod = 1.425,
			cooldown_mod = 1.85
		},
		[-180] = {
			boost_mod = 1.45,
			cooldown_mod = 1.9
		},
		[-190] = {
			boost_mod = 1.475,
			cooldown_mod = 1.95
		},
		[-200] = {
			boost_mod = 1.5,
			cooldown_mod = 2
		}
	},
	compositions_per_faction = {
		chaos = "versus_horde_ability_chaos",
		skaven = "versus_horde_ability_skaven",
		beastmen = "versus_horde_ability_beastmen"
	},
	recharge_boosts = {
		actions = {
			gutter_runner_pinned = 6,
			pack_master_hoist = 24,
			hero_downed = 10,
			pack_master_grab = 6
		},
		damage_sources = {
			vs_warpfire_thrower = 0.15,
			vs_gutter_runner = 1.2,
			vs_poison_wind_globadier = 1,
			vs_ratling_gunner_gun = 0.15,
			vs_chaos_troll_axe = 0.4,
			vomit_face = 1.4,
			vs_packmaster = 1.2
		}
	}
}

return horde_ability_settings
