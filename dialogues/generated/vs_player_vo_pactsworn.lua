return function ()
	define_rule({
		name = "ebt_vs_low_on_health",
		response = "ebt_vs_low_on_health",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"health_trigger"
			},
			{
				"query_context",
				"current_amount",
				OP.LTEQ,
				0.6
			},
			{
				"query_context",
				"current_amount",
				OP.GTEQ,
				0.1
			},
			{
				"query_context",
				"trigger_type",
				OP.EQ,
				"decreasing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_memory",
				"low_health",
				OP.TIMEDIFF,
				OP.GT,
				30
			}
		},
		on_done = {
			{
				"user_memory",
				"low_health",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ebt_vs_spawning_troll",
		response = "ebt_vs_spawning_troll",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_chaos_troll"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_spawning_gutter_runner",
		response = "egt_spawning_gutter_runner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_bardin",
		response = "egt_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_kerillian",
		response = "egt_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_kruber",
		response = "egt_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_saltzpyre",
		response = "egt_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_taunting_sienna",
		response = "egt_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "egt_vs_ability_horde_a",
		name = "egt_vs_ability_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		response = "egt_vs_downed_hero_a",
		name = "egt_vs_downed_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		name = "egt_vs_globadier_hitting_many_a",
		response = "egt_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_globadier_missing_globe_a",
		response = "egt_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "egt_vs_heroes_objective_almost_completed_b",
		name = "egt_vs_heroes_objective_almost_completed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		response = "egt_vs_many_heroes_incapacitated_a",
		name = "egt_vs_many_heroes_incapacitated_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_eight_b",
		response = "egt_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_eighteen_b",
		response = "egt_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_eleven_b",
		response = "egt_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_fifteen_a",
		response = "egt_vs_pact_proximity_banter_fifteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fifteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fifteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_five_a",
		response = "egt_vs_pact_proximity_banter_five_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_five",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_five",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_four_b",
		response = "egt_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_fourteen_b",
		response = "egt_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_nine_b",
		response = "egt_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_nineteen_b",
		response = "egt_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_one_b",
		response = "egt_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_seven_b",
		response = "egt_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_seventeen_b",
		response = "egt_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_six_b",
		response = "egt_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_sixteen_b",
		response = "egt_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_ten_a",
		response = "egt_vs_pact_proximity_banter_ten_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_ten",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_ten",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_thirteen_b",
		response = "egt_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_three_b",
		response = "egt_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_twelve_b",
		response = "egt_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_twenty_a",
		response = "egt_vs_pact_proximity_banter_twenty_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twenty",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twenty",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_pact_proximity_banter_two_b",
		response = "egt_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vs_passing_hoisted_hero_a",
		response = "egt_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "egt_vs_vw_cheer_a",
		response = "egt_vs_vw_cheer_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cheer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "egt_vs_vw_thanks_a",
		name = "egt_vs_vw_thanks_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you_AAAATEMP123"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			}
		}
	})
	define_rule({
		name = "egt_vw_affirmative",
		response = "egt_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_ambush",
		response = "egt_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_attack_now",
		response = "egt_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_cover_me",
		response = "egt_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_gather",
		response = "egt_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_go_here",
		response = "egt_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_negation",
		response = "egt_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_thanks",
		response = "egt_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "egt_vw_wait",
		response = "egt_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_gutter_runner"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_spawning_globadier",
		response = "epg_spawning_globadier",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_bardin",
		response = "epg_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_kerillian",
		response = "epg_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_kruber",
		response = "epg_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_saltzpyre",
		response = "epg_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_taunting_sienna",
		response = "epg_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_versus_throwing_globe",
		response = "epg_versus_throwing_globe",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"activate_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMEDIFF,
				OP.GT,
				20
			}
		},
		on_done = {
			{
				"user_memory",
				"last_threw_globe",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epg_vs_ability_explosion_a",
		name = "epg_vs_ability_explosion_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_ability"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		response = "epg_vs_ability_horde_a",
		name = "epg_vs_ability_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		response = "epg_vs_downed_hero_a",
		name = "epg_vs_downed_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		name = "epg_vs_globadier_hitting_many_a",
		response = "epg_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_globadier_missing_globe_a",
		response = "epg_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_globe_on_disabled_hero_a",
		response = "epg_vs_globe_on_disabled_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globe_on_disabled_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"vs_globe_on_disabled_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globe_on_disabled_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "epg_vs_heroes_objective_almost_completed_b",
		name = "epg_vs_heroes_objective_almost_completed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		response = "epg_vs_many_heroes_incapacitated_a",
		name = "epg_vs_many_heroes_incapacitated_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_eight_b",
		response = "epg_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_eighteen_b",
		response = "epg_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_eleven_a",
		response = "epg_vs_pact_proximity_banter_eleven_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eleven",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eleven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_fifteen_b",
		response = "epg_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_five_b",
		response = "epg_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_four_b",
		response = "epg_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_fourteen_b",
		response = "epg_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_nine_b",
		response = "epg_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_nineteen_b",
		response = "epg_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_one_a",
		response = "epg_vs_pact_proximity_banter_one_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_one",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				160
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_one",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_seven_b",
		response = "epg_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_seventeen_b",
		response = "epg_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_six_a",
		response = "epg_vs_pact_proximity_banter_six_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_six",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_six",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_sixteen_a",
		response = "epg_vs_pact_proximity_banter_sixteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_sixteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_sixteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_ten_b",
		response = "epg_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_thirteen_b",
		response = "epg_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_three_b",
		response = "epg_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_twelve_b",
		response = "epg_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_twenty_b",
		response = "epg_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_pact_proximity_banter_two_b",
		response = "epg_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vs_passing_hoisted_hero_a",
		response = "epg_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "epg_vs_vw_cheer_a",
		response = "epg_vs_vw_cheer_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_vw_cheer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_affirmative",
		response = "epg_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_ambush",
		response = "epg_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_attack_now",
		response = "epg_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_cover_me",
		response = "epg_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_gather",
		response = "epg_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_go_here",
		response = "epg_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_negation",
		response = "epg_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_thanks",
		response = "epg_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epg_vw_wait",
		response = "epg_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_poison_wind_globadier"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_grab_walk",
		response = "epm_packmaster_grab_walk",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"walking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_grab_walk",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_grab_walk",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_hook_fail",
		response = "epm_packmaster_hook_fail",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hook_fail"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_hook_fail",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_hook_fail",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_hook_success",
		response = "epm_packmaster_hook_success",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"hook_success"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_hook_success",
				OP.TIMEDIFF,
				OP.GT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_hook_success",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_packmaster_skulking",
		response = "epm_packmaster_skulking",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"skulking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_skulking",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_skulking",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_spawning_packmaster",
		response = "epm_spawning_packmaster",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_bardin",
		response = "epm_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_kerillian",
		response = "epm_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_kruber",
		response = "epm_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_saltzpyre",
		response = "epm_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_taunting_sienna",
		response = "epm_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epm_vs_ability_horde_a",
		name = "epm_vs_ability_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_downed_hero_a",
		name = "epm_vs_downed_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		name = "epm_vs_globadier_hitting_many_a",
		response = "epm_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_globadier_missing_globe_a",
		response = "epm_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "epm_vs_heroes_objective_almost_completed_b",
		name = "epm_vs_heroes_objective_almost_completed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_hook_success_a",
		name = "epm_vs_hook_success_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_hook_successTEMP"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_many_heroes_incapacitated_a",
		name = "epm_vs_many_heroes_incapacitated_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		response = "epm_vs_packmaster_hoisted_player_a",
		name = "epm_vs_packmaster_hoisted_player_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_packmaster_hoisted_player"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_eight_b",
		response = "epm_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_eighteen_b",
		response = "epm_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_eleven_b",
		response = "epm_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_fifteen_b",
		response = "epm_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_five_b",
		response = "epm_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_four_b",
		response = "epm_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_fourteen_b",
		response = "epm_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_nine_b",
		response = "epm_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_nineteen_b",
		response = "epm_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_one_b",
		response = "epm_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_seven_a",
		response = "epm_vs_pact_proximity_banter_seven_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seven",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_seventeen_a",
		response = "epm_vs_pact_proximity_banter_seventeen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seventeen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_seventeen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_six_b",
		response = "epm_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_sixteen_b",
		response = "epm_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_ten_b",
		response = "epm_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_thirteen_b",
		response = "epm_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_three_b",
		response = "epm_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_twelve_a",
		response = "epm_vs_pact_proximity_banter_twelve_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twelve",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_twelve",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_twenty_b",
		response = "epm_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_pact_proximity_banter_two_a",
		response = "epm_vs_pact_proximity_banter_two_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_two",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_two",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vs_passing_hoisted_hero_a",
		response = "epm_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "epm_vs_vw_cheer_a",
		response = "epm_vs_vw_cheer_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_vw_cheer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_affirmative",
		response = "epm_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_ambush",
		response = "epm_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_attack_now",
		response = "epm_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_cover_me",
		response = "epm_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_gather",
		response = "epm_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_go_here",
		response = "epm_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_negation",
		response = "epm_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_thanks",
		response = "epm_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "epm_vw_wait",
		response = "epm_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_packmaster"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_spawning_ratling_gunner",
		response = "erg_spawning_ratling_gunner",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_bardin",
		response = "erg_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_kerillian",
		response = "erg_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_kruber",
		response = "erg_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_saltzpyre",
		response = "erg_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_taunting_sienna",
		response = "erg_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "erg_vs_ability_horde_a",
		name = "erg_vs_ability_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		response = "erg_vs_downed_hero_a",
		name = "erg_vs_downed_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		name = "erg_vs_globadier_hitting_many_a",
		response = "erg_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_globadier_missing_globe_a",
		response = "erg_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "erg_vs_heroes_objective_almost_completed_b",
		name = "erg_vs_heroes_objective_almost_completed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		response = "erg_vs_many_heroes_incapacitated_a",
		name = "erg_vs_many_heroes_incapacitated_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_eight_b",
		response = "erg_vs_pact_proximity_banter_eight_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eight_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_eighteen_b",
		response = "erg_vs_pact_proximity_banter_eighteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eighteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_eleven_b",
		response = "erg_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_fifteen_b",
		response = "erg_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_five_b",
		response = "erg_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_four_a",
		response = "erg_vs_pact_proximity_banter_four_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_four",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_four",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_fourteen_a",
		response = "erg_vs_pact_proximity_banter_fourteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fourteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_fourteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_nine_a",
		response = "erg_vs_pact_proximity_banter_nine_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nine",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nine",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_nineteen_a",
		response = "erg_vs_pact_proximity_banter_nineteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nineteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_nineteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_one_b",
		response = "erg_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_seven_b",
		response = "erg_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_seventeen_b",
		response = "erg_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_six_b",
		response = "erg_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_sixteen_b",
		response = "erg_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_ten_b",
		response = "erg_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_thirteen_b",
		response = "erg_vs_pact_proximity_banter_thirteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_thirteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_three_b",
		response = "erg_vs_pact_proximity_banter_three_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_three_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_twelve_b",
		response = "erg_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_twenty_b",
		response = "erg_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_pact_proximity_banter_two_b",
		response = "erg_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_passing_hoisted_hero_a",
		response = "erg_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "erg_vs_ratling_hitting_shield_a",
		response = "erg_vs_ratling_hitting_shield_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ratling_hitting_shield"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_time_since_hit_shield",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_time_since_hit_shield",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vs_shooting_hooked_hero_a",
		response = "erg_vs_shooting_hooked_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_shooting_hooked_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "erg_vs_vw_cheer_a",
		response = "erg_vs_vw_cheer_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_vw_cheer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_affirmative",
		response = "erg_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_ambush",
		response = "erg_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_attack_now",
		response = "erg_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_cover_me",
		response = "erg_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_gather",
		response = "erg_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_go_here",
		response = "erg_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_negation",
		response = "erg_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_thanks",
		response = "erg_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "erg_vw_wait",
		response = "erg_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_ratling_gunner"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_spawning_warpfire_thrower",
		response = "ewt_spawning_warpfire_thrower",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"spawning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_spawning",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_bardin",
		response = "ewt_taunting_bardin",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ranger",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_ironbreaker",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_slayer",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_dr_engineer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_kerillian",
		response = "ewt_taunting_kerillian",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_waywatcher",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_maidenguard",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_shade",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_we_thornsister"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_kruber",
		response = "ewt_taunting_kruber",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_mercenary",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_huntsman",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_knight",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_es_questingknight"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_saltzpyre",
		response = "ewt_taunting_saltzpyre",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_captain",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_bountyhunter",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_zealot",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_wh_priest"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_taunting_sienna",
		response = "ewt_taunting_sienna",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_enemy"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_scholar",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_adept",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_unchained",
				CombiningOP.OR_NEXT
			},
			{
				"query_context",
				"enemy_tag",
				OP.EQ,
				"hero_bw_necromancer"
			},
			{
				"user_context",
				"is_in_ghost_mode",
				OP.EQ,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_taunting",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ewt_vs_ability_horde_a",
		name = "ewt_vs_ability_horde_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_ability_horde"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		response = "ewt_vs_downed_hero_a",
		name = "ewt_vs_downed_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_downed_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		name = "ewt_vs_globadier_hitting_many_a",
		response = "ewt_vs_globadier_hitting_many_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_hitting_many"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_globadier_missing_globe_a",
		response = "ewt_vs_globadier_missing_globe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_globadier_missing_globe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMEDIFF,
				OP.GT,
				60
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_globadier_globe_thrown",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_globe_thrown",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "ewt_vs_heroes_objective_almost_completed_b",
		name = "ewt_vs_heroes_objective_almost_completed_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_heroes_objective_almost_completed_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		response = "ewt_vs_many_heroes_incapacitated_a",
		name = "ewt_vs_many_heroes_incapacitated_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_many_heroes_incapacitated"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_eight_a",
		response = "ewt_vs_pact_proximity_banter_eight_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eight",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eight",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_eighteen_a",
		response = "ewt_vs_pact_proximity_banter_eighteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eighteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_eighteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_eleven_b",
		response = "ewt_vs_pact_proximity_banter_eleven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_eleven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_fifteen_b",
		response = "ewt_vs_pact_proximity_banter_fifteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fifteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_five_b",
		response = "ewt_vs_pact_proximity_banter_five_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_five_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_four_b",
		response = "ewt_vs_pact_proximity_banter_four_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_four_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_fourteen_b",
		response = "ewt_vs_pact_proximity_banter_fourteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_fourteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_nine_b",
		response = "ewt_vs_pact_proximity_banter_nine_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nine_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_nineteen_b",
		response = "ewt_vs_pact_proximity_banter_nineteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_nineteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_one_b",
		response = "ewt_vs_pact_proximity_banter_one_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_one_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_seven_b",
		response = "ewt_vs_pact_proximity_banter_seven_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seven_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_seventeen_b",
		response = "ewt_vs_pact_proximity_banter_seventeen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_seventeen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_six_b",
		response = "ewt_vs_pact_proximity_banter_six_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_six_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_sixteen_b",
		response = "ewt_vs_pact_proximity_banter_sixteen_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_sixteen_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_ten_b",
		response = "ewt_vs_pact_proximity_banter_ten_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_ten_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_thirteen_a",
		response = "ewt_vs_pact_proximity_banter_thirteen_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_thirteen",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_thirteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_three_a",
		response = "ewt_vs_pact_proximity_banter_three_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"friends_close"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			},
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.LT,
				5
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_three",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMEDIFF,
				OP.GT,
				140
			}
		},
		on_done = {
			{
				"faction_memory",
				"pact_proximity_banter_master_limit",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"vs_pact_proximity_banter_three",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_twelve_b",
		response = "ewt_vs_pact_proximity_banter_twelve_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twelve_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_twenty_b",
		response = "ewt_vs_pact_proximity_banter_twenty_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_twenty_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_pact_proximity_banter_two_b",
		response = "ewt_vs_pact_proximity_banter_two_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"vs_pact_proximity_banter_two_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"friends_close",
				OP.GTEQ,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_pact_banter",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vs_passing_hoisted_hero_a",
		response = "ewt_vs_passing_hoisted_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_passing_hoisted_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_passing_hoisted_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "ewt_vs_shooting_hooked_hero_a",
		response = "ewt_vs_shooting_hooked_hero_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_shooting_hooked_hero"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"vs_shooting_hooked_hero",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "ewt_vs_vw_cheer_a",
		response = "ewt_vs_vw_cheer_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_vw_cheer"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cheer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_affirmative",
		response = "ewt_vw_affirmative",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_affirmative"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_affirmative",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_ambush",
		response = "ewt_vw_ambush",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_ambush"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_ambush",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_attack_now",
		response = "ewt_vw_attack_now",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_attack_now"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_attack_now",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_cover_me",
		response = "ewt_vw_cover_me",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_cover_me"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_cover_me",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_gather",
		response = "ewt_vw_gather",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_gather"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_gather",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_go_here",
		response = "ewt_vw_go_here",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_go_here"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_go_here",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_negation",
		response = "ewt_vw_negation",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_negation"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_negation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_thanks",
		response = "ewt_vw_thanks",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_thank_you"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_thanks",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_vw_wait",
		response = "ewt_vw_wait",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vw_wait"
			},
			{
				"query_context",
				"is_ping",
				OP.EQ,
				1
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMEDIFF,
				OP.GT,
				5
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_vw_wait",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "ewt_walking",
		response = "ewt_walking",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"walking"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"vs_warpfire_thrower"
			},
			{
				"user_memory",
				"time_since_walk_warpfire_thrower",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_walk_warpfire_thrower",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		ebt_vs_low_on_health = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_feedback",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ebt_vs_low_on_health_a_01",
				"ebt_vs_low_on_health_a_02",
				"ebt_vs_low_on_health_a_03",
				"ebt_vs_low_on_health_a_04",
				"ebt_vs_low_on_health_a_05",
				"ebt_vs_low_on_health_a_06",
				"ebt_vs_low_on_health_a_07",
				"ebt_vs_low_on_health_a_08",
				"ebt_vs_low_on_health_a_09",
				"ebt_vs_low_on_health_a_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ebt_vs_low_on_health_a_01",
				"ebt_vs_low_on_health_a_02",
				"ebt_vs_low_on_health_a_03",
				"ebt_vs_low_on_health_a_04",
				"ebt_vs_low_on_health_a_05",
				"ebt_vs_low_on_health_a_06",
				"ebt_vs_low_on_health_a_07",
				"ebt_vs_low_on_health_a_08",
				"ebt_vs_low_on_health_a_09",
				"ebt_vs_low_on_health_a_10"
			},
			sound_events_duration = {
				5.004903793335,
				4.5246138572693,
				3.8493828773499,
				3.4567,
				3.3196513652802,
				0.63567793369293,
				0.63567793369293,
				0.74162417650223,
				0.60036242008209,
				0.74162417650223
			}
		},
		ebt_vs_spawning_troll = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ebt_vs_spawning_a_01",
				"ebt_vs_spawning_a_02",
				"ebt_vs_spawning_a_03",
				"ebt_vs_spawning_a_04",
				"ebt_vs_spawning_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"ebt_vs_spawning_a_01",
				"ebt_vs_spawning_a_02",
				"ebt_vs_spawning_a_03",
				"ebt_vs_spawning_a_04",
				"ebt_vs_spawning_a_05"
			},
			sound_events_duration = {
				2.847836971283,
				7.5264263153076,
				5.0628209114075,
				5.6730718612671,
				10.238651275635
			}
		},
		egt_spawning_gutter_runner = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_spawning_gutter_runner_01",
				"egt_spawning_gutter_runner_02",
				"egt_spawning_gutter_runner_03",
				"egt_spawning_gutter_runner_04",
				"egt_spawning_gutter_runner_05"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_spawning_gutter_runner_01",
				"egt_spawning_gutter_runner_02",
				"egt_spawning_gutter_runner_03",
				"egt_spawning_gutter_runner_04",
				"egt_spawning_gutter_runner_05"
			},
			sound_events_duration = {
				3.6960201263428,
				3.8597495555878,
				3.5872640609741,
				3.0923001766205,
				2.9253997802734
			}
		},
		egt_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_bardin_01",
				"egt_taunting_bardin_02",
				"egt_taunting_bardin_03",
				"egt_taunting_bardin_04",
				"egt_taunting_bardin_05",
				"egt_taunting_bardin_06",
				"egt_taunting_bardin_07",
				"egt_taunting_bardin_08",
				"egt_taunting_bardin_09",
				"egt_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_bardin_01",
				"egt_taunting_bardin_02",
				"egt_taunting_bardin_03",
				"egt_taunting_bardin_04",
				"egt_taunting_bardin_05",
				"egt_taunting_bardin_06",
				"egt_taunting_bardin_07",
				"egt_taunting_bardin_08",
				"egt_taunting_bardin_09",
				"egt_taunting_bardin_10"
			},
			sound_events_duration = {
				3.1533441543579,
				2.8094174861908,
				3.9942402839661,
				3.7840163707733,
				3.9690136909485,
				3.3635683059692,
				1.9222718477249,
				1.9987932443619,
				1.2192822694778,
				1.9424532651901
			}
		},
		egt_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_kerillian_01",
				"egt_taunting_kerillian_02",
				"egt_taunting_kerillian_03",
				"egt_taunting_kerillian_04",
				"egt_taunting_kerillian_05",
				"egt_taunting_kerillian_06",
				"egt_taunting_kerillian_07",
				"egt_taunting_kerillian_08",
				"egt_taunting_kerillian_09",
				"egt_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_kerillian_01",
				"egt_taunting_kerillian_02",
				"egt_taunting_kerillian_03",
				"egt_taunting_kerillian_04",
				"egt_taunting_kerillian_05",
				"egt_taunting_kerillian_06",
				"egt_taunting_kerillian_07",
				"egt_taunting_kerillian_08",
				"egt_taunting_kerillian_09",
				"egt_taunting_kerillian_10"
			},
			sound_events_duration = {
				3.4409306049347,
				3.1533441543579,
				3.3635683059692,
				1.8861130475998,
				2.557989358902,
				3.1617531776428,
				1.79445540905,
				1.6388895511627,
				2.1022236347199,
				1.7389562129974
			}
		},
		egt_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_kruber_01",
				"egt_taunting_kruber_02",
				"egt_taunting_kruber_03",
				"egt_taunting_kruber_04",
				"egt_taunting_kruber_05",
				"egt_taunting_kruber_06",
				"egt_taunting_kruber_07",
				"egt_taunting_kruber_08",
				"egt_taunting_kruber_09",
				"egt_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_kruber_01",
				"egt_taunting_kruber_02",
				"egt_taunting_kruber_03",
				"egt_taunting_kruber_04",
				"egt_taunting_kruber_05",
				"egt_taunting_kruber_06",
				"egt_taunting_kruber_07",
				"egt_taunting_kruber_08",
				"egt_taunting_kruber_09",
				"egt_taunting_kruber_10"
			},
			sound_events_duration = {
				2.8186674118042,
				3.0448684692383,
				3.2265019416809,
				3.106253862381,
				3.0305731296539,
				2.4755816459656,
				2.2678802013397,
				1.8903176784515,
				2.0997009277344,
				2.2283580303192
			}
		},
		egt_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_saltzpyre_01",
				"egt_taunting_saltzpyre_02",
				"egt_taunting_saltzpyre_03",
				"egt_taunting_saltzpyre_04",
				"egt_taunting_saltzpyre_05",
				"egt_taunting_saltzpyre_06",
				"egt_taunting_saltzpyre_07",
				"egt_taunting_saltzpyre_09",
				"egt_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_saltzpyre_01",
				"egt_taunting_saltzpyre_02",
				"egt_taunting_saltzpyre_03",
				"egt_taunting_saltzpyre_04",
				"egt_taunting_saltzpyre_05",
				"egt_taunting_saltzpyre_06",
				"egt_taunting_saltzpyre_07",
				"egt_taunting_saltzpyre_09",
				"egt_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.1022236347199,
				3.573792219162,
				3.2525696754456,
				2.873325586319,
				3.0364594459534,
				2.1434276103973,
				1.6817753314972,
				1.3370077610016,
				1.6464576721191
			}
		},
		egt_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_taunting_sienna_01",
				"egt_taunting_sienna_02",
				"egt_taunting_sienna_03",
				"egt_taunting_sienna_04",
				"egt_taunting_sienna_05",
				"egt_taunting_sienna_06",
				"egt_taunting_sienna_07",
				"egt_taunting_sienna_08",
				"egt_taunting_sienna_09",
				"egt_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_taunting_sienna_01",
				"egt_taunting_sienna_02",
				"egt_taunting_sienna_03",
				"egt_taunting_sienna_04",
				"egt_taunting_sienna_05",
				"egt_taunting_sienna_06",
				"egt_taunting_sienna_07",
				"egt_taunting_sienna_08",
				"egt_taunting_sienna_09",
				"egt_taunting_sienna_10"
			},
			sound_events_duration = {
				1.5463910102844,
				2.171177148819,
				2.9717104434967,
				2.5075356960297,
				1.5304139852524,
				2.6900100708008,
				1.3504621982575,
				1.7549333572388,
				1.4379153251648,
				2.1568818092346
			}
		},
		egt_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_ability_horde_a_01",
				"egt_vs_ability_horde_a_02",
				"egt_vs_ability_horde_a_03",
				"egt_vs_ability_horde_a_04",
				"egt_vs_ability_horde_a_05",
				"egt_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_ability_horde_a_01",
				"egt_vs_ability_horde_a_02",
				"egt_vs_ability_horde_a_03",
				"egt_vs_ability_horde_a_04",
				"egt_vs_ability_horde_a_05",
				"egt_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				1.6599999666214,
				2.5250000953674,
				3.0999999046326,
				2.085000038147,
				2.5350000858307,
				3.6449999809265
			}
		},
		egt_vs_downed_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_downed_hero_a_01",
				"egt_vs_downed_hero_a_02",
				"egt_vs_downed_hero_a_03",
				"egt_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_downed_hero_a_01",
				"egt_vs_downed_hero_a_02",
				"egt_vs_downed_hero_a_03",
				"egt_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				2.2750000953674,
				2.039999961853,
				1.9650000333786,
				2.8900001049042
			}
		},
		egt_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_globadier_hitting_many_a_01",
				"egt_vs_globadier_hitting_many_a_02",
				"egt_vs_globadier_hitting_many_a_03",
				"egt_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_globadier_hitting_many_a_01",
				"egt_vs_globadier_hitting_many_a_02",
				"egt_vs_globadier_hitting_many_a_03",
				"egt_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				2.4349999427795,
				2.9400000572205,
				3.5999999046326,
				3.454999923706
			}
		},
		egt_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_globadier_missing_globe_a_01",
				"egt_vs_globadier_missing_globe_a_02",
				"egt_vs_globadier_missing_globe_a_03",
				"egt_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_globadier_missing_globe_a_01",
				"egt_vs_globadier_missing_globe_a_02",
				"egt_vs_globadier_missing_globe_a_03",
				"egt_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				3.5699999332428,
				3.4049999713898,
				2.335000038147,
				2.5950000286102
			}
		},
		egt_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_heroes_objective_almost_completed_b_01",
				"egt_vs_heroes_objective_almost_completed_b_02",
				"egt_vs_heroes_objective_almost_completed_b_03",
				"egt_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_heroes_objective_almost_completed_b_01",
				"egt_vs_heroes_objective_almost_completed_b_02",
				"egt_vs_heroes_objective_almost_completed_b_03",
				"egt_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				2.3150000572205,
				2.2750000953674,
				2.3399999141693,
				1.6449999809265
			}
		},
		egt_vs_many_heroes_incapacitated_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_many_heroes_incapacitated_a_01",
				"egt_vs_many_heroes_incapacitated_a_02",
				"egt_vs_many_heroes_incapacitated_a_03",
				"egt_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_many_heroes_incapacitated_a_01",
				"egt_vs_many_heroes_incapacitated_a_02",
				"egt_vs_many_heroes_incapacitated_a_03",
				"egt_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.920000076294,
				2.414999961853,
				2.7550001144409,
				3.8099999427795
			}
		},
		egt_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 3.1199998855591
			}
		},
		egt_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 6.6500000953674
			}
		},
		egt_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 5.6999998092651
			}
		},
		egt_vs_pact_proximity_banter_fifteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_fifteen_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_fifteen_a_01"
			},
			sound_events_duration = {
				[1] = 6.0799999237061
			}
		},
		egt_vs_pact_proximity_banter_five_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_five_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_five_a_01"
			},
			sound_events_duration = {
				[1] = 4.460000038147
			}
		},
		egt_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 7.8449997901917
			}
		},
		egt_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.8849999904633
			}
		},
		egt_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 3.6050000190735
			}
		},
		egt_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.295000076294
			}
		},
		egt_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 5.5149998664856
			}
		},
		egt_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 4.1500000953674
			}
		},
		egt_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 5.7849998474121
			}
		},
		egt_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 6.6050000190735
			}
		},
		egt_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 5.0250000953674
			}
		},
		egt_vs_pact_proximity_banter_ten_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_ten_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_ten_a_01"
			},
			sound_events_duration = {
				[1] = 2.539999961853
			}
		},
		egt_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 7.1950001716614
			}
		},
		egt_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 2.914999961853
			}
		},
		egt_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 4.9650001525879
			}
		},
		egt_vs_pact_proximity_banter_twenty_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_twenty_a_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_twenty_a_01"
			},
			sound_events_duration = {
				[1] = 4.4499998092651
			}
		},
		egt_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "egt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 6.4549999237061
			}
		},
		egt_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "egt_vs_passing_hoisted_hero_a_01",
				[2] = "egt_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "egt_vs_passing_hoisted_hero_a_01",
				[2] = "egt_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 4.914999961853,
				[2] = 3.875
			}
		},
		egt_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_vw_cheer_a_01",
				"egt_vs_vw_cheer_a_02",
				"egt_vs_vw_cheer_a_03",
				"egt_vs_vw_cheer_a_04",
				"egt_vs_vw_cheer_a_05",
				"egt_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_vw_cheer_a_01",
				"egt_vs_vw_cheer_a_02",
				"egt_vs_vw_cheer_a_03",
				"egt_vs_vw_cheer_a_04",
				"egt_vs_vw_cheer_a_05",
				"egt_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		egt_vs_vw_thanks_a = {
			randomize_indexes_n = 0,
			face_animations_n = 12,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 12,
			category = "player_feedback",
			dialogue_animations_n = 12,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vs_vw_thanks_a_01",
				"egt_vs_vw_thanks_a_02",
				"egt_vs_vw_thanks_a_03",
				"egt_vs_vw_thanks_a_04",
				"egt_vs_vw_thanks_a_05",
				"egt_vs_vw_thanks_a_06",
				"egt_vs_vw_thanks_a_07",
				"egt_vs_vw_thanks_a_08",
				"egt_vs_vw_thanks_a_09",
				"egt_vs_vw_thanks_a_10",
				"egt_vs_vw_thanks_a_11",
				"egt_vs_vw_thanks_a_12"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vs_vw_thanks_a_01",
				"egt_vs_vw_thanks_a_02",
				"egt_vs_vw_thanks_a_03",
				"egt_vs_vw_thanks_a_04",
				"egt_vs_vw_thanks_a_05",
				"egt_vs_vw_thanks_a_06",
				"egt_vs_vw_thanks_a_07",
				"egt_vs_vw_thanks_a_08",
				"egt_vs_vw_thanks_a_09",
				"egt_vs_vw_thanks_a_10",
				"egt_vs_vw_thanks_a_11",
				"egt_vs_vw_thanks_a_12"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		egt_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_affirmative_01",
				"egt_vw_affirmative_02",
				"egt_vw_affirmative_03",
				"egt_vw_affirmative_04",
				"egt_vw_affirmative_05",
				"egt_vw_affirmative_06",
				"egt_vw_affirmative_07",
				"egt_vw_affirmative_08",
				"egt_vw_affirmative_09",
				"egt_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_affirmative_01",
				"egt_vw_affirmative_02",
				"egt_vw_affirmative_03",
				"egt_vw_affirmative_04",
				"egt_vw_affirmative_05",
				"egt_vw_affirmative_06",
				"egt_vw_affirmative_07",
				"egt_vw_affirmative_08",
				"egt_vw_affirmative_09",
				"egt_vw_affirmative_10"
			},
			sound_events_duration = {
				0.74838030338287,
				1.2150954008102,
				0.8476060628891,
				1.585089802742,
				2.4688544273377,
				1.8810678720474,
				2.8388488292694,
				3.7486987113953,
				1.4068021774292,
				1.892840385437
			}
		},
		egt_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_ambush_01",
				"egt_vw_ambush_02",
				"egt_vw_ambush_03",
				"egt_vw_ambush_04",
				"egt_vw_ambush_05",
				"egt_vw_ambush_06",
				"egt_vw_ambush_07",
				"egt_vw_ambush_08",
				"egt_vw_ambush_09",
				"egt_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_ambush_01",
				"egt_vw_ambush_02",
				"egt_vw_ambush_03",
				"egt_vw_ambush_04",
				"egt_vw_ambush_05",
				"egt_vw_ambush_06",
				"egt_vw_ambush_07",
				"egt_vw_ambush_08",
				"egt_vw_ambush_09",
				"egt_vw_ambush_10"
			},
			sound_events_duration = {
				0.6129959821701,
				1.3100991249084,
				1.0511029958725,
				1.1158519983292,
				1.0788525342941,
				0.78874331712723,
				1.7263429164886,
				2.2233126163483,
				2.554625749588,
				1.4227792024612
			}
		},
		egt_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_attack_now_01",
				"egt_vw_attack_now_02",
				"egt_vw_attack_now_03",
				"egt_vw_attack_now_04",
				"egt_vw_attack_now_05",
				"egt_vw_attack_now_06",
				"egt_vw_attack_now_07",
				"egt_vw_attack_now_08",
				"egt_vw_attack_now_09",
				"egt_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_attack_now_01",
				"egt_vw_attack_now_02",
				"egt_vw_attack_now_03",
				"egt_vw_attack_now_04",
				"egt_vw_attack_now_05",
				"egt_vw_attack_now_06",
				"egt_vw_attack_now_07",
				"egt_vw_attack_now_08",
				"egt_vw_attack_now_09",
				"egt_vw_attack_now_10"
			},
			sound_events_duration = {
				1.2268503904343,
				1.8188414573669,
				2.0610196590424,
				2.5226719379425,
				1.4740738868713,
				1.1864873170853,
				1.9575892686844,
				1.8482729196549,
				2.4310140609741,
				2.9229383468628
			}
		},
		egt_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_cover_me_01",
				"egt_vw_cover_me_02",
				"egt_vw_cover_me_03",
				"egt_vw_cover_me_04",
				"egt_vw_cover_me_05",
				"egt_vw_cover_me_06",
				"egt_vw_cover_me_07",
				"egt_vw_cover_me_08",
				"egt_vw_cover_me_09",
				"egt_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_cover_me_01",
				"egt_vw_cover_me_02",
				"egt_vw_cover_me_03",
				"egt_vw_cover_me_04",
				"egt_vw_cover_me_05",
				"egt_vw_cover_me_06",
				"egt_vw_cover_me_07",
				"egt_vw_cover_me_08",
				"egt_vw_cover_me_09",
				"egt_vw_cover_me_10"
			},
			sound_events_duration = {
				1.2773041725159,
				2.7505548000336,
				1.9289988279343,
				1.3706436157227,
				1.2613271474838,
				1.111647605896,
				1.5186413526535,
				1.9231126308441,
				2.4360594749451,
				1.9474986791611
			}
		},
		egt_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_gather_01",
				"egt_vw_gather_02",
				"egt_vw_gather_03",
				"egt_vw_gather_04",
				"egt_vw_gather_05",
				"egt_vw_gather_06",
				"egt_vw_gather_07",
				"egt_vw_gather_08",
				"egt_vw_gather_09",
				"egt_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_gather_01",
				"egt_vw_gather_02",
				"egt_vw_gather_03",
				"egt_vw_gather_04",
				"egt_vw_gather_05",
				"egt_vw_gather_06",
				"egt_vw_gather_07",
				"egt_vw_gather_08",
				"egt_vw_gather_09",
				"egt_vw_gather_10"
			},
			sound_events_duration = {
				1.2806676626205,
				0.8728329539299,
				1.347939491272,
				2.1795861721039,
				0.90900903940201,
				0.75006210803986,
				1.1217383146286,
				1.111647605896,
				1.4421198368073,
				3.1112992763519
			}
		},
		egt_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_go_here_01",
				"egt_vw_go_here_02",
				"egt_vw_go_here_03",
				"egt_vw_go_here_04",
				"egt_vw_go_here_05",
				"egt_vw_go_here_06",
				"egt_vw_go_here_07",
				"egt_vw_go_here_08",
				"egt_vw_go_here_09",
				"egt_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_go_here_01",
				"egt_vw_go_here_02",
				"egt_vw_go_here_03",
				"egt_vw_go_here_04",
				"egt_vw_go_here_05",
				"egt_vw_go_here_06",
				"egt_vw_go_here_07",
				"egt_vw_go_here_08",
				"egt_vw_go_here_09",
				"egt_vw_go_here_10"
			},
			sound_events_duration = {
				1.6607091426849,
				1.5321921110153,
				0.99931782484055,
				1.46342253685,
				1.5554393529892,
				1.6259783506393,
				1.6233417987824,
				0.95869201421738,
				1.6552257537842,
				1.9720947742462
			}
		},
		egt_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_negation_01",
				"egt_vw_negation_02",
				"egt_vw_negation_03",
				"egt_vw_negation_04",
				"egt_vw_negation_05",
				"egt_vw_negation_06",
				"egt_vw_negation_07",
				"egt_vw_negation_08",
				"egt_vw_negation_09",
				"egt_vw_negation_10",
				"egt_vw_negation_11"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_negation_01",
				"egt_vw_negation_02",
				"egt_vw_negation_03",
				"egt_vw_negation_04",
				"egt_vw_negation_05",
				"egt_vw_negation_06",
				"egt_vw_negation_07",
				"egt_vw_negation_08",
				"egt_vw_negation_09",
				"egt_vw_negation_10",
				"egt_vw_negation_11"
			},
			sound_events_duration = {
				0.48771992325783,
				0.66008615493774,
				0.86274218559265,
				1.2285321950913,
				1.4093248844147,
				1.3050537109375,
				1.4765965938568,
				0.76351648569107,
				3.2180931568146,
				1.1713511943817,
				1.8667724132538
			}
		},
		egt_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_thanks_01",
				"egt_vw_thanks_02",
				"egt_vw_thanks_03",
				"egt_vw_thanks_04",
				"egt_vw_thanks_05",
				"egt_vw_thanks_06",
				"egt_vw_thanks_07",
				"egt_vw_thanks_08",
				"egt_vw_thanks_09",
				"egt_vw_thanks_10"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_thanks_01",
				"egt_vw_thanks_02",
				"egt_vw_thanks_03",
				"egt_vw_thanks_04",
				"egt_vw_thanks_05",
				"egt_vw_thanks_06",
				"egt_vw_thanks_07",
				"egt_vw_thanks_08",
				"egt_vw_thanks_09",
				"egt_vw_thanks_10"
			},
			sound_events_duration = {
				0.70997935533524,
				1.6032565832138,
				1.5384550094605,
				2.1761348247528,
				1.3873740434647,
				0.90780031681061,
				0.7396559715271,
				1.1354904174805,
				1.6641340255737,
				2.09721326828
			}
		},
		egt_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 11,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 11,
			category = "player_alerts",
			dialogue_animations_n = 11,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"egt_vw_wait_01",
				"egt_vw_wait_02",
				"egt_vw_wait_03",
				"egt_vw_wait_04",
				"egt_vw_wait_05",
				"egt_vw_wait_06",
				"egt_vw_wait_07",
				"egt_vw_wait_08",
				"egt_vw_wait_09",
				"egt_vw_wait_10",
				"egt_vw_wait_11"
			},
			randomize_indexes = {},
			sound_events = {
				"egt_vw_wait_01",
				"egt_vw_wait_02",
				"egt_vw_wait_03",
				"egt_vw_wait_04",
				"egt_vw_wait_05",
				"egt_vw_wait_06",
				"egt_vw_wait_07",
				"egt_vw_wait_08",
				"egt_vw_wait_09",
				"egt_vw_wait_10",
				"egt_vw_wait_11"
			},
			sound_events_duration = {
				2.4562411308289,
				1.4816420078278,
				1.4883691072464,
				1.1738739013672,
				1.5270503759384,
				2.0391564369202,
				4.2868723869324,
				1.7969781160355,
				2.3040387630463,
				2.5874207019806,
				3.5384745597839
			}
		},
		epg_spawning_globadier = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_spawning_globadier_01",
				"epg_spawning_globadier_02",
				"epg_spawning_globadier_03",
				"epg_spawning_globadier_04",
				"epg_spawning_globadier_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_spawning_globadier_01",
				"epg_spawning_globadier_02",
				"epg_spawning_globadier_03",
				"epg_spawning_globadier_04",
				"epg_spawning_globadier_05"
			},
			sound_events_duration = {
				4.0289790630341,
				3.9064791202545,
				3.0499792098999,
				3.2234791517258,
				4.8373522758484
			}
		},
		epg_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_bardin_01",
				"epg_taunting_bardin_02",
				"epg_taunting_bardin_03",
				"epg_taunting_bardin_04",
				"epg_taunting_bardin_05",
				"epg_taunting_bardin_06",
				"epg_taunting_bardin_07",
				"epg_taunting_bardin_09",
				"epg_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_bardin_01",
				"epg_taunting_bardin_02",
				"epg_taunting_bardin_03",
				"epg_taunting_bardin_04",
				"epg_taunting_bardin_05",
				"epg_taunting_bardin_06",
				"epg_taunting_bardin_07",
				"epg_taunting_bardin_09",
				"epg_taunting_bardin_10"
			},
			sound_events_duration = {
				1.7489792108536,
				2.5139791965485,
				2.9979791641235,
				2.2329790592194,
				1.852979183197,
				1.8509792089462,
				1.3309791088104,
				1.5809791088104,
				1.6419792175293
			}
		},
		epg_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_kerillian_01",
				"epg_taunting_kerillian_02",
				"epg_taunting_kerillian_03",
				"epg_taunting_kerillian_04",
				"epg_taunting_kerillian_05",
				"epg_taunting_kerillian_06",
				"epg_taunting_kerillian_07",
				"epg_taunting_kerillian_08",
				"epg_taunting_kerillian_09",
				"epg_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_kerillian_01",
				"epg_taunting_kerillian_02",
				"epg_taunting_kerillian_03",
				"epg_taunting_kerillian_04",
				"epg_taunting_kerillian_05",
				"epg_taunting_kerillian_06",
				"epg_taunting_kerillian_07",
				"epg_taunting_kerillian_08",
				"epg_taunting_kerillian_09",
				"epg_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.7269792556763,
				2.5399792194366,
				3.7399792671204,
				2.198979139328,
				2.8489999771118,
				2.7039792537689,
				1.3649791479111,
				1.4309791326523,
				1.4709792137146,
				1.686979174614
			}
		},
		epg_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_kruber_01",
				"epg_taunting_kruber_02",
				"epg_taunting_kruber_03",
				"epg_taunting_kruber_04",
				"epg_taunting_kruber_05",
				"epg_taunting_kruber_06",
				"epg_taunting_kruber_07",
				"epg_taunting_kruber_08",
				"epg_taunting_kruber_09",
				"epg_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_kruber_01",
				"epg_taunting_kruber_02",
				"epg_taunting_kruber_03",
				"epg_taunting_kruber_04",
				"epg_taunting_kruber_05",
				"epg_taunting_kruber_06",
				"epg_taunting_kruber_07",
				"epg_taunting_kruber_08",
				"epg_taunting_kruber_09",
				"epg_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9039790630341,
				2.1539790630341,
				2.2669792175293,
				2.716979265213,
				3.6929790973663,
				3.0119791030884,
				1.5579792261124,
				1.7400000095367,
				3.0309791564941,
				2.716979265213
			}
		},
		epg_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_saltzpyre_01",
				"epg_taunting_saltzpyre_02",
				"epg_taunting_saltzpyre_03",
				"epg_taunting_saltzpyre_04",
				"epg_taunting_saltzpyre_05",
				"epg_taunting_saltzpyre_06",
				"epg_taunting_saltzpyre_07",
				"epg_taunting_saltzpyre_08",
				"epg_taunting_saltzpyre_09",
				"epg_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_saltzpyre_01",
				"epg_taunting_saltzpyre_02",
				"epg_taunting_saltzpyre_03",
				"epg_taunting_saltzpyre_04",
				"epg_taunting_saltzpyre_05",
				"epg_taunting_saltzpyre_06",
				"epg_taunting_saltzpyre_07",
				"epg_taunting_saltzpyre_08",
				"epg_taunting_saltzpyre_09",
				"epg_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.283979177475,
				3.8999791145325,
				2.7109792232513,
				2.3259792327881,
				2.1829791069031,
				2.3159792423248,
				1.3739792108536,
				2.493979215622,
				1.4800000190735,
				3.0719792842865
			}
		},
		epg_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_taunting_sienna_01",
				"epg_taunting_sienna_02",
				"epg_taunting_sienna_03",
				"epg_taunting_sienna_04",
				"epg_taunting_sienna_05",
				"epg_taunting_sienna_06",
				"epg_taunting_sienna_07",
				"epg_taunting_sienna_08",
				"epg_taunting_sienna_09",
				"epg_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_taunting_sienna_01",
				"epg_taunting_sienna_02",
				"epg_taunting_sienna_03",
				"epg_taunting_sienna_04",
				"epg_taunting_sienna_05",
				"epg_taunting_sienna_06",
				"epg_taunting_sienna_07",
				"epg_taunting_sienna_08",
				"epg_taunting_sienna_09",
				"epg_taunting_sienna_10"
			},
			sound_events_duration = {
				1.8579791784286,
				2.4369790554047,
				2.8409790992737,
				3.0579791069031,
				2.1919791698456,
				1.9049791097641,
				1.4689999818802,
				1.7589999437332,
				1.6349791288376,
				1.7489792108536
			}
		},
		epg_versus_throwing_globe = {
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_feedback",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_versus_throwing_globe_01",
				"epg_versus_throwing_globe_02",
				"epg_versus_throwing_globe_03",
				"epg_versus_throwing_globe_05",
				"epg_versus_throwing_globe_06",
				"epg_versus_throwing_globe_08",
				"epg_versus_throwing_globe_09",
				"epg_versus_throwing_globe_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_versus_throwing_globe_01",
				"epg_versus_throwing_globe_02",
				"epg_versus_throwing_globe_03",
				"epg_versus_throwing_globe_05",
				"epg_versus_throwing_globe_06",
				"epg_versus_throwing_globe_08",
				"epg_versus_throwing_globe_09",
				"epg_versus_throwing_globe_10"
			},
			sound_events_duration = {
				1.5894895792007,
				1.6729791760445,
				1.6929792165756,
				1.5524791479111,
				1.8364791870117,
				1.1564791202545,
				1.7709791064262,
				1.6454792022705
			}
		},
		epg_vs_ability_explosion_a = {
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_feedback",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_ability_explosion_a_01",
				"epg_vs_ability_explosion_a_02",
				"epg_vs_ability_explosion_a_03",
				"epg_vs_ability_explosion_a_04",
				"epg_vs_ability_explosion_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_ability_explosion_a_01",
				"epg_vs_ability_explosion_a_02",
				"epg_vs_ability_explosion_a_03",
				"epg_vs_ability_explosion_a_04",
				"epg_vs_ability_explosion_a_05"
			},
			sound_events_duration = {
				1.7749999761581,
				1.7749999761581,
				1.5650000572205,
				2.7550001144409,
				2.8599998950958
			}
		},
		epg_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_ability_horde_a_01",
				"epg_vs_ability_horde_a_02",
				"epg_vs_ability_horde_a_03",
				"epg_vs_ability_horde_a_04",
				"epg_vs_ability_horde_a_05",
				"epg_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_ability_horde_a_01",
				"epg_vs_ability_horde_a_02",
				"epg_vs_ability_horde_a_03",
				"epg_vs_ability_horde_a_04",
				"epg_vs_ability_horde_a_05",
				"epg_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				1.5249999761581,
				2.1949999332428,
				2.3599998950958,
				1.7949999570847,
				2.6050000190735,
				3.1600000858307
			}
		},
		epg_vs_downed_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_downed_hero_a_01",
				"epg_vs_downed_hero_a_02",
				"epg_vs_downed_hero_a_03",
				"epg_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_downed_hero_a_01",
				"epg_vs_downed_hero_a_02",
				"epg_vs_downed_hero_a_03",
				"epg_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				1.9199999570847,
				1.6499999761581,
				2.0350000858307,
				1.3200000524521
			}
		},
		epg_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_globadier_hitting_many_a_01",
				"epg_vs_globadier_hitting_many_a_02",
				"epg_vs_globadier_hitting_many_a_03",
				"epg_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_globadier_hitting_many_a_01",
				"epg_vs_globadier_hitting_many_a_02",
				"epg_vs_globadier_hitting_many_a_03",
				"epg_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				2.4249999523163,
				3.664999961853,
				2.0250000953674,
				3.7550001144409
			}
		},
		epg_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_globadier_missing_globe_a_01",
				"epg_vs_globadier_missing_globe_a_02",
				"epg_vs_globadier_missing_globe_a_03",
				"epg_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_globadier_missing_globe_a_01",
				"epg_vs_globadier_missing_globe_a_02",
				"epg_vs_globadier_missing_globe_a_03",
				"epg_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				1.414999961853,
				1.7350000143051,
				1.6200000047684,
				2.7200000286102
			}
		},
		epg_vs_globe_on_disabled_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_globe_on_disabled_hero_a_01",
				"epg_vs_globe_on_disabled_hero_a_02",
				"epg_vs_globe_on_disabled_hero_a_03",
				"epg_vs_globe_on_disabled_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_globe_on_disabled_hero_a_01",
				"epg_vs_globe_on_disabled_hero_a_02",
				"epg_vs_globe_on_disabled_hero_a_03",
				"epg_vs_globe_on_disabled_hero_a_04"
			},
			sound_events_duration = {
				2.5099999904633,
				2.6749999523163,
				2.170000076294,
				2.789999961853
			}
		},
		epg_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_heroes_objective_almost_completed_b_01",
				"epg_vs_heroes_objective_almost_completed_b_02",
				"epg_vs_heroes_objective_almost_completed_b_03",
				"epg_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_heroes_objective_almost_completed_b_01",
				"epg_vs_heroes_objective_almost_completed_b_02",
				"epg_vs_heroes_objective_almost_completed_b_03",
				"epg_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				2.170000076294,
				1.5249999761581,
				2.585000038147,
				1.5249999761581
			}
		},
		epg_vs_many_heroes_incapacitated_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_many_heroes_incapacitated_a_01",
				"epg_vs_many_heroes_incapacitated_a_02",
				"epg_vs_many_heroes_incapacitated_a_03",
				"epg_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_many_heroes_incapacitated_a_01",
				"epg_vs_many_heroes_incapacitated_a_02",
				"epg_vs_many_heroes_incapacitated_a_03",
				"epg_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.3599998950958,
				2.295000076294,
				1.5299999713898,
				2.7750000953674
			}
		},
		epg_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 3.6050000190735
			}
		},
		epg_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.5199999809265
			}
		},
		epg_vs_pact_proximity_banter_eleven_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_eleven_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_eleven_a_01"
			},
			sound_events_duration = {
				[1] = 9.4700002670288
			}
		},
		epg_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 5.8000001907349
			}
		},
		epg_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 5.2950000762939
			}
		},
		epg_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 3.9500000476837
			}
		},
		epg_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.8949999809265
			}
		},
		epg_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 3.9000000953674
			}
		},
		epg_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 7.2300000190735
			}
		},
		epg_vs_pact_proximity_banter_one_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_one_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_one_a_01"
			},
			sound_events_duration = {
				[1] = 2.25
			}
		},
		epg_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 6.4850001335144
			}
		},
		epg_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 3.8199999332428
			}
		},
		epg_vs_pact_proximity_banter_six_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_six_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_six_a_01"
			},
			sound_events_duration = {
				[1] = 5.4899997711182
			}
		},
		epg_vs_pact_proximity_banter_sixteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_sixteen_a_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_sixteen_a_01"
			},
			sound_events_duration = {
				[1] = 3.3050000667572
			}
		},
		epg_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 3.039999961853
			}
		},
		epg_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.2599999904633
			}
		},
		epg_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 3.0950000286102
			}
		},
		epg_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 6.2649998664856
			}
		},
		epg_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 9.3850002288818
			}
		},
		epg_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "epg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 4.7350001335144
			}
		},
		epg_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "epg_vs_passing_hoisted_hero_a_01",
				[2] = "epg_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "epg_vs_passing_hoisted_hero_a_01",
				[2] = "epg_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 2.3450000286102,
				[2] = 2.6349999904633
			}
		},
		epg_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vs_vw_cheer_a_01",
				"epg_vs_vw_cheer_a_02",
				"epg_vs_vw_cheer_a_03",
				"epg_vs_vw_cheer_a_04",
				"epg_vs_vw_cheer_a_05",
				"epg_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vs_vw_cheer_a_01",
				"epg_vs_vw_cheer_a_02",
				"epg_vs_vw_cheer_a_03",
				"epg_vs_vw_cheer_a_04",
				"epg_vs_vw_cheer_a_05",
				"epg_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		epg_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_affirmative_01",
				"epg_vw_affirmative_02",
				"epg_vw_affirmative_03",
				"epg_vw_affirmative_04",
				"epg_vw_affirmative_05",
				"epg_vw_affirmative_06",
				"epg_vw_affirmative_07",
				"epg_vw_affirmative_08",
				"epg_vw_affirmative_09",
				"epg_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_affirmative_01",
				"epg_vw_affirmative_02",
				"epg_vw_affirmative_03",
				"epg_vw_affirmative_04",
				"epg_vw_affirmative_05",
				"epg_vw_affirmative_06",
				"epg_vw_affirmative_07",
				"epg_vw_affirmative_08",
				"epg_vw_affirmative_09",
				"epg_vw_affirmative_10"
			},
			sound_events_duration = {
				0.60197919607162,
				0.73497915267944,
				0.60997915267944,
				1.8939791917801,
				1.8489999771118,
				0.77697914838791,
				2.0639791488648,
				2.3164596557617,
				0.99299997091293,
				1.4079791307449
			}
		},
		epg_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_ambush_01",
				"epg_vw_ambush_02",
				"epg_vw_ambush_03",
				"epg_vw_ambush_04",
				"epg_vw_ambush_05",
				"epg_vw_ambush_06",
				"epg_vw_ambush_08",
				"epg_vw_ambush_09",
				"epg_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_ambush_01",
				"epg_vw_ambush_02",
				"epg_vw_ambush_03",
				"epg_vw_ambush_04",
				"epg_vw_ambush_05",
				"epg_vw_ambush_06",
				"epg_vw_ambush_08",
				"epg_vw_ambush_09",
				"epg_vw_ambush_10"
			},
			sound_events_duration = {
				1.6899791955948,
				1.680999994278,
				2.109375,
				1.6139999628067,
				1.3339999914169,
				2.9916851520538,
				2.772979259491,
				3.7319791316986,
				1.2809791564941
			}
		},
		epg_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_attack_now_01",
				"epg_vw_attack_now_02",
				"epg_vw_attack_now_03",
				"epg_vw_attack_now_04",
				"epg_vw_attack_now_05",
				"epg_vw_attack_now_06",
				"epg_vw_attack_now_07",
				"epg_vw_attack_now_08",
				"epg_vw_attack_now_09",
				"epg_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_attack_now_01",
				"epg_vw_attack_now_02",
				"epg_vw_attack_now_03",
				"epg_vw_attack_now_04",
				"epg_vw_attack_now_05",
				"epg_vw_attack_now_06",
				"epg_vw_attack_now_07",
				"epg_vw_attack_now_08",
				"epg_vw_attack_now_09",
				"epg_vw_attack_now_10"
			},
			sound_events_duration = {
				1.1000000238419,
				1.5879791975021,
				1.5930000543594,
				1.7299791574478,
				0.63997918367386,
				1.0740000009537,
				1.9179999828339,
				1.7699999809265,
				2.5539999008179,
				3.3880000114441
			}
		},
		epg_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_alerts",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_cover_me_01",
				"epg_vw_cover_me_04",
				"epg_vw_cover_me_06",
				"epg_vw_cover_me_08",
				"epg_vw_cover_me_09",
				"epg_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_cover_me_01",
				"epg_vw_cover_me_04",
				"epg_vw_cover_me_06",
				"epg_vw_cover_me_08",
				"epg_vw_cover_me_09",
				"epg_vw_cover_me_10"
			},
			sound_events_duration = {
				0.63397914171219,
				0.95800000429153,
				0.68699997663498,
				1.5835760831833,
				1.6109791994095,
				1.7410000562668
			}
		},
		epg_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_gather_01",
				"epg_vw_gather_02",
				"epg_vw_gather_03",
				"epg_vw_gather_04",
				"epg_vw_gather_05",
				"epg_vw_gather_07",
				"epg_vw_gather_08",
				"epg_vw_gather_09",
				"epg_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_gather_01",
				"epg_vw_gather_02",
				"epg_vw_gather_03",
				"epg_vw_gather_04",
				"epg_vw_gather_05",
				"epg_vw_gather_07",
				"epg_vw_gather_08",
				"epg_vw_gather_09",
				"epg_vw_gather_10"
			},
			sound_events_duration = {
				1.0859792232513,
				0.56197917461395,
				0.97000002861023,
				1.6619791984558,
				0.61599999666214,
				1.0299999713898,
				0.875,
				0.71799999475479,
				2.5889792442322
			}
		},
		epg_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_go_here_01",
				"epg_vw_go_here_02",
				"epg_vw_go_here_03",
				"epg_vw_go_here_04",
				"epg_vw_go_here_05",
				"epg_vw_go_here_06",
				"epg_vw_go_here_07",
				"epg_vw_go_here_08",
				"epg_vw_go_here_09",
				"epg_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_go_here_01",
				"epg_vw_go_here_02",
				"epg_vw_go_here_03",
				"epg_vw_go_here_04",
				"epg_vw_go_here_05",
				"epg_vw_go_here_06",
				"epg_vw_go_here_07",
				"epg_vw_go_here_08",
				"epg_vw_go_here_09",
				"epg_vw_go_here_10"
			},
			sound_events_duration = {
				0.92497915029526,
				1.2979999780655,
				0.7490000128746,
				1.7769999504089,
				1.3829791545868,
				2.073979139328,
				2.8619792461395,
				1.2409791946411,
				1.6319999694824,
				1.6230000257492
			}
		},
		epg_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_negation_01",
				"epg_vw_negation_02",
				"epg_vw_negation_03",
				"epg_vw_negation_04",
				"epg_vw_negation_05",
				"epg_vw_negation_06",
				"epg_vw_negation_07",
				"epg_vw_negation_08",
				"epg_vw_negation_09",
				"epg_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_negation_01",
				"epg_vw_negation_02",
				"epg_vw_negation_03",
				"epg_vw_negation_04",
				"epg_vw_negation_05",
				"epg_vw_negation_06",
				"epg_vw_negation_07",
				"epg_vw_negation_08",
				"epg_vw_negation_09",
				"epg_vw_negation_10"
			},
			sound_events_duration = {
				0.47200000286102,
				0.54997915029526,
				0.82599997520447,
				0.908999979496,
				1.8739792108536,
				1.4899791479111,
				1.0599792003632,
				1.4569791555405,
				2.3869791030884,
				0.92299997806549
			}
		},
		epg_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_thanks_01",
				"epg_vw_thanks_02",
				"epg_vw_thanks_03",
				"epg_vw_thanks_04",
				"epg_vw_thanks_05",
				"epg_vw_thanks_06",
				"epg_vw_thanks_07",
				"epg_vw_thanks_08",
				"epg_vw_thanks_09"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_thanks_01",
				"epg_vw_thanks_02",
				"epg_vw_thanks_03",
				"epg_vw_thanks_04",
				"epg_vw_thanks_05",
				"epg_vw_thanks_06",
				"epg_vw_thanks_07",
				"epg_vw_thanks_08",
				"epg_vw_thanks_09"
			},
			sound_events_duration = {
				1.3530207872391,
				0.74779164791107,
				0.6630625128746,
				0.78754168748856,
				0.57833331823349,
				0.84850001335144,
				0.93527084589005,
				2.0857291221619,
				1.6955208778381
			}
		},
		epg_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epg_vw_wait_01",
				"epg_vw_wait_02",
				"epg_vw_wait_03",
				"epg_vw_wait_04",
				"epg_vw_wait_05",
				"epg_vw_wait_06",
				"epg_vw_wait_07",
				"epg_vw_wait_08",
				"epg_vw_wait_09",
				"epg_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epg_vw_wait_01",
				"epg_vw_wait_02",
				"epg_vw_wait_03",
				"epg_vw_wait_04",
				"epg_vw_wait_05",
				"epg_vw_wait_06",
				"epg_vw_wait_07",
				"epg_vw_wait_08",
				"epg_vw_wait_09",
				"epg_vw_wait_10"
			},
			sound_events_duration = {
				1.8150000572205,
				0.56297916173935,
				0.77497917413712,
				0.71397918462753,
				0.74597918987274,
				2.0799791812897,
				2.8459792137146,
				1.6739791631699,
				1.2899792194366,
				2.2809791564941
			}
		},
		epm_packmaster_grab_walk = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_packmaster_vce_grab_walk"
			},
			sound_events = {
				[1] = "player_packmaster_vce_grab_walk"
			},
			sound_events_duration = {
				[1] = 2.4751597046852
			}
		},
		epm_packmaster_hook_fail = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "player_alerts",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_packmaster_vce_effort_hook_fail"
			},
			sound_events = {
				[1] = "player_packmaster_vce_effort_hook_fail"
			},
			sound_events_duration = {
				[1] = 0.4992898106575
			}
		},
		epm_packmaster_hook_success = {
			randomize_indexes_n = 0,
			face_animations_n = 21,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 21,
			category = "player_alerts",
			dialogue_animations_n = 21,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_hook_success_01",
				"epm_hook_success_02",
				"epm_hook_success_03",
				"epm_hook_success_04",
				"epm_hook_success_05",
				"epm_hook_success_06",
				"epm_hook_success_07",
				"epm_hook_success_08",
				"epm_hook_success_09",
				"epm_hook_success_10",
				"epm_hook_success_11",
				"epm_hook_success_12",
				"epm_hook_success_13",
				"epm_hook_success_14",
				"epm_hook_success_15",
				"epm_hook_success_16",
				"epm_hook_success_17",
				"epm_hook_success_18",
				"epm_hook_success_19",
				"epm_hook_success_20",
				"epm_hook_success_21"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_hook_success_01",
				"epm_hook_success_02",
				"epm_hook_success_03",
				"epm_hook_success_04",
				"epm_hook_success_05",
				"epm_hook_success_06",
				"epm_hook_success_07",
				"epm_hook_success_08",
				"epm_hook_success_09",
				"epm_hook_success_10",
				"epm_hook_success_11",
				"epm_hook_success_12",
				"epm_hook_success_13",
				"epm_hook_success_14",
				"epm_hook_success_15",
				"epm_hook_success_16",
				"epm_hook_success_17",
				"epm_hook_success_18",
				"epm_hook_success_19",
				"epm_hook_success_20",
				"epm_hook_success_21"
			},
			sound_events_duration = {
				1.0299253463745,
				1.122412443161,
				0.84786760807037,
				1.2408466339111,
				0.85728138685226,
				1.7195365428925,
				2.4562981128693,
				1.876868724823,
				2.8745851516724,
				3.6418654918671,
				2.1391701698303,
				2.9526190757752,
				4.2969307899475,
				4.2838072776794,
				2.3206150531769,
				2.8549945354462,
				2.3118784427643,
				3.7510356903076,
				2.1861534118652,
				3.8420219421387,
				4.4523773193359
			}
		},
		epm_packmaster_skulking = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "Play_packmaster_vce_skulking"
			},
			sound_events = {
				[1] = "Play_packmaster_vce_skulking"
			},
			sound_events_duration = {
				[1] = 2.302490144968
			}
		},
		epm_spawning_packmaster = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_spawning_packmaster_01",
				"epm_spawning_packmaster_02",
				"epm_spawning_packmaster_03",
				"epm_spawning_packmaster_04",
				"epm_spawning_packmaster_05"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_spawning_packmaster_01",
				"epm_spawning_packmaster_02",
				"epm_spawning_packmaster_03",
				"epm_spawning_packmaster_04",
				"epm_spawning_packmaster_05"
			},
			sound_events_duration = {
				5.6024127006531,
				5.4268517494202,
				4.8473134040833,
				6.229145526886,
				6.9880199432373
			}
		},
		epm_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_bardin_01",
				"epm_taunting_bardin_02",
				"epm_taunting_bardin_03",
				"epm_taunting_bardin_04",
				"epm_taunting_bardin_05",
				"epm_taunting_bardin_06",
				"epm_taunting_bardin_07",
				"epm_taunting_bardin_08",
				"epm_taunting_bardin_09",
				"epm_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_bardin_01",
				"epm_taunting_bardin_02",
				"epm_taunting_bardin_03",
				"epm_taunting_bardin_04",
				"epm_taunting_bardin_05",
				"epm_taunting_bardin_06",
				"epm_taunting_bardin_07",
				"epm_taunting_bardin_08",
				"epm_taunting_bardin_09",
				"epm_taunting_bardin_10"
			},
			sound_events_duration = {
				3.5470597743988,
				2.213365316391,
				2.0472435951233,
				3.0977754592895,
				3.8981809616089,
				3.1194846630096,
				1.8801777362824,
				2.0859422683716,
				2.2577276229858,
				2.5210685729981
			}
		},
		epm_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_kerillian_01",
				"epm_taunting_kerillian_02",
				"epm_taunting_kerillian_03",
				"epm_taunting_kerillian_04",
				"epm_taunting_kerillian_05",
				"epm_taunting_kerillian_06",
				"epm_taunting_kerillian_07",
				"epm_taunting_kerillian_09",
				"epm_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_kerillian_01",
				"epm_taunting_kerillian_02",
				"epm_taunting_kerillian_03",
				"epm_taunting_kerillian_04",
				"epm_taunting_kerillian_05",
				"epm_taunting_kerillian_06",
				"epm_taunting_kerillian_07",
				"epm_taunting_kerillian_09",
				"epm_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.4634921550751,
				3.6820337772369,
				2.8976743221283,
				3.1600711345673,
				2.6475474834442,
				2.7202260494232,
				2.2973704338074,
				3.9651961326599,
				2.4125230312347
			}
		},
		epm_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_kruber_01",
				"epm_taunting_kruber_02",
				"epm_taunting_kruber_03",
				"epm_taunting_kruber_04",
				"epm_taunting_kruber_05",
				"epm_taunting_kruber_06",
				"epm_taunting_kruber_07",
				"epm_taunting_kruber_08",
				"epm_taunting_kruber_09",
				"epm_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_kruber_01",
				"epm_taunting_kruber_02",
				"epm_taunting_kruber_03",
				"epm_taunting_kruber_04",
				"epm_taunting_kruber_05",
				"epm_taunting_kruber_06",
				"epm_taunting_kruber_07",
				"epm_taunting_kruber_08",
				"epm_taunting_kruber_09",
				"epm_taunting_kruber_10"
			},
			sound_events_duration = {
				2.8882355690002,
				2.2435693740845,
				3.7745332717895,
				2.9618577957153,
				3.0694591999054,
				2.6447157859802,
				1.5054597854614,
				2.6173436641693,
				3.3148665428162,
				5.3205995559692
			}
		},
		epm_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_saltzpyre_01",
				"epm_taunting_saltzpyre_02",
				"epm_taunting_saltzpyre_03",
				"epm_taunting_saltzpyre_04",
				"epm_taunting_saltzpyre_05",
				"epm_taunting_saltzpyre_06",
				"epm_taunting_saltzpyre_07",
				"epm_taunting_saltzpyre_08",
				"epm_taunting_saltzpyre_09",
				"epm_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_saltzpyre_01",
				"epm_taunting_saltzpyre_02",
				"epm_taunting_saltzpyre_03",
				"epm_taunting_saltzpyre_04",
				"epm_taunting_saltzpyre_05",
				"epm_taunting_saltzpyre_06",
				"epm_taunting_saltzpyre_07",
				"epm_taunting_saltzpyre_08",
				"epm_taunting_saltzpyre_09",
				"epm_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				3.4939000606537,
				3.737722158432,
				3.7962427139282,
				5.3536348342895,
				3.450784444809,
				2.7976236343384,
				2.6418843269348,
				2.7240014076233,
				1.7206630706787,
				2.3426761627197
			}
		},
		epm_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_taunting_sienna_01",
				"epm_taunting_sienna_02",
				"epm_taunting_sienna_03",
				"epm_taunting_sienna_04",
				"epm_taunting_sienna_05",
				"epm_taunting_sienna_06",
				"epm_taunting_sienna_07",
				"epm_taunting_sienna_08",
				"epm_taunting_sienna_09",
				"epm_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_taunting_sienna_01",
				"epm_taunting_sienna_02",
				"epm_taunting_sienna_03",
				"epm_taunting_sienna_04",
				"epm_taunting_sienna_05",
				"epm_taunting_sienna_06",
				"epm_taunting_sienna_07",
				"epm_taunting_sienna_08",
				"epm_taunting_sienna_09",
				"epm_taunting_sienna_10"
			},
			sound_events_duration = {
				3.014714717865,
				2.1331362724304,
				4.2323126792908,
				3.2016017436981,
				2.8023428916931,
				4.0152215957642,
				1.6121175289154,
				1.9471929073334,
				3.125147819519,
				2.3634414672852
			}
		},
		epm_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_ability_horde_a_01",
				"epm_vs_ability_horde_a_02",
				"epm_vs_ability_horde_a_03",
				"epm_vs_ability_horde_a_04",
				"epm_vs_ability_horde_a_05",
				"epm_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_ability_horde_a_01",
				"epm_vs_ability_horde_a_02",
				"epm_vs_ability_horde_a_03",
				"epm_vs_ability_horde_a_04",
				"epm_vs_ability_horde_a_05",
				"epm_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				1.5249999761581,
				2.1949999332428,
				2.3599998950958,
				1.7949999570847,
				2.6050000190735,
				3.1600000858307
			}
		},
		epm_vs_downed_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_downed_hero_a_01",
				"epm_vs_downed_hero_a_02",
				"epm_vs_downed_hero_a_03",
				"epm_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_downed_hero_a_01",
				"epm_vs_downed_hero_a_02",
				"epm_vs_downed_hero_a_03",
				"epm_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				1.9199999570847,
				3.1500000953674,
				2.2449998855591,
				3.170000076294
			}
		},
		epm_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_globadier_hitting_many_a_01",
				"epm_vs_globadier_hitting_many_a_02",
				"epm_vs_globadier_hitting_many_a_03",
				"epm_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_globadier_hitting_many_a_01",
				"epm_vs_globadier_hitting_many_a_02",
				"epm_vs_globadier_hitting_many_a_03",
				"epm_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				3.8849999904633,
				3.3150000572205,
				3.1449999809265,
				4.289999961853
			}
		},
		epm_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_globadier_missing_globe_a_01",
				"epm_vs_globadier_missing_globe_a_02",
				"epm_vs_globadier_missing_globe_a_03",
				"epm_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_globadier_missing_globe_a_01",
				"epm_vs_globadier_missing_globe_a_02",
				"epm_vs_globadier_missing_globe_a_03",
				"epm_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				1.9750000238419,
				1.8099999427795,
				1.8799999952316,
				2.625
			}
		},
		epm_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_heroes_objective_almost_completed_b_01",
				"epm_vs_heroes_objective_almost_completed_b_02",
				"epm_vs_heroes_objective_almost_completed_b_03",
				"epm_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_heroes_objective_almost_completed_b_01",
				"epm_vs_heroes_objective_almost_completed_b_02",
				"epm_vs_heroes_objective_almost_completed_b_03",
				"epm_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				2.170000076294,
				1.4349999427795,
				1.6000000238419,
				1.4550000429153
			}
		},
		epm_vs_hook_success_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_hook_success_a_01",
				"epm_vs_hook_success_a_02",
				"epm_vs_hook_success_a_03",
				"epm_vs_hook_success_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_hook_success_a_01",
				"epm_vs_hook_success_a_02",
				"epm_vs_hook_success_a_03",
				"epm_vs_hook_success_a_04"
			},
			sound_events_duration = {
				2.4849998950958,
				2.5350000858307,
				1.6100000143051,
				1.6900000572205
			}
		},
		epm_vs_many_heroes_incapacitated_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_many_heroes_incapacitated_a_01",
				"epm_vs_many_heroes_incapacitated_a_02",
				"epm_vs_many_heroes_incapacitated_a_03",
				"epm_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_many_heroes_incapacitated_a_01",
				"epm_vs_many_heroes_incapacitated_a_02",
				"epm_vs_many_heroes_incapacitated_a_03",
				"epm_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.3250000476837,
				2.2400000095367,
				1.4349999427795,
				2.1500000953674
			}
		},
		epm_vs_packmaster_hoisted_player_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_packmaster_hoisted_player_a_01",
				"epm_vs_packmaster_hoisted_player_a_02",
				"epm_vs_packmaster_hoisted_player_a_03",
				"epm_vs_packmaster_hoisted_player_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_packmaster_hoisted_player_a_01",
				"epm_vs_packmaster_hoisted_player_a_02",
				"epm_vs_packmaster_hoisted_player_a_03",
				"epm_vs_packmaster_hoisted_player_a_04"
			},
			sound_events_duration = {
				2.6150000095367,
				1.875,
				1.5,
				3.1150000095367
			}
		},
		epm_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 6.9549999237061
			}
		},
		epm_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.2750000953674
			}
		},
		epm_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 7.0949997901917
			}
		},
		epm_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.8800001144409
			}
		},
		epm_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 5.2300000190735
			}
		},
		epm_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 2.164999961853
			}
		},
		epm_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.5199999809265
			}
		},
		epm_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 3.539999961853
			}
		},
		epm_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.4250001907349
			}
		},
		epm_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 4.8000001907349
			}
		},
		epm_vs_pact_proximity_banter_seven_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_seven_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_seven_a_01"
			},
			sound_events_duration = {
				[1] = 3.1349999904633
			}
		},
		epm_vs_pact_proximity_banter_seventeen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_seventeen_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_seventeen_a_01"
			},
			sound_events_duration = {
				[1] = 4
			}
		},
		epm_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 7.0149998664856
			}
		},
		epm_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 8.6850004196167
			}
		},
		epm_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 2.4400000572205
			}
		},
		epm_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 6.0749998092651
			}
		},
		epm_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 7.8099999427795
			}
		},
		epm_vs_pact_proximity_banter_twelve_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_twelve_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_twelve_a_01"
			},
			sound_events_duration = {
				[1] = 4.3200001716614
			}
		},
		epm_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 8.375
			}
		},
		epm_vs_pact_proximity_banter_two_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_pact_proximity_banter_two_a_01"
			},
			sound_events = {
				[1] = "epm_vs_pact_proximity_banter_two_a_01"
			},
			sound_events_duration = {
				[1] = 14.064999580383
			}
		},
		epm_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "epm_vs_passing_hoisted_hero_a_01",
				[2] = "epm_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "epm_vs_passing_hoisted_hero_a_01",
				[2] = "epm_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 2.6349999904633,
				[2] = 2.8250000476837
			}
		},
		epm_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vs_vw_cheer_a_01",
				"epm_vs_vw_cheer_a_02",
				"epm_vs_vw_cheer_a_03",
				"epm_vs_vw_cheer_a_04",
				"epm_vs_vw_cheer_a_05",
				"epm_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vs_vw_cheer_a_01",
				"epm_vs_vw_cheer_a_02",
				"epm_vs_vw_cheer_a_03",
				"epm_vs_vw_cheer_a_04",
				"epm_vs_vw_cheer_a_05",
				"epm_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		epm_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_affirmative_01",
				"epm_vw_affirmative_02",
				"epm_vw_affirmative_03",
				"epm_vw_affirmative_04",
				"epm_vw_affirmative_05",
				"epm_vw_affirmative_06",
				"epm_vw_affirmative_07",
				"epm_vw_affirmative_08",
				"epm_vw_affirmative_09",
				"epm_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_affirmative_01",
				"epm_vw_affirmative_02",
				"epm_vw_affirmative_03",
				"epm_vw_affirmative_04",
				"epm_vw_affirmative_05",
				"epm_vw_affirmative_06",
				"epm_vw_affirmative_07",
				"epm_vw_affirmative_08",
				"epm_vw_affirmative_09",
				"epm_vw_affirmative_10"
			},
			sound_events_duration = {
				0.61444246768951,
				0.5181673169136,
				0.32372918725014,
				0.77584493160248,
				2.332293510437,
				1.0750530958176,
				3.3063719272613,
				3.4583353996277,
				1.3317868709564,
				1.9670141935349
			}
		},
		epm_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_ambush_01",
				"epm_vw_ambush_02",
				"epm_vw_ambush_03",
				"epm_vw_ambush_04",
				"epm_vw_ambush_05",
				"epm_vw_ambush_06",
				"epm_vw_ambush_07",
				"epm_vw_ambush_08",
				"epm_vw_ambush_09",
				"epm_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_ambush_01",
				"epm_vw_ambush_02",
				"epm_vw_ambush_03",
				"epm_vw_ambush_04",
				"epm_vw_ambush_05",
				"epm_vw_ambush_06",
				"epm_vw_ambush_07",
				"epm_vw_ambush_08",
				"epm_vw_ambush_09",
				"epm_vw_ambush_10"
			},
			sound_events_duration = {
				0.6597483754158,
				0.90704345703125,
				2.0481872558594,
				2.1841053962708,
				1.434669137001,
				1.1684966087341,
				0.87212014198303,
				1.7923974990845,
				2.3049211502075,
				0.99859935045242
			}
		},
		epm_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_attack_now_01",
				"epm_vw_attack_now_02",
				"epm_vw_attack_now_03",
				"epm_vw_attack_now_04",
				"epm_vw_attack_now_05",
				"epm_vw_attack_now_06",
				"epm_vw_attack_now_07",
				"epm_vw_attack_now_08",
				"epm_vw_attack_now_09",
				"epm_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_attack_now_01",
				"epm_vw_attack_now_02",
				"epm_vw_attack_now_03",
				"epm_vw_attack_now_04",
				"epm_vw_attack_now_05",
				"epm_vw_attack_now_06",
				"epm_vw_attack_now_07",
				"epm_vw_attack_now_08",
				"epm_vw_attack_now_09",
				"epm_vw_attack_now_10"
			},
			sound_events_duration = {
				0.85984975099564,
				1.3506643772125,
				1.9821162223816,
				1.6168369054794,
				0.74752873182297,
				0.7711256146431,
				1.4403324127197,
				1.8056117296219,
				1.5252811908722,
				3.7556557655334
			}
		},
		epm_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_cover_me_01",
				"epm_vw_cover_me_02",
				"epm_vw_cover_me_03",
				"epm_vw_cover_me_04",
				"epm_vw_cover_me_05",
				"epm_vw_cover_me_06",
				"epm_vw_cover_me_07",
				"epm_vw_cover_me_08",
				"epm_vw_cover_me_09",
				"epm_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_cover_me_01",
				"epm_vw_cover_me_02",
				"epm_vw_cover_me_03",
				"epm_vw_cover_me_04",
				"epm_vw_cover_me_05",
				"epm_vw_cover_me_06",
				"epm_vw_cover_me_07",
				"epm_vw_cover_me_08",
				"epm_vw_cover_me_09",
				"epm_vw_cover_me_10"
			},
			sound_events_duration = {
				0.68523299694061,
				0.5889578461647,
				0.66729938983917,
				0.66635555028915,
				0.98349732160568,
				0.8758956193924,
				1.0788285732269,
				1.9585193395615,
				1.6914030313492,
				1.5639799833298
			}
		},
		epm_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_gather_01",
				"epm_vw_gather_02",
				"epm_vw_gather_03",
				"epm_vw_gather_04",
				"epm_vw_gather_05",
				"epm_vw_gather_06",
				"epm_vw_gather_07",
				"epm_vw_gather_08",
				"epm_vw_gather_09",
				"epm_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_gather_01",
				"epm_vw_gather_02",
				"epm_vw_gather_03",
				"epm_vw_gather_04",
				"epm_vw_gather_05",
				"epm_vw_gather_06",
				"epm_vw_gather_07",
				"epm_vw_gather_08",
				"epm_vw_gather_09",
				"epm_vw_gather_10"
			},
			sound_events_duration = {
				1.2742105722427,
				1.542270898819,
				1.0920429229736,
				2.1331362724304,
				1.2289046049118,
				1.1656650304794,
				1.8207137584686,
				1.2279803752899,
				1.2978073358536,
				2.1897685527802
			}
		},
		epm_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_go_here_01",
				"epm_vw_go_here_02",
				"epm_vw_go_here_03",
				"epm_vw_go_here_04",
				"epm_vw_go_here_05",
				"epm_vw_go_here_06",
				"epm_vw_go_here_07",
				"epm_vw_go_here_08",
				"epm_vw_go_here_09",
				"epm_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_go_here_01",
				"epm_vw_go_here_02",
				"epm_vw_go_here_03",
				"epm_vw_go_here_04",
				"epm_vw_go_here_05",
				"epm_vw_go_here_06",
				"epm_vw_go_here_07",
				"epm_vw_go_here_08",
				"epm_vw_go_here_09",
				"epm_vw_go_here_10"
			},
			sound_events_duration = {
				0.96461987495422,
				1.2081393003464,
				0.7220441699028,
				1.9207643270493,
				1.0958182811737,
				1.5082913637161,
				1.6583672761917,
				1.2657157182693,
				1.0967621803284,
				2.0991566181183
			}
		},
		epm_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_negation_01",
				"epm_vw_negation_02",
				"epm_vw_negation_03",
				"epm_vw_negation_04",
				"epm_vw_negation_05",
				"epm_vw_negation_06",
				"epm_vw_negation_07",
				"epm_vw_negation_08",
				"epm_vw_negation_09",
				"epm_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_negation_01",
				"epm_vw_negation_02",
				"epm_vw_negation_03",
				"epm_vw_negation_04",
				"epm_vw_negation_05",
				"epm_vw_negation_06",
				"epm_vw_negation_07",
				"epm_vw_negation_08",
				"epm_vw_negation_09",
				"epm_vw_negation_10"
			},
			sound_events_duration = {
				0.68428915739059,
				0.61821794509888,
				0.41245338320732,
				2.0245907306671,
				1.8226014375687,
				1.1647212505341,
				0.9693391919136,
				1.5592606067658,
				2.6786954402924,
				2.0481872558594
			}
		},
		epm_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 7,
			category = "player_alerts",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_thanks_01",
				"epm_vw_thanks_02",
				"epm_vw_thanks_03",
				"epm_vw_thanks_04",
				"epm_vw_thanks_05",
				"epm_vw_thanks_06",
				"epm_vw_thanks_07"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_thanks_01",
				"epm_vw_thanks_02",
				"epm_vw_thanks_03",
				"epm_vw_thanks_04",
				"epm_vw_thanks_05",
				"epm_vw_thanks_06",
				"epm_vw_thanks_07"
			},
			sound_events_duration = {
				1.4985773563385,
				1.0977257490158,
				1.0677380561829,
				1.3363883495331,
				0.61996805667877,
				0.73706746101379,
				1.0805590152741
			}
		},
		epm_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"epm_vw_wait_01",
				"epm_vw_wait_02",
				"epm_vw_wait_03",
				"epm_vw_wait_04",
				"epm_vw_wait_05",
				"epm_vw_wait_06",
				"epm_vw_wait_07",
				"epm_vw_wait_08",
				"epm_vw_wait_09",
				"epm_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"epm_vw_wait_01",
				"epm_vw_wait_02",
				"epm_vw_wait_03",
				"epm_vw_wait_04",
				"epm_vw_wait_05",
				"epm_vw_wait_06",
				"epm_vw_wait_07",
				"epm_vw_wait_08",
				"epm_vw_wait_09",
				"epm_vw_wait_10"
			},
			sound_events_duration = {
				1.8660197257996,
				1.3147971630096,
				0.82115089893341,
				0.59745270013809,
				0.8268141746521,
				1.8263770341873,
				1.9660704135895,
				1.4960210323334,
				0.87117624282837,
				1.9906111955643
			}
		},
		erg_spawning_ratling_gunner = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_spawning_ratling_gunner_01",
				"erg_spawning_ratling_gunner_02",
				"erg_spawning_ratling_gunner_03",
				"erg_spawning_ratling_gunner_04",
				"erg_spawning_ratling_gunner_05"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_spawning_ratling_gunner_01",
				"erg_spawning_ratling_gunner_02",
				"erg_spawning_ratling_gunner_03",
				"erg_spawning_ratling_gunner_04",
				"erg_spawning_ratling_gunner_05"
			},
			sound_events_duration = {
				3.2514790296555,
				3.9679791927338,
				3.6999790668488,
				2.9299790859222,
				3.8749792575836
			}
		},
		erg_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_bardin_01",
				"erg_taunting_bardin_02",
				"erg_taunting_bardin_03",
				"erg_taunting_bardin_04",
				"erg_taunting_bardin_05",
				"erg_taunting_bardin_06",
				"erg_taunting_bardin_07",
				"erg_taunting_bardin_08",
				"erg_taunting_bardin_09",
				"erg_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_bardin_01",
				"erg_taunting_bardin_02",
				"erg_taunting_bardin_03",
				"erg_taunting_bardin_04",
				"erg_taunting_bardin_05",
				"erg_taunting_bardin_06",
				"erg_taunting_bardin_07",
				"erg_taunting_bardin_08",
				"erg_taunting_bardin_09",
				"erg_taunting_bardin_10"
			},
			sound_events_duration = {
				3.3309791088104,
				3.0819792747498,
				2.9479792118073,
				3.2409791946411,
				3.2909791469574,
				3.3219792842865,
				2.3059792518616,
				2.1809792518616,
				2.5479791164398,
				2.658979177475
			}
		},
		erg_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_kerillian_01",
				"erg_taunting_kerillian_02",
				"erg_taunting_kerillian_03",
				"erg_taunting_kerillian_04",
				"erg_taunting_kerillian_05",
				"erg_taunting_kerillian_06",
				"erg_taunting_kerillian_07",
				"erg_taunting_kerillian_08",
				"erg_taunting_kerillian_09",
				"erg_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_kerillian_01",
				"erg_taunting_kerillian_02",
				"erg_taunting_kerillian_03",
				"erg_taunting_kerillian_04",
				"erg_taunting_kerillian_05",
				"erg_taunting_kerillian_06",
				"erg_taunting_kerillian_07",
				"erg_taunting_kerillian_08",
				"erg_taunting_kerillian_09",
				"erg_taunting_kerillian_10"
			},
			sound_events_duration = {
				1.9979791641235,
				2.5459792613983,
				4.7189793586731,
				3.5979790687561,
				2.5359792709351,
				2.493979215622,
				1.8509792089462,
				1.9219791889191,
				1.8959791660309,
				2.6259791851044
			}
		},
		erg_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_kruber_01",
				"erg_taunting_kruber_02",
				"erg_taunting_kruber_03",
				"erg_taunting_kruber_04",
				"erg_taunting_kruber_05",
				"erg_taunting_kruber_06",
				"erg_taunting_kruber_07",
				"erg_taunting_kruber_08",
				"erg_taunting_kruber_09",
				"erg_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_kruber_01",
				"erg_taunting_kruber_02",
				"erg_taunting_kruber_03",
				"erg_taunting_kruber_04",
				"erg_taunting_kruber_05",
				"erg_taunting_kruber_06",
				"erg_taunting_kruber_07",
				"erg_taunting_kruber_08",
				"erg_taunting_kruber_09",
				"erg_taunting_kruber_10"
			},
			sound_events_duration = {
				2.9449791908264,
				3.4949791431427,
				3.4159791469574,
				3.2579791545868,
				3.584979057312,
				2.3499791622162,
				1.7949792146683,
				1.8889791965485,
				2.0259792804718,
				2.1419792175293
			}
		},
		erg_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_saltzpyre_01",
				"erg_taunting_saltzpyre_02",
				"erg_taunting_saltzpyre_03",
				"erg_taunting_saltzpyre_04",
				"erg_taunting_saltzpyre_05",
				"erg_taunting_saltzpyre_06",
				"erg_taunting_saltzpyre_07",
				"erg_taunting_saltzpyre_08",
				"erg_taunting_saltzpyre_09",
				"erg_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_saltzpyre_01",
				"erg_taunting_saltzpyre_02",
				"erg_taunting_saltzpyre_03",
				"erg_taunting_saltzpyre_04",
				"erg_taunting_saltzpyre_05",
				"erg_taunting_saltzpyre_06",
				"erg_taunting_saltzpyre_07",
				"erg_taunting_saltzpyre_08",
				"erg_taunting_saltzpyre_09",
				"erg_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				2.4999792575836,
				2.7589790821075,
				2.8369791507721,
				2.7919790744781,
				3.4639792442322,
				2.7019791603088,
				2.3059792518616,
				2.2989792823791,
				2.3589792251587,
				1.9989792108536
			}
		},
		erg_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_taunting_sienna_01",
				"erg_taunting_sienna_02",
				"erg_taunting_sienna_03",
				"erg_taunting_sienna_04",
				"erg_taunting_sienna_05",
				"erg_taunting_sienna_06",
				"erg_taunting_sienna_07",
				"erg_taunting_sienna_08",
				"erg_taunting_sienna_09",
				"erg_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_taunting_sienna_01",
				"erg_taunting_sienna_02",
				"erg_taunting_sienna_03",
				"erg_taunting_sienna_04",
				"erg_taunting_sienna_05",
				"erg_taunting_sienna_06",
				"erg_taunting_sienna_07",
				"erg_taunting_sienna_08",
				"erg_taunting_sienna_09",
				"erg_taunting_sienna_10"
			},
			sound_events_duration = {
				1.9749791622162,
				2.8199791908264,
				2.3409790992737,
				3.1039791107178,
				2.147979259491,
				2.3699791431427,
				1.9579792022705,
				1.8459792137146,
				1.7079792022705,
				2.1649792194366
			}
		},
		erg_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_ability_horde_a_01",
				"erg_vs_ability_horde_a_02",
				"erg_vs_ability_horde_a_03",
				"erg_vs_ability_horde_a_04",
				"erg_vs_ability_horde_a_05",
				"erg_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_ability_horde_a_01",
				"erg_vs_ability_horde_a_02",
				"erg_vs_ability_horde_a_03",
				"erg_vs_ability_horde_a_04",
				"erg_vs_ability_horde_a_05",
				"erg_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				1.6599999666214,
				2.5250000953674,
				3.0999999046326,
				2.085000038147,
				2.5350000858307,
				3.6449999809265
			}
		},
		erg_vs_downed_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_downed_hero_a_01",
				"erg_vs_downed_hero_a_02",
				"erg_vs_downed_hero_a_03",
				"erg_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_downed_hero_a_01",
				"erg_vs_downed_hero_a_02",
				"erg_vs_downed_hero_a_03",
				"erg_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				2.2750000953674,
				3.4000000953674,
				2.8849999904633,
				2.3450000286102
			}
		},
		erg_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_globadier_hitting_many_a_01",
				"erg_vs_globadier_hitting_many_a_02",
				"erg_vs_globadier_hitting_many_a_03",
				"erg_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_globadier_hitting_many_a_01",
				"erg_vs_globadier_hitting_many_a_02",
				"erg_vs_globadier_hitting_many_a_03",
				"erg_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				3.9300000667572,
				2.2249999046326,
				2.5999999046326,
				2.6349999904633
			}
		},
		erg_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_globadier_missing_globe_a_01",
				"erg_vs_globadier_missing_globe_a_02",
				"erg_vs_globadier_missing_globe_a_03",
				"erg_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_globadier_missing_globe_a_01",
				"erg_vs_globadier_missing_globe_a_02",
				"erg_vs_globadier_missing_globe_a_03",
				"erg_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				3.0299999713898,
				2.920000076294,
				2.1300001144409,
				2.3099999427795
			}
		},
		erg_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_heroes_objective_almost_completed_b_01",
				"erg_vs_heroes_objective_almost_completed_b_02",
				"erg_vs_heroes_objective_almost_completed_b_03",
				"erg_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_heroes_objective_almost_completed_b_01",
				"erg_vs_heroes_objective_almost_completed_b_02",
				"erg_vs_heroes_objective_almost_completed_b_03",
				"erg_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				2.3150000572205,
				1.835000038147,
				1.8650000095367,
				2.664999961853
			}
		},
		erg_vs_many_heroes_incapacitated_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_many_heroes_incapacitated_a_01",
				"erg_vs_many_heroes_incapacitated_a_02",
				"erg_vs_many_heroes_incapacitated_a_03",
				"erg_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_many_heroes_incapacitated_a_01",
				"erg_vs_many_heroes_incapacitated_a_02",
				"erg_vs_many_heroes_incapacitated_a_03",
				"erg_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				2.5599999427795,
				2.329999923706,
				3.1349999904633,
				1.9650000333786
			}
		},
		erg_vs_pact_proximity_banter_eight_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_eight_b_01"
			},
			sound_events_duration = {
				[1] = 9.5649995803833
			}
		},
		erg_vs_pact_proximity_banter_eighteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_eighteen_b_01"
			},
			sound_events_duration = {
				[1] = 8.8199996948242
			}
		},
		erg_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 7.9850001335144
			}
		},
		erg_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.5650000572205
			}
		},
		erg_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 3.8949999809265
			}
		},
		erg_vs_pact_proximity_banter_four_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_four_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_four_a_01"
			},
			sound_events_duration = {
				[1] = 9.3999996185303
			}
		},
		erg_vs_pact_proximity_banter_fourteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_fourteen_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_fourteen_a_01"
			},
			sound_events_duration = {
				[1] = 1.4249999523163
			}
		},
		erg_vs_pact_proximity_banter_nine_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_nine_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_nine_a_01"
			},
			sound_events_duration = {
				[1] = 5.9650001525879
			}
		},
		erg_vs_pact_proximity_banter_nineteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_nineteen_a_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_nineteen_a_01"
			},
			sound_events_duration = {
				[1] = 5.7849998474121
			}
		},
		erg_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 12.295000076294
			}
		},
		erg_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 3.3050000667572
			}
		},
		erg_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 4.9800000190735
			}
		},
		erg_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 5.9499998092651
			}
		},
		erg_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 2.3599998950958
			}
		},
		erg_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 2.329999923706
			}
		},
		erg_vs_pact_proximity_banter_thirteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_thirteen_b_01"
			},
			sound_events_duration = {
				[1] = 3.4449999332428
			}
		},
		erg_vs_pact_proximity_banter_three_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_three_b_01"
			},
			sound_events_duration = {
				[1] = 7.5100002288818
			}
		},
		erg_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 5.9800000190735
			}
		},
		erg_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 5.539999961853
			}
		},
		erg_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "erg_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 2.920000076294
			}
		},
		erg_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "erg_vs_passing_hoisted_hero_a_01",
				[2] = "erg_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "erg_vs_passing_hoisted_hero_a_01",
				[2] = "erg_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 4.8049998283386,
				[2] = 4.375
			}
		},
		erg_vs_ratling_hitting_shield_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_ratling_hitting_shield_a_01",
				"erg_vs_ratling_hitting_shield_a_02",
				"erg_vs_ratling_hitting_shield_a_03",
				"erg_vs_ratling_hitting_shield_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_ratling_hitting_shield_a_01",
				"erg_vs_ratling_hitting_shield_a_02",
				"erg_vs_ratling_hitting_shield_a_03",
				"erg_vs_ratling_hitting_shield_a_04"
			},
			sound_events_duration = {
				1.3400000333786,
				3.8650000095367,
				2.25,
				2.0650000572205
			}
		},
		erg_vs_shooting_hooked_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_shooting_hooked_hero_a_01",
				"erg_vs_shooting_hooked_hero_a_02",
				"erg_vs_shooting_hooked_hero_a_03",
				"erg_vs_shooting_hooked_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_shooting_hooked_hero_a_01",
				"erg_vs_shooting_hooked_hero_a_02",
				"erg_vs_shooting_hooked_hero_a_03",
				"erg_vs_shooting_hooked_hero_a_04"
			},
			sound_events_duration = {
				1.8799999952316,
				1.7300000190735,
				1.7699999809265,
				2.085000038147
			}
		},
		erg_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vs_vw_cheer_a_01",
				"erg_vs_vw_cheer_a_02",
				"erg_vs_vw_cheer_a_03",
				"erg_vs_vw_cheer_a_04",
				"erg_vs_vw_cheer_a_05",
				"erg_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vs_vw_cheer_a_01",
				"erg_vs_vw_cheer_a_02",
				"erg_vs_vw_cheer_a_03",
				"erg_vs_vw_cheer_a_04",
				"erg_vs_vw_cheer_a_05",
				"erg_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		erg_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_affirmative_01",
				"erg_vw_affirmative_02",
				"erg_vw_affirmative_03",
				"erg_vw_affirmative_04",
				"erg_vw_affirmative_05",
				"erg_vw_affirmative_06",
				"erg_vw_affirmative_07",
				"erg_vw_affirmative_08",
				"erg_vw_affirmative_09",
				"erg_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_affirmative_01",
				"erg_vw_affirmative_02",
				"erg_vw_affirmative_03",
				"erg_vw_affirmative_04",
				"erg_vw_affirmative_05",
				"erg_vw_affirmative_06",
				"erg_vw_affirmative_07",
				"erg_vw_affirmative_08",
				"erg_vw_affirmative_09",
				"erg_vw_affirmative_10"
			},
			sound_events_duration = {
				0.60197919607162,
				1.5829792022705,
				0.54997915029526,
				1.312979221344,
				2.2299792766571,
				2.3829791545868,
				2.4259791374206,
				3.5909790992737,
				1.7499791383743,
				2.254979133606
			}
		},
		erg_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_ambush_01",
				"erg_vw_ambush_02",
				"erg_vw_ambush_03",
				"erg_vw_ambush_04",
				"erg_vw_ambush_05",
				"erg_vw_ambush_06",
				"erg_vw_ambush_07",
				"erg_vw_ambush_08",
				"erg_vw_ambush_09",
				"erg_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_ambush_01",
				"erg_vw_ambush_02",
				"erg_vw_ambush_03",
				"erg_vw_ambush_04",
				"erg_vw_ambush_05",
				"erg_vw_ambush_06",
				"erg_vw_ambush_07",
				"erg_vw_ambush_08",
				"erg_vw_ambush_09",
				"erg_vw_ambush_10"
			},
			sound_events_duration = {
				1.4229791164398,
				1.7149791717529,
				1.6119791269302,
				1.8339791297913,
				1.8959791660309,
				1.4109791517258,
				1.7899792194366,
				2.6869790554047,
				3.2399792671204,
				1.601979136467
			}
		},
		erg_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_attack_now_01",
				"erg_vw_attack_now_02",
				"erg_vw_attack_now_03",
				"erg_vw_attack_now_04",
				"erg_vw_attack_now_05",
				"erg_vw_attack_now_06",
				"erg_vw_attack_now_07",
				"erg_vw_attack_now_08",
				"erg_vw_attack_now_09",
				"erg_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_attack_now_01",
				"erg_vw_attack_now_02",
				"erg_vw_attack_now_03",
				"erg_vw_attack_now_04",
				"erg_vw_attack_now_05",
				"erg_vw_attack_now_06",
				"erg_vw_attack_now_07",
				"erg_vw_attack_now_08",
				"erg_vw_attack_now_09",
				"erg_vw_attack_now_10"
			},
			sound_events_duration = {
				1.0849791765213,
				2.2239792346954,
				1.8629791736603,
				1.659979224205,
				1.2239791154861,
				0.89097917079926,
				1.7389792203903,
				2.1259791851044,
				1.8439791202545,
				2.4809792041779
			}
		},
		erg_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_cover_me_01",
				"erg_vw_cover_me_02",
				"erg_vw_cover_me_03",
				"erg_vw_cover_me_04",
				"erg_vw_cover_me_05",
				"erg_vw_cover_me_06",
				"erg_vw_cover_me_07",
				"erg_vw_cover_me_08",
				"erg_vw_cover_me_09",
				"erg_vw_cover_me_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_cover_me_01",
				"erg_vw_cover_me_02",
				"erg_vw_cover_me_03",
				"erg_vw_cover_me_04",
				"erg_vw_cover_me_05",
				"erg_vw_cover_me_06",
				"erg_vw_cover_me_07",
				"erg_vw_cover_me_08",
				"erg_vw_cover_me_09",
				"erg_vw_cover_me_10"
			},
			sound_events_duration = {
				0.85597914457321,
				0.82597917318344,
				0.93397915363312,
				1.351979136467,
				1.0279791355133,
				0.93797916173935,
				1.1699792146683,
				2.1819791793823,
				1.7609791755676,
				2.0389790534973
			}
		},
		erg_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_gather_01",
				"erg_vw_gather_02",
				"erg_vw_gather_03",
				"erg_vw_gather_04",
				"erg_vw_gather_05",
				"erg_vw_gather_06",
				"erg_vw_gather_07",
				"erg_vw_gather_08",
				"erg_vw_gather_09",
				"erg_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_gather_01",
				"erg_vw_gather_02",
				"erg_vw_gather_03",
				"erg_vw_gather_04",
				"erg_vw_gather_05",
				"erg_vw_gather_06",
				"erg_vw_gather_07",
				"erg_vw_gather_08",
				"erg_vw_gather_09",
				"erg_vw_gather_10"
			},
			sound_events_duration = {
				1.3589792251587,
				0.88497918844223,
				1.2009791135788,
				2.5089790821075,
				0.69497919082642,
				0.89597916603088,
				0.98897916078568,
				1.3069791793823,
				1.6699792146683,
				0.6319791674614
			}
		},
		erg_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_go_here_01",
				"erg_vw_go_here_02",
				"erg_vw_go_here_03",
				"erg_vw_go_here_04",
				"erg_vw_go_here_05",
				"erg_vw_go_here_06",
				"erg_vw_go_here_07",
				"erg_vw_go_here_08",
				"erg_vw_go_here_09",
				"erg_vw_go_here_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_go_here_01",
				"erg_vw_go_here_02",
				"erg_vw_go_here_03",
				"erg_vw_go_here_04",
				"erg_vw_go_here_05",
				"erg_vw_go_here_06",
				"erg_vw_go_here_07",
				"erg_vw_go_here_08",
				"erg_vw_go_here_09",
				"erg_vw_go_here_10"
			},
			sound_events_duration = {
				1.2389792203903,
				1.6889791488648,
				1.1829792261124,
				1.7989791631699,
				1.9579792022705,
				2.4759790897369,
				2.5479791164398,
				1.2319791316986,
				1.7119791507721,
				2.9859790802002
			}
		},
		erg_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_negation_01",
				"erg_vw_negation_02",
				"erg_vw_negation_03",
				"erg_vw_negation_04",
				"erg_vw_negation_05",
				"erg_vw_negation_06",
				"erg_vw_negation_07",
				"erg_vw_negation_08",
				"erg_vw_negation_09",
				"erg_vw_negation_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_negation_01",
				"erg_vw_negation_02",
				"erg_vw_negation_03",
				"erg_vw_negation_04",
				"erg_vw_negation_05",
				"erg_vw_negation_06",
				"erg_vw_negation_07",
				"erg_vw_negation_08",
				"erg_vw_negation_09",
				"erg_vw_negation_10"
			},
			sound_events_duration = {
				0.948979139328,
				0.96997916698456,
				1.0089792013168,
				2.0769791603088,
				2.1339790821075,
				1.601979136467,
				1.5949791669846,
				1.3619791269302,
				3.0279791355133,
				1.7209792137146
			}
		},
		erg_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 7,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 7,
			category = "player_alerts",
			dialogue_animations_n = 7,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_thanks_01",
				"erg_vw_thanks_02",
				"erg_vw_thanks_03",
				"erg_vw_thanks_04",
				"erg_vw_thanks_05",
				"erg_vw_thanks_06",
				"erg_vw_thanks_07"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_thanks_01",
				"erg_vw_thanks_02",
				"erg_vw_thanks_03",
				"erg_vw_thanks_04",
				"erg_vw_thanks_05",
				"erg_vw_thanks_06",
				"erg_vw_thanks_07"
			},
			sound_events_duration = {
				1.2559791505337,
				0.95097917318344,
				1.2859791517258,
				1.227979183197,
				1.5129791498184,
				2.0469791889191,
				1.6394791603088
			}
		},
		erg_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"erg_vw_wait_01",
				"erg_vw_wait_02",
				"erg_vw_wait_03",
				"erg_vw_wait_04",
				"erg_vw_wait_05",
				"erg_vw_wait_06",
				"erg_vw_wait_07",
				"erg_vw_wait_08",
				"erg_vw_wait_09",
				"erg_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"erg_vw_wait_01",
				"erg_vw_wait_02",
				"erg_vw_wait_03",
				"erg_vw_wait_04",
				"erg_vw_wait_05",
				"erg_vw_wait_06",
				"erg_vw_wait_07",
				"erg_vw_wait_08",
				"erg_vw_wait_09",
				"erg_vw_wait_10"
			},
			sound_events_duration = {
				1.6839791536331,
				1.3969792127609,
				0.69597917795181,
				0.78597915172577,
				0.94797915220261,
				2.5479791164398,
				1.6339792013168,
				1.9889792203903,
				1.5549792051315,
				3.2249791622162
			}
		},
		ewt_spawning_warpfire_thrower = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 5,
			category = "player_alerts",
			dialogue_animations_n = 5,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_spawning_warpfire_thrower_01",
				"ewt_spawning_warpfire_thrower_02",
				"ewt_spawning_warpfire_thrower_03",
				"ewt_spawning_warpfire_thrower_04",
				"ewt_spawning_warpfire_thrower_05"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_spawning_warpfire_thrower_01",
				"ewt_spawning_warpfire_thrower_02",
				"ewt_spawning_warpfire_thrower_03",
				"ewt_spawning_warpfire_thrower_04",
				"ewt_spawning_warpfire_thrower_05"
			},
			sound_events_duration = {
				6.410388469696,
				5.9884572029114,
				4.8433690071106,
				6.163074016571,
				3.7080764770508
			}
		},
		ewt_taunting_bardin = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_bardin_01",
				"ewt_taunting_bardin_02",
				"ewt_taunting_bardin_03",
				"ewt_taunting_bardin_04",
				"ewt_taunting_bardin_06",
				"ewt_taunting_bardin_07",
				"ewt_taunting_bardin_08",
				"ewt_taunting_bardin_09",
				"ewt_taunting_bardin_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_bardin_01",
				"ewt_taunting_bardin_02",
				"ewt_taunting_bardin_03",
				"ewt_taunting_bardin_04",
				"ewt_taunting_bardin_06",
				"ewt_taunting_bardin_07",
				"ewt_taunting_bardin_08",
				"ewt_taunting_bardin_09",
				"ewt_taunting_bardin_10"
			},
			sound_events_duration = {
				3.4706256389618,
				2.5295631885529,
				2.8637144565582,
				3.6197576522827,
				4.6655702590942,
				2.499359369278,
				1.4733877182007,
				1.9896869659424,
				1.6649942398071
			}
		},
		ewt_taunting_kerillian = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_kerillian_01",
				"ewt_taunting_kerillian_02",
				"ewt_taunting_kerillian_03",
				"ewt_taunting_kerillian_04",
				"ewt_taunting_kerillian_05",
				"ewt_taunting_kerillian_06",
				"ewt_taunting_kerillian_07",
				"ewt_taunting_kerillian_08",
				"ewt_taunting_kerillian_09",
				"ewt_taunting_kerillian_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_kerillian_01",
				"ewt_taunting_kerillian_02",
				"ewt_taunting_kerillian_03",
				"ewt_taunting_kerillian_04",
				"ewt_taunting_kerillian_05",
				"ewt_taunting_kerillian_06",
				"ewt_taunting_kerillian_07",
				"ewt_taunting_kerillian_08",
				"ewt_taunting_kerillian_09",
				"ewt_taunting_kerillian_10"
			},
			sound_events_duration = {
				2.371955871582,
				3.7349104881287,
				4.7410607337952,
				3.2818312644959,
				2.4096913337708,
				1.8952797651291,
				2.0066568851471,
				1.935866355896,
				1.6621625423431,
				4.1709804534912
			}
		},
		ewt_taunting_kruber = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_kruber_01",
				"ewt_taunting_kruber_02",
				"ewt_taunting_kruber_03",
				"ewt_taunting_kruber_04",
				"ewt_taunting_kruber_05",
				"ewt_taunting_kruber_06",
				"ewt_taunting_kruber_07",
				"ewt_taunting_kruber_08",
				"ewt_taunting_kruber_09",
				"ewt_taunting_kruber_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_kruber_01",
				"ewt_taunting_kruber_02",
				"ewt_taunting_kruber_03",
				"ewt_taunting_kruber_04",
				"ewt_taunting_kruber_05",
				"ewt_taunting_kruber_06",
				"ewt_taunting_kruber_07",
				"ewt_taunting_kruber_08",
				"ewt_taunting_kruber_09",
				"ewt_taunting_kruber_10"
			},
			sound_events_duration = {
				3.3771820068359,
				5.0808553695679,
				3.4158809185028,
				4.5636320114136,
				3.2299180030823,
				2.1105029582977,
				1.7103002071381,
				2.1661715507507,
				1.6347901821136,
				3.4205806255341
			}
		},
		ewt_taunting_saltzpyre = {
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_saltzpyre_01",
				"ewt_taunting_saltzpyre_02",
				"ewt_taunting_saltzpyre_03",
				"ewt_taunting_saltzpyre_04",
				"ewt_taunting_saltzpyre_05",
				"ewt_taunting_saltzpyre_07",
				"ewt_taunting_saltzpyre_08",
				"ewt_taunting_saltzpyre_09",
				"ewt_taunting_saltzpyre_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_saltzpyre_01",
				"ewt_taunting_saltzpyre_02",
				"ewt_taunting_saltzpyre_03",
				"ewt_taunting_saltzpyre_04",
				"ewt_taunting_saltzpyre_05",
				"ewt_taunting_saltzpyre_07",
				"ewt_taunting_saltzpyre_08",
				"ewt_taunting_saltzpyre_09",
				"ewt_taunting_saltzpyre_10"
			},
			sound_events_duration = {
				5.8453936576843,
				4.8581013679504,
				3.353565454483,
				3.7075183391571,
				5.8954381942749,
				1.4157916307449,
				1.4695925712585,
				1.6008106470108,
				1.8546931743622
			}
		},
		ewt_taunting_sienna = {
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_taunting_sienna_01",
				"ewt_taunting_sienna_02",
				"ewt_taunting_sienna_03",
				"ewt_taunting_sienna_04",
				"ewt_taunting_sienna_05",
				"ewt_taunting_sienna_06",
				"ewt_taunting_sienna_07",
				"ewt_taunting_sienna_08",
				"ewt_taunting_sienna_09",
				"ewt_taunting_sienna_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_taunting_sienna_01",
				"ewt_taunting_sienna_02",
				"ewt_taunting_sienna_03",
				"ewt_taunting_sienna_04",
				"ewt_taunting_sienna_05",
				"ewt_taunting_sienna_06",
				"ewt_taunting_sienna_07",
				"ewt_taunting_sienna_08",
				"ewt_taunting_sienna_09",
				"ewt_taunting_sienna_10"
			},
			sound_events_duration = {
				1.6432851552963,
				5.3527107238769,
				4.2040157318115,
				3.718864440918,
				5.1006960868835,
				3.0185098648071,
				2.2020585536957,
				1.6999175548554,
				3.5130999088287,
				3.6518495082855
			}
		},
		ewt_vs_ability_horde_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_ability_horde_a_01",
				"ewt_vs_ability_horde_a_02",
				"ewt_vs_ability_horde_a_03",
				"ewt_vs_ability_horde_a_04",
				"ewt_vs_ability_horde_a_05",
				"ewt_vs_ability_horde_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_ability_horde_a_01",
				"ewt_vs_ability_horde_a_02",
				"ewt_vs_ability_horde_a_03",
				"ewt_vs_ability_horde_a_04",
				"ewt_vs_ability_horde_a_05",
				"ewt_vs_ability_horde_a_06"
			},
			sound_events_duration = {
				2.6600933074951,
				4.0674785375595,
				3.8313426971435,
				3.5708532333374,
				4.6096258163452,
				4.6405284404755
			}
		},
		ewt_vs_downed_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_downed_hero_a_01",
				"ewt_vs_downed_hero_a_02",
				"ewt_vs_downed_hero_a_03",
				"ewt_vs_downed_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_downed_hero_a_01",
				"ewt_vs_downed_hero_a_02",
				"ewt_vs_downed_hero_a_03",
				"ewt_vs_downed_hero_a_04"
			},
			sound_events_duration = {
				2.5980532169342,
				3.0196701288223,
				2.363697052002,
				1.9011200070381
			}
		},
		ewt_vs_globadier_hitting_many_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_globadier_hitting_many_a_01",
				"ewt_vs_globadier_hitting_many_a_02",
				"ewt_vs_globadier_hitting_many_a_03",
				"ewt_vs_globadier_hitting_many_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_globadier_hitting_many_a_01",
				"ewt_vs_globadier_hitting_many_a_02",
				"ewt_vs_globadier_hitting_many_a_03",
				"ewt_vs_globadier_hitting_many_a_04"
			},
			sound_events_duration = {
				1.9959400892258,
				1.739933848381,
				2.507972240448,
				2.1215834617615
			}
		},
		ewt_vs_globadier_missing_globe_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_globadier_missing_globe_a_01",
				"ewt_vs_globadier_missing_globe_a_02",
				"ewt_vs_globadier_missing_globe_a_03",
				"ewt_vs_globadier_missing_globe_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_globadier_missing_globe_a_01",
				"ewt_vs_globadier_missing_globe_a_02",
				"ewt_vs_globadier_missing_globe_a_03",
				"ewt_vs_globadier_missing_globe_a_04"
			},
			sound_events_duration = {
				3.1237223148346,
				1.90516102314,
				2.0608412027359,
				2.4785154461861
			}
		},
		ewt_vs_heroes_objective_almost_completed_b = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_heroes_objective_almost_completed_b_01",
				"ewt_vs_heroes_objective_almost_completed_b_02",
				"ewt_vs_heroes_objective_almost_completed_b_03",
				"ewt_vs_heroes_objective_almost_completed_b_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_heroes_objective_almost_completed_b_01",
				"ewt_vs_heroes_objective_almost_completed_b_02",
				"ewt_vs_heroes_objective_almost_completed_b_03",
				"ewt_vs_heroes_objective_almost_completed_b_04"
			},
			sound_events_duration = {
				1.1141255497932,
				0.90077060461044,
				1.3559048771858,
				1.2942777872086
			}
		},
		ewt_vs_many_heroes_incapacitated_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_many_heroes_incapacitated_a_01",
				"ewt_vs_many_heroes_incapacitated_a_02",
				"ewt_vs_many_heroes_incapacitated_a_03",
				"ewt_vs_many_heroes_incapacitated_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_many_heroes_incapacitated_a_01",
				"ewt_vs_many_heroes_incapacitated_a_02",
				"ewt_vs_many_heroes_incapacitated_a_03",
				"ewt_vs_many_heroes_incapacitated_a_04"
			},
			sound_events_duration = {
				3.9265365600586,
				3.1635518074036,
				1.9644775390625,
				2.2005839347839
			}
		},
		ewt_vs_pact_proximity_banter_eight_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_eight_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_eight_a_01"
			},
			sound_events_duration = {
				[1] = 4.6497015953064
			}
		},
		ewt_vs_pact_proximity_banter_eighteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_eighteen_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_eighteen_a_01"
			},
			sound_events_duration = {
				[1] = 2.5601408481598
			}
		},
		ewt_vs_pact_proximity_banter_eleven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_eleven_b_01"
			},
			sound_events_duration = {
				[1] = 5.602463722229
			}
		},
		ewt_vs_pact_proximity_banter_fifteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_fifteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.1994142532349
			}
		},
		ewt_vs_pact_proximity_banter_five_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_five_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_five_b_01"
			},
			sound_events_duration = {
				[1] = 3.8701301813126
			}
		},
		ewt_vs_pact_proximity_banter_four_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_four_b_01"
			},
			sound_events_duration = {
				[1] = 4.4744849205017
			}
		},
		ewt_vs_pact_proximity_banter_fourteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_fourteen_b_01"
			},
			sound_events_duration = {
				[1] = 4.5179915428162
			}
		},
		ewt_vs_pact_proximity_banter_nine_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_nine_b_01"
			},
			sound_events_duration = {
				[1] = 5.6720547676086
			}
		},
		ewt_vs_pact_proximity_banter_nineteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_nineteen_b_01"
			},
			sound_events_duration = {
				[1] = 9.2653846740723
			}
		},
		ewt_vs_pact_proximity_banter_one_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_one_b_01"
			},
			sound_events_duration = {
				[1] = 5.486819267273
			}
		},
		ewt_vs_pact_proximity_banter_seven_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_seven_b_01"
			},
			sound_events_duration = {
				[1] = 3.2660998106003
			}
		},
		ewt_vs_pact_proximity_banter_seventeen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_seventeen_b_01"
			},
			sound_events_duration = {
				[1] = 9.3473834991455
			}
		},
		ewt_vs_pact_proximity_banter_six_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_six_b_01"
			},
			sound_events_duration = {
				[1] = 5.5603041648865
			}
		},
		ewt_vs_pact_proximity_banter_sixteen_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_sixteen_b_01"
			},
			sound_events_duration = {
				[1] = 6.0896210670471
			}
		},
		ewt_vs_pact_proximity_banter_ten_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_ten_b_01"
			},
			sound_events_duration = {
				[1] = 3.3715286254883
			}
		},
		ewt_vs_pact_proximity_banter_thirteen_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_thirteen_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_thirteen_a_01"
			},
			sound_events_duration = {
				[1] = 2.6029789447784
			}
		},
		ewt_vs_pact_proximity_banter_three_a = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_three_a_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_three_a_01"
			},
			sound_events_duration = {
				[1] = 6.1569700241089
			}
		},
		ewt_vs_pact_proximity_banter_twelve_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_twelve_b_01"
			},
			sound_events_duration = {
				[1] = 4.1327238082886
			}
		},
		ewt_vs_pact_proximity_banter_twenty_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_twenty_b_01"
			},
			sound_events_duration = {
				[1] = 5.6813364028931
			}
		},
		ewt_vs_pact_proximity_banter_two_b = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "story_talk",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events = {
				[1] = "ewt_vs_pact_proximity_banter_two_b_01"
			},
			sound_events_duration = {
				[1] = 4.6114153862
			}
		},
		ewt_vs_passing_hoisted_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 2,
			category = "player_feedback",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral",
				[2] = "face_neutral"
			},
			localization_strings = {
				[1] = "ewt_vs_passing_hoisted_hero_a_01",
				[2] = "ewt_vs_passing_hoisted_hero_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "ewt_vs_passing_hoisted_hero_a_01",
				[2] = "ewt_vs_passing_hoisted_hero_a_02"
			},
			sound_events_duration = {
				[1] = 4.0856580734253,
				[2] = 3.5028944015503
			}
		},
		ewt_vs_shooting_hooked_hero_a = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 4,
			category = "player_feedback",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_shooting_hooked_hero_a_01",
				"ewt_vs_shooting_hooked_hero_a_02",
				"ewt_vs_shooting_hooked_hero_a_03",
				"ewt_vs_shooting_hooked_hero_a_04"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_shooting_hooked_hero_a_01",
				"ewt_vs_shooting_hooked_hero_a_02",
				"ewt_vs_shooting_hooked_hero_a_03",
				"ewt_vs_shooting_hooked_hero_a_04"
			},
			sound_events_duration = {
				3.926428437233,
				2.5624907016754,
				3.5144469738007,
				4.0172667503357
			}
		},
		ewt_vs_vw_cheer_a = {
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 6,
			category = "player_feedback",
			dialogue_animations_n = 6,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vs_vw_cheer_a_01",
				"ewt_vs_vw_cheer_a_02",
				"ewt_vs_vw_cheer_a_03",
				"ewt_vs_vw_cheer_a_04",
				"ewt_vs_vw_cheer_a_05",
				"ewt_vs_vw_cheer_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vs_vw_cheer_a_01",
				"ewt_vs_vw_cheer_a_02",
				"ewt_vs_vw_cheer_a_03",
				"ewt_vs_vw_cheer_a_04",
				"ewt_vs_vw_cheer_a_05",
				"ewt_vs_vw_cheer_a_06"
			},
			sound_events_duration = {
				2.068696975708,
				2.4156887531281,
				2.1487691402435,
				2.7026264667511,
				2.181244134903,
				3.1486072540283
			}
		},
		ewt_vw_affirmative = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_affirmative_01",
				"ewt_vw_affirmative_02",
				"ewt_vw_affirmative_03",
				"ewt_vw_affirmative_04",
				"ewt_vw_affirmative_05",
				"ewt_vw_affirmative_06",
				"ewt_vw_affirmative_07",
				"ewt_vw_affirmative_08",
				"ewt_vw_affirmative_09",
				"ewt_vw_affirmative_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_affirmative_01",
				"ewt_vw_affirmative_02",
				"ewt_vw_affirmative_03",
				"ewt_vw_affirmative_04",
				"ewt_vw_affirmative_05",
				"ewt_vw_affirmative_06",
				"ewt_vw_affirmative_07",
				"ewt_vw_affirmative_08",
				"ewt_vw_affirmative_09",
				"ewt_vw_affirmative_10"
			},
			sound_events_duration = {
				0.63992708921432,
				0.77395725250244,
				0.72676348686218,
				1.3497204780579,
				1.9283155202866,
				1.2072151899338,
				2.5795884132385,
				3.5404527187347,
				1.7404843568802,
				2.274717092514
			}
		},
		ewt_vw_ambush = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_ambush_01",
				"ewt_vw_ambush_02",
				"ewt_vw_ambush_03",
				"ewt_vw_ambush_04",
				"ewt_vw_ambush_05",
				"ewt_vw_ambush_06",
				"ewt_vw_ambush_07",
				"ewt_vw_ambush_08",
				"ewt_vw_ambush_09",
				"ewt_vw_ambush_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_ambush_01",
				"ewt_vw_ambush_02",
				"ewt_vw_ambush_03",
				"ewt_vw_ambush_04",
				"ewt_vw_ambush_05",
				"ewt_vw_ambush_06",
				"ewt_vw_ambush_07",
				"ewt_vw_ambush_08",
				"ewt_vw_ambush_09",
				"ewt_vw_ambush_10"
			},
			sound_events_duration = {
				0.67770171165466,
				2.0142078399658,
				2.5314705371857,
				2.2983140945435,
				1.2978073358536,
				1.0401296615601,
				1.8282843828201,
				2.4068596363068,
				3.0732347965241,
				2.1661715507507
			}
		},
		ewt_vw_attack_now = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_attack_now_01",
				"ewt_vw_attack_now_02",
				"ewt_vw_attack_now_03",
				"ewt_vw_attack_now_04",
				"ewt_vw_attack_now_05",
				"ewt_vw_attack_now_06",
				"ewt_vw_attack_now_07",
				"ewt_vw_attack_now_08",
				"ewt_vw_attack_now_09",
				"ewt_vw_attack_now_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_attack_now_01",
				"ewt_vw_attack_now_02",
				"ewt_vw_attack_now_03",
				"ewt_vw_attack_now_04",
				"ewt_vw_attack_now_05",
				"ewt_vw_attack_now_06",
				"ewt_vw_attack_now_07",
				"ewt_vw_attack_now_08",
				"ewt_vw_attack_now_09",
				"ewt_vw_attack_now_10"
			},
			sound_events_duration = {
				2.1350436210632,
				1.6819838285446,
				1.5158424377441,
				1.9188767671585,
				2.6466035842895,
				0.69655954837799,
				1.4073165655136,
				1.5809893608093,
				1.4337253570557,
				3.9415991306305
			}
		},
		ewt_vw_cover_me = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_cover_me_01",
				"ewt_vw_cover_me_02",
				"ewt_vw_cover_me_03",
				"ewt_vw_cover_me_04",
				"ewt_vw_cover_me_05",
				"ewt_vw_cover_me_06",
				"ewt_vw_cover_me_07",
				"ewt_vw_cover_me_09"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_cover_me_01",
				"ewt_vw_cover_me_02",
				"ewt_vw_cover_me_03",
				"ewt_vw_cover_me_04",
				"ewt_vw_cover_me_05",
				"ewt_vw_cover_me_06",
				"ewt_vw_cover_me_07",
				"ewt_vw_cover_me_09"
			},
			sound_events_duration = {
				0.74469709396362,
				0.72676348686218,
				1.3148168325424,
				1.8924679756165,
				1.4554344415665,
				0.8419161438942,
				1.3752248287201,
				1.0495882034302
			}
		},
		ewt_vw_gather = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_gather_01",
				"ewt_vw_gather_02",
				"ewt_vw_gather_03",
				"ewt_vw_gather_04",
				"ewt_vw_gather_05",
				"ewt_vw_gather_06",
				"ewt_vw_gather_07",
				"ewt_vw_gather_08",
				"ewt_vw_gather_09",
				"ewt_vw_gather_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_gather_01",
				"ewt_vw_gather_02",
				"ewt_vw_gather_03",
				"ewt_vw_gather_04",
				"ewt_vw_gather_05",
				"ewt_vw_gather_06",
				"ewt_vw_gather_07",
				"ewt_vw_gather_08",
				"ewt_vw_gather_09",
				"ewt_vw_gather_10"
			},
			sound_events_duration = {
				1.4488273859024,
				0.56252938508987,
				1.0108696222305,
				1.992498755455,
				0.89196115732193,
				0.52005499601364,
				1.5413269996643,
				0.88912951946259,
				1.1184713840485,
				2.4748187065124
			}
		},
		ewt_vw_go_here = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_go_here_01",
				"ewt_vw_go_here_02",
				"ewt_vw_go_here_03",
				"ewt_vw_go_here_04",
				"ewt_vw_go_here_05",
				"ewt_vw_go_here_06",
				"ewt_vw_go_here_07",
				"ewt_vw_go_here_08"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_go_here_01",
				"ewt_vw_go_here_02",
				"ewt_vw_go_here_03",
				"ewt_vw_go_here_04",
				"ewt_vw_go_here_05",
				"ewt_vw_go_here_06",
				"ewt_vw_go_here_07",
				"ewt_vw_go_here_08"
			},
			sound_events_duration = {
				1.2827054262161,
				1.5167862176895,
				0.63426387310028,
				1.2062516212463,
				1.6347705125809,
				2.3115282058716,
				1.9736212491989,
				1.5743625164032
			}
		},
		ewt_vw_negation = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 9,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 9,
			category = "player_alerts",
			dialogue_animations_n = 9,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_negation_01",
				"ewt_vw_negation_02",
				"ewt_vw_negation_03",
				"ewt_vw_negation_04",
				"ewt_vw_negation_05",
				"ewt_vw_negation_06",
				"ewt_vw_negation_07",
				"ewt_vw_negation_08",
				"ewt_vw_negation_09"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_negation_01",
				"ewt_vw_negation_02",
				"ewt_vw_negation_03",
				"ewt_vw_negation_04",
				"ewt_vw_negation_05",
				"ewt_vw_negation_06",
				"ewt_vw_negation_07",
				"ewt_vw_negation_08",
				"ewt_vw_negation_09"
			},
			sound_events_duration = {
				0.75793099403381,
				1.0155889987946,
				2.0000693798065,
				2.1520137786865,
				1.9103817939758,
				1.1137520074844,
				1.3893828392029,
				1.3072460889816,
				2.1690032482147
			}
		},
		ewt_vw_thanks = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 8,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 8,
			category = "player_alerts",
			dialogue_animations_n = 8,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_thanks_01",
				"ewt_vw_thanks_02",
				"ewt_vw_thanks_03",
				"ewt_vw_thanks_04",
				"ewt_vw_thanks_05",
				"ewt_vw_thanks_06",
				"ewt_vw_thanks_07",
				"ewt_vw_thanks_08"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_thanks_01",
				"ewt_vw_thanks_02",
				"ewt_vw_thanks_03",
				"ewt_vw_thanks_04",
				"ewt_vw_thanks_05",
				"ewt_vw_thanks_06",
				"ewt_vw_thanks_07",
				"ewt_vw_thanks_08"
			},
			sound_events_duration = {
				1.2391299009323,
				0.87314265966415,
				1.4217694997788,
				0.94475907087326,
				1.1693028211594,
				0.82583093643188,
				1.347557425499,
				1.0429416894913
			}
		},
		ewt_vw_wait = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_player_vo_pactsworn",
			sound_events_n = 10,
			category = "player_alerts",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"ewt_vw_wait_01",
				"ewt_vw_wait_02",
				"ewt_vw_wait_03",
				"ewt_vw_wait_04",
				"ewt_vw_wait_05",
				"ewt_vw_wait_06",
				"ewt_vw_wait_07",
				"ewt_vw_wait_08",
				"ewt_vw_wait_09",
				"ewt_vw_wait_10"
			},
			randomize_indexes = {},
			sound_events = {
				"ewt_vw_wait_01",
				"ewt_vw_wait_02",
				"ewt_vw_wait_03",
				"ewt_vw_wait_04",
				"ewt_vw_wait_05",
				"ewt_vw_wait_06",
				"ewt_vw_wait_07",
				"ewt_vw_wait_08",
				"ewt_vw_wait_09",
				"ewt_vw_wait_10"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		ewt_walking = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "vs_player_vo_pactsworn",
			category = "player_feedback",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_neutral"
			},
			localization_strings = {
				[1] = "player_combat_walk_normal"
			},
			sound_events = {
				[1] = "player_combat_walk_normal"
			},
			sound_events_duration = {
				[1] = 4.4834024906158
			}
		}
	})
end
