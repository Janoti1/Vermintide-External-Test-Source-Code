return function ()
	define_rule({
		response = "nde_vs_about_to_early_loss_a",
		name = "nde_vs_about_to_early_loss_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_about_to_early_loss"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_about_to_early_win_a",
		name = "nde_vs_about_to_early_win_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_about_to_early_win"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_early_loss_a",
		name = "nde_vs_early_loss_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_early_loss"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_early_win_a",
		name = "nde_vs_early_win_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_early_win"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_gather_up_a",
		name = "nde_vs_gather_up_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_gather_up"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_heroes_last_man_standing_a",
		name = "nde_vs_heroes_last_man_standing_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_last_man_standing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_heroes_team_wipe_a",
		name = "nde_vs_heroes_team_wipe_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_team_wipe"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_match_draw_a",
		name = "nde_vs_match_draw_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_match_draw"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_new_objective_intro_a",
		name = "nde_vs_new_objective_intro_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_objective_completed_agnostic_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"current_objective",
				OP.NEQ,
				"safe_room"
			},
			{
				"global_context",
				"current_objective",
				OP.NEQ,
				"waystone"
			}
		}
	})
	define_rule({
		response = "nde_vs_objective_completed_agnostic_a",
		name = "nde_vs_objective_completed_agnostic_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_objective_completed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_objective_completed_final_safe_room_b",
		name = "nde_vs_objective_completed_final_safe_room_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_objective_completed_agnostic_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"safe_room"
			}
		}
	})
	define_rule({
		response = "nde_vs_objective_completed_final_waystone_b",
		name = "nde_vs_objective_completed_final_waystone_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nde_vs_objective_completed_agnostic_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			},
			{
				"global_context",
				"current_objective",
				OP.EQ,
				"waystone"
			}
		}
	})
	define_rule({
		response = "nde_vs_reached_safe_room_a",
		name = "nde_vs_reached_safe_room_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_reached_safe_room"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_reached_waystone_a",
		name = "nde_vs_reached_waystone_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_reached_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_safe_room_near_a",
		name = "nde_vs_safe_room_near_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_safe_room_near"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_safe_room_round_started_a",
		name = "nde_vs_safe_room_round_started_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_left_safe_room"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_safe_room_start_a",
		name = "nde_vs_safe_room_start_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_round_start"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	define_rule({
		response = "nde_vs_waystone_near_a",
		name = "nde_vs_waystone_near_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"vs_mg_heroes_waystone_near"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_heroes_mission_giver"
			}
		}
	})
	add_dialogues({
		nde_vs_about_to_early_loss_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_about_to_early_loss_a_01",
				"nde_vs_about_to_early_loss_a_02",
				"nde_vs_about_to_early_loss_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_about_to_early_loss_a_01",
				"nde_vs_about_to_early_loss_a_02",
				"nde_vs_about_to_early_loss_a_03"
			},
			sound_events_duration = {
				4.515645980835,
				3.779000043869,
				5.4186878204346
			}
		},
		nde_vs_about_to_early_win_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_heroes",
			sound_events_n = 6,
			category = "npc_talk",
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
				"nde_vs_about_to_early_win_a_01",
				"nde_vs_about_to_early_win_a_02",
				"nde_vs_about_to_early_win_a_03",
				"nde_vs_about_to_early_win_a_04",
				"nde_vs_about_to_early_win_a_05",
				"nde_vs_about_to_early_win_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_about_to_early_win_a_01",
				"nde_vs_about_to_early_win_a_02",
				"nde_vs_about_to_early_win_a_03",
				"nde_vs_about_to_early_win_a_04",
				"nde_vs_about_to_early_win_a_05",
				"nde_vs_about_to_early_win_a_06"
			},
			sound_events_duration = {
				3.0268540382385,
				4.2251043319702,
				4.7083334922791,
				3.3699998855591,
				4.5547294616699,
				3.4207499027252
			}
		},
		nde_vs_early_loss_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_early_loss_a_01",
				"nde_vs_early_loss_a_02",
				"nde_vs_early_loss_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_early_loss_a_01",
				"nde_vs_early_loss_a_02",
				"nde_vs_early_loss_a_03"
			},
			sound_events_duration = {
				3.2439999580383,
				4.75,
				3.8499999046326
			}
		},
		nde_vs_early_win_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_heroes",
			sound_events_n = 6,
			category = "npc_talk",
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
				"nde_vs_early_win_a_01",
				"nde_vs_early_win_a_02",
				"nde_vs_early_win_a_03",
				"nde_vs_early_win_a_04",
				"nde_vs_early_win_a_05",
				"nde_vs_early_win_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_early_win_a_01",
				"nde_vs_early_win_a_02",
				"nde_vs_early_win_a_03",
				"nde_vs_early_win_a_04",
				"nde_vs_early_win_a_05",
				"nde_vs_early_win_a_06"
			},
			sound_events_duration = {
				4.5190000534058,
				4.7630000114441,
				4.3780002593994,
				5.2930002212524,
				4.0723958015442,
				5.764000415802
			}
		},
		nde_vs_gather_up_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_heroes",
			sound_events_n = 6,
			category = "npc_talk",
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
				"nde_vs_gather_up_a_01",
				"nde_vs_gather_up_a_02",
				"nde_vs_gather_up_a_03",
				"nde_vs_gather_up_a_04",
				"nde_vs_gather_up_a_05",
				"nde_vs_gather_up_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_gather_up_a_01",
				"nde_vs_gather_up_a_02",
				"nde_vs_gather_up_a_03",
				"nde_vs_gather_up_a_04",
				"nde_vs_gather_up_a_05",
				"nde_vs_gather_up_a_06"
			},
			sound_events_duration = {
				3.9609999656677,
				5.1339583396912,
				3.2981040477753,
				5.5030002593994,
				4.4670000076294,
				4.1050000190735
			}
		},
		nde_vs_heroes_last_man_standing_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_heroes_last_man_standing_a_01",
				"nde_vs_heroes_last_man_standing_a_02",
				"nde_vs_heroes_last_man_standing_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_heroes_last_man_standing_a_01",
				"nde_vs_heroes_last_man_standing_a_02",
				"nde_vs_heroes_last_man_standing_a_03"
			},
			sound_events_duration = {
				4.1480002403259,
				3.7269999980927,
				4.4950003623962
			}
		},
		nde_vs_heroes_team_wipe_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_heroes",
			sound_events_n = 5,
			category = "npc_talk",
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
				"nde_vs_heroes_team_wipe_a_01",
				"nde_vs_heroes_team_wipe_a_02",
				"nde_vs_heroes_team_wipe_a_03",
				"nde_vs_heroes_team_wipe_a_04",
				"nde_vs_heroes_team_wipe_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_heroes_team_wipe_a_01",
				"nde_vs_heroes_team_wipe_a_02",
				"nde_vs_heroes_team_wipe_a_03",
				"nde_vs_heroes_team_wipe_a_04",
				"nde_vs_heroes_team_wipe_a_05"
			},
			sound_events_duration = {
				3.6380000114441,
				3.210000038147,
				3.3440001010895,
				4.2562294006348,
				3.2860000133514
			}
		},
		nde_vs_match_draw_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_match_draw_a_01",
				"nde_vs_match_draw_a_02",
				"nde_vs_match_draw_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_match_draw_a_01",
				"nde_vs_match_draw_a_02",
				"nde_vs_match_draw_a_03"
			},
			sound_events_duration = {
				5.3597292900085,
				4.1560626029968,
				5.6421670913696
			}
		},
		nde_vs_new_objective_intro_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_heroes",
			sound_events_n = 6,
			category = "npc_talk",
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
				"nde_vs_new_objective_intro_a_01",
				"nde_vs_new_objective_intro_a_02",
				"nde_vs_new_objective_intro_a_03",
				"nde_vs_new_objective_intro_a_04",
				"nde_vs_new_objective_intro_a_05",
				"nde_vs_new_objective_intro_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_new_objective_intro_a_01",
				"nde_vs_new_objective_intro_a_02",
				"nde_vs_new_objective_intro_a_03",
				"nde_vs_new_objective_intro_a_04",
				"nde_vs_new_objective_intro_a_05",
				"nde_vs_new_objective_intro_a_06"
			},
			sound_events_duration = {
				2.0169999599457,
				2.1679999828339,
				2.8559999465942,
				2.7655208110809,
				2.8721873760223,
				3.0592291355133
			}
		},
		nde_vs_objective_completed_agnostic_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_mission_giver_heroes",
			sound_events_n = 10,
			category = "npc_talk",
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
				"nde_vs_objective_completed_agnostic_a_01",
				"nde_vs_objective_completed_agnostic_a_02",
				"nde_vs_objective_completed_agnostic_a_03",
				"nde_vs_objective_completed_agnostic_a_04",
				"nde_vs_objective_completed_agnostic_a_05",
				"nde_vs_objective_completed_agnostic_a_06",
				"nde_vs_objective_completed_agnostic_a_07",
				"nde_vs_objective_completed_agnostic_a_08",
				"nde_vs_objective_completed_agnostic_a_09",
				"nde_vs_objective_completed_agnostic_a_10"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_objective_completed_agnostic_a_01",
				"nde_vs_objective_completed_agnostic_a_02",
				"nde_vs_objective_completed_agnostic_a_03",
				"nde_vs_objective_completed_agnostic_a_04",
				"nde_vs_objective_completed_agnostic_a_05",
				"nde_vs_objective_completed_agnostic_a_06",
				"nde_vs_objective_completed_agnostic_a_07",
				"nde_vs_objective_completed_agnostic_a_08",
				"nde_vs_objective_completed_agnostic_a_09",
				"nde_vs_objective_completed_agnostic_a_10"
			},
			sound_events_duration = {
				3.3840000629425,
				2.441999912262,
				4.0479998588562,
				1.8650000095367,
				1.8589792251587,
				1.8589792251587,
				2.0590000152588,
				2.0269999504089,
				2.4956874847412,
				2.896999835968
			}
		},
		nde_vs_objective_completed_final_safe_room_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_heroes",
			sound_events_n = 5,
			category = "npc_talk",
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
				"nde_vs_objective_completed_final_safe_room_b_01",
				"nde_vs_objective_completed_final_safe_room_b_02",
				"nde_vs_objective_completed_final_safe_room_b_03",
				"nde_vs_objective_completed_final_safe_room_b_04",
				"nde_vs_objective_completed_final_safe_room_b_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_objective_completed_final_safe_room_b_01",
				"nde_vs_objective_completed_final_safe_room_b_02",
				"nde_vs_objective_completed_final_safe_room_b_03",
				"nde_vs_objective_completed_final_safe_room_b_04",
				"nde_vs_objective_completed_final_safe_room_b_05"
			},
			sound_events_duration = {
				2.1480000019074,
				2.0020000934601,
				2.6879999637604,
				2.279833316803,
				3.3559374809265
			}
		},
		nde_vs_objective_completed_final_waystone_b = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_heroes",
			category = "npc_talk",
			dialogue_animations_n = 5,
			sound_events_n = 5,
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
				"nde_vs_objective_completed_final_waystone_b_01",
				"nde_vs_objective_completed_final_waystone_b_02",
				"nde_vs_objective_completed_final_waystone_b_03",
				"nde_vs_objective_completed_final_waystone_b_04",
				"nde_vs_objective_completed_final_waystone_b_05"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"nde_vs_objective_completed_final_waystone_b_01",
				"nde_vs_objective_completed_final_waystone_b_02",
				"nde_vs_objective_completed_final_waystone_b_03",
				"nde_vs_objective_completed_final_waystone_b_04",
				"nde_vs_objective_completed_final_waystone_b_05"
			},
			sound_events_duration = {
				2.8840000629425,
				2.114000082016,
				2.7439999580383,
				2.6637916564941,
				3.480708360672
			}
		},
		nde_vs_reached_safe_room_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 5,
			database = "vs_mission_giver_heroes",
			sound_events_n = 5,
			category = "npc_talk",
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
				"nde_vs_reached_safe_room_a_01",
				"nde_vs_reached_safe_room_a_02",
				"nde_vs_reached_safe_room_a_03",
				"nde_vs_reached_safe_room_a_04",
				"nde_vs_reached_safe_room_a_05"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_reached_safe_room_a_01",
				"nde_vs_reached_safe_room_a_02",
				"nde_vs_reached_safe_room_a_03",
				"nde_vs_reached_safe_room_a_04",
				"nde_vs_reached_safe_room_a_05"
			},
			sound_events_duration = {
				3.4649999141693,
				3.914999961853,
				2.694000005722,
				3.7827084064484,
				3.892395734787
			}
		},
		nde_vs_reached_waystone_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_reached_waystone_a_01",
				"nde_vs_reached_waystone_a_02",
				"nde_vs_reached_waystone_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_reached_waystone_a_01",
				"nde_vs_reached_waystone_a_02",
				"nde_vs_reached_waystone_a_03"
			},
			sound_events_duration = {
				4.0770001411438,
				4.7189998626709,
				6.4109997749329
			}
		},
		nde_vs_safe_room_near_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_safe_room_near_a_01",
				"nde_vs_safe_room_near_a_02",
				"nde_vs_safe_room_near_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_safe_room_near_a_01",
				"nde_vs_safe_room_near_a_02",
				"nde_vs_safe_room_near_a_03"
			},
			sound_events_duration = {
				2.7338125705719,
				2.0170834064484,
				2.5909998416901
			}
		},
		nde_vs_safe_room_round_started_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 6,
			database = "vs_mission_giver_heroes",
			sound_events_n = 6,
			category = "npc_talk",
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
				"nde_vs_safe_room_round_started_a_01",
				"nde_vs_safe_room_round_started_a_02",
				"nde_vs_safe_room_round_started_a_03",
				"nde_vs_safe_room_round_started_a_04",
				"nde_vs_safe_room_round_started_a_05",
				"nde_vs_safe_room_round_started_a_06"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_safe_room_round_started_a_01",
				"nde_vs_safe_room_round_started_a_02",
				"nde_vs_safe_room_round_started_a_03",
				"nde_vs_safe_room_round_started_a_04",
				"nde_vs_safe_room_round_started_a_05",
				"nde_vs_safe_room_round_started_a_06"
			},
			sound_events_duration = {
				2.5480000972748,
				1.4129999876022,
				1.8600000143051,
				2.1380000114441,
				3.1663331985474,
				2.4417083263397
			}
		},
		nde_vs_safe_room_start_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 10,
			database = "vs_mission_giver_heroes",
			sound_events_n = 10,
			category = "npc_talk",
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
				"nde_vs_safe_room_start_a_01",
				"nde_vs_safe_room_start_a_02",
				"nde_vs_safe_room_start_a_03",
				"nde_vs_safe_room_start_a_04",
				"nde_vs_safe_room_start_a_05",
				"nde_vs_safe_room_start_a_06",
				"nde_vs_safe_room_start_a_07",
				"nde_vs_safe_room_start_a_08",
				"nde_vs_safe_room_start_a_09",
				"nde_vs_safe_room_start_a_10"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_safe_room_start_a_01",
				"nde_vs_safe_room_start_a_02",
				"nde_vs_safe_room_start_a_03",
				"nde_vs_safe_room_start_a_04",
				"nde_vs_safe_room_start_a_05",
				"nde_vs_safe_room_start_a_06",
				"nde_vs_safe_room_start_a_07",
				"nde_vs_safe_room_start_a_08",
				"nde_vs_safe_room_start_a_09",
				"nde_vs_safe_room_start_a_10"
			},
			sound_events_duration = {
				4.3730001449585,
				2.9059998989105,
				2.7070000171661,
				3.3361666202545,
				2.4435625076294,
				3.8357498645783,
				2.80504155159,
				3.7699790000916,
				3.920916557312,
				3.6489374637604
			}
		},
		nde_vs_waystone_near_a = {
			only_allies = true,
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "vs_mission_giver_heroes",
			sound_events_n = 3,
			category = "npc_talk",
			dialogue_animations_n = 3,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			localization_strings = {
				"nde_vs_waystone_near_a_01",
				"nde_vs_waystone_near_a_02",
				"nde_vs_waystone_near_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"nde_vs_waystone_near_a_01",
				"nde_vs_waystone_near_a_02",
				"nde_vs_waystone_near_a_03"
			},
			sound_events_duration = {
				2.8053541183472,
				2.4749999046326,
				3.1210000514984
			}
		}
	})
end