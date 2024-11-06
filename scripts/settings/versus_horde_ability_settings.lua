local horde_ability_settings = {
	save_charges_between_rounds = true,
	enable_activation_in_ghost_mode = true,
	horde_units_batch_sync_interval = 1,
	max_score_difference_modifier = 200,
	cooldown = 300,
	recharge_boosts_on_downed_units = false,
	max_num_horde_units_per_player = 32,
	team_size_difference_recharge_modifier = {
		[0] = 1,
		1.3,
		1.75,
		2.5
	},
	score_difference_recharge_modifier = {
		[200] = {
			boost_mod = 1,
			cooldown_mod = 0.2
		},
		[150] = {
			boost_mod = 1,
			cooldown_mod = 0.4
		},
		[100] = {
			boost_mod = 1,
			cooldown_mod = 0.6
		},
		[50] = {
			boost_mod = 1,
			cooldown_mod = 0.8
		},
		[0] = {
			boost_mod = 1,
			cooldown_mod = 1
		},
		[-50] = {
			boost_mod = 1.125,
			cooldown_mod = 1.25
		},
		[-100] = {
			boost_mod = 1.25,
			cooldown_mod = 1.5
		},
		[-150] = {
			boost_mod = 1.375,
			cooldown_mod = 1.75
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
