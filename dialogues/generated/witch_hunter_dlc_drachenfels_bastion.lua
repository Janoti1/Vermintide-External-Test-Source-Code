return function ()
	define_rule({
		name = "pwh_bastion_intro_line_a",
		response = "pwh_bastion_intro_line_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_intro_line_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_intro_line_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_intro_line_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_intro_line_b",
		response = "pwh_bastion_intro_line_b",
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
				"bastion_intro_line_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_intro_line_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_intro_line_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_intro_line_c",
		response = "pwh_bastion_intro_line_c",
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
				"bastion_intro_line_b"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_intro_line_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_intro_line_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_caves",
		response = "pwh_bastion_vo_caves",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_caves"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_caves",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_caves",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_courtyard_done",
		response = "pwh_bastion_vo_courtyard_done",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_courtyard_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_courtyard_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_courtyard_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_courtyard_first_villager",
		response = "pwh_bastion_vo_courtyard_first_villager",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_courtyard_first_villager"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_courtyard_first_villager",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_courtyard_first_villager",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_entering_courtyard",
		response = "pwh_bastion_vo_entering_courtyard",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_entering_courtyard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_entering_courtyard",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entering_courtyard",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_entering_darkness",
		response = "pwh_bastion_vo_entering_darkness",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_entering_darkness"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_entering_darkness",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entering_darkness",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_entering_finale",
		response = "pwh_bastion_vo_entering_finale",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_entering_finale"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_entering_finale",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entering_finale",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_entrance",
		response = "pwh_bastion_vo_entrance",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_entrance"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_exiting_pwh_bastion",
		response = "pwh_bastion_vo_exiting_pwh_bastion",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_exiting_bastion"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_exiting_bastion",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_exiting_bastion",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_finale_done",
		response = "pwh_bastion_vo_finale_done",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_finale_done"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_finale_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_finale_done",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_finale_missile",
		response = "pwh_bastion_vo_finale_missile",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_finale_missile"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_finale_missile",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_finale_missile",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_finale_tiring",
		response = "pwh_bastion_vo_finale_tiring",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_finale_tiring"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_finale_tiring",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_finale_tiring",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_head_to_surface",
		response = "pwh_bastion_vo_head_to_surface",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_head_to_surface"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_head_to_surface",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_head_to_surface",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_inside_cellblock",
		response = "pwh_bastion_vo_inside_cellblock",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_inside_cellblock"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_inside_cellblock",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_inside_cellblock",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_no_prisoners",
		response = "pwh_bastion_vo_no_prisoners",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_no_prisoners"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_no_prisoners",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_no_prisoners",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_possessed",
		response = "pwh_bastion_vo_possessed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_possessed"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_possessed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_possessed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_bastion_vo_search_cells",
		response = "pwh_bastion_vo_search_cells",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"bastion_vo_search_cells"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"faction_memory",
				"bastion_vo_search_cells",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bastion_vo_search_cells",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_bastion_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 2,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_bastion_intro_line_a_01",
				[2] = "pwh_bastion_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_bastion_intro_line_a_01",
				[2] = "pwh_bastion_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 5.4709792137146,
				[2] = 6.629979133606
			}
		},
		pwh_bastion_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 2,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_bastion_intro_line_b_01",
				[2] = "pwh_bastion_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_bastion_intro_line_b_01",
				[2] = "pwh_bastion_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 6.040979385376,
				[2] = 5.5889792442322
			}
		},
		pwh_bastion_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 2,
			category = "level_talk_must_play",
			dialogue_animations_n = 2,
			dialogue_animations = {
				[1] = "dialogue_talk",
				[2] = "dialogue_talk"
			},
			face_animations = {
				[1] = "face_calm",
				[2] = "face_calm"
			},
			localization_strings = {
				[1] = "pwh_bastion_intro_line_c_01",
				[2] = "pwh_bastion_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_bastion_intro_line_c_01",
				[2] = "pwh_bastion_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 10.245979309082,
				[2] = 6.691978931427
			}
		},
		pwh_bastion_vo_caves = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_caves_01",
				"pwh_bastion_vo_caves_02",
				"pwh_bastion_vo_caves_03",
				"pwh_bastion_vo_caves_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_caves_01",
				"pwh_bastion_vo_caves_02",
				"pwh_bastion_vo_caves_03",
				"pwh_bastion_vo_caves_04"
			},
			sound_events_duration = {
				5.0029792785644,
				5.2359790802002,
				3.6979792118073,
				6.1799793243408
			}
		},
		pwh_bastion_vo_courtyard_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_courtyard_done_01",
				"pwh_bastion_vo_courtyard_done_02",
				"pwh_bastion_vo_courtyard_done_03",
				"pwh_bastion_vo_courtyard_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_courtyard_done_01",
				"pwh_bastion_vo_courtyard_done_02",
				"pwh_bastion_vo_courtyard_done_03",
				"pwh_bastion_vo_courtyard_done_04"
			},
			sound_events_duration = {
				8.4540004730225,
				6.0019793510437,
				7.4389791488647,
				8.0119791030884
			}
		},
		pwh_bastion_vo_courtyard_first_villager = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_courtyard_first_villager_01",
				"pwh_bastion_vo_courtyard_first_villager_02",
				"pwh_bastion_vo_courtyard_first_villager_03",
				"pwh_bastion_vo_courtyard_first_villager_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_courtyard_first_villager_01",
				"pwh_bastion_vo_courtyard_first_villager_02",
				"pwh_bastion_vo_courtyard_first_villager_03",
				"pwh_bastion_vo_courtyard_first_villager_04"
			},
			sound_events_duration = {
				3.1289792060852,
				3.1049792766571,
				1.9449791908264,
				3.0479791164398
			}
		},
		pwh_bastion_vo_entering_courtyard = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_entering_courtyard_01",
				"pwh_bastion_vo_entering_courtyard_02",
				"pwh_bastion_vo_entering_courtyard_03",
				"pwh_bastion_vo_entering_courtyard_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_entering_courtyard_01",
				"pwh_bastion_vo_entering_courtyard_02",
				"pwh_bastion_vo_entering_courtyard_03",
				"pwh_bastion_vo_entering_courtyard_04"
			},
			sound_events_duration = {
				4.8279790878296,
				4.7759790420532,
				2.959979057312,
				4.5529789924622
			}
		},
		pwh_bastion_vo_entering_darkness = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_entering_darkness_01",
				"pwh_bastion_vo_entering_darkness_02",
				"pwh_bastion_vo_entering_darkness_03",
				"pwh_bastion_vo_entering_darkness_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_entering_darkness_01",
				"pwh_bastion_vo_entering_darkness_02",
				"pwh_bastion_vo_entering_darkness_03",
				"pwh_bastion_vo_entering_darkness_04"
			},
			sound_events_duration = {
				3.9829790592194,
				3.2799792289734,
				2.8779792785645,
				3.9799792766571
			}
		},
		pwh_bastion_vo_entering_finale = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_entering_finale_01",
				"pwh_bastion_vo_entering_finale_02",
				"pwh_bastion_vo_entering_finale_03",
				"pwh_bastion_vo_entering_finale_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_entering_finale_01",
				"pwh_bastion_vo_entering_finale_02",
				"pwh_bastion_vo_entering_finale_03",
				"pwh_bastion_vo_entering_finale_04"
			},
			sound_events_duration = {
				8.0079793930054,
				7.955979347229,
				6.5379791259766,
				8.423978805542
			}
		},
		pwh_bastion_vo_entrance = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_entrance_01",
				"pwh_bastion_vo_entrance_02",
				"pwh_bastion_vo_entrance_03",
				"pwh_bastion_vo_entrance_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_entrance_01",
				"pwh_bastion_vo_entrance_02",
				"pwh_bastion_vo_entrance_03",
				"pwh_bastion_vo_entrance_04"
			},
			sound_events_duration = {
				5.8329792022705,
				2.0019791126251,
				4.6289792060852,
				5.4689793586731
			}
		},
		pwh_bastion_vo_exiting_pwh_bastion = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_exiting_pwh_bastion_01",
				"pwh_bastion_vo_exiting_pwh_bastion_02",
				"pwh_bastion_vo_exiting_pwh_bastion_03",
				"pwh_bastion_vo_exiting_pwh_bastion_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_exiting_pwh_bastion_01",
				"pwh_bastion_vo_exiting_pwh_bastion_02",
				"pwh_bastion_vo_exiting_pwh_bastion_03",
				"pwh_bastion_vo_exiting_pwh_bastion_04"
			},
			sound_events_duration = {
				7.0139789581299,
				5.4129791259766,
				5.686999797821,
				6.1339793205261
			}
		},
		pwh_bastion_vo_finale_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_finale_done_01",
				"pwh_bastion_vo_finale_done_02",
				"pwh_bastion_vo_finale_done_03",
				"pwh_bastion_vo_finale_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_finale_done_01",
				"pwh_bastion_vo_finale_done_02",
				"pwh_bastion_vo_finale_done_03",
				"pwh_bastion_vo_finale_done_04"
			},
			sound_events_duration = {
				4.9989790916443,
				3.1939792633057,
				3.6459791660309,
				3.4439792633057
			}
		},
		pwh_bastion_vo_finale_missile = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_finale_missile_01",
				"pwh_bastion_vo_finale_missile_02",
				"pwh_bastion_vo_finale_missile_03",
				"pwh_bastion_vo_finale_missile_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_finale_missile_01",
				"pwh_bastion_vo_finale_missile_02",
				"pwh_bastion_vo_finale_missile_03",
				"pwh_bastion_vo_finale_missile_04"
			},
			sound_events_duration = {
				3.3910000324249,
				3.2329790592194,
				5.691978931427,
				3.0899791717529
			}
		},
		pwh_bastion_vo_finale_tiring = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_finale_tiring_01",
				"pwh_bastion_vo_finale_tiring_02",
				"pwh_bastion_vo_finale_tiring_03",
				"pwh_bastion_vo_finale_tiring_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_finale_tiring_01",
				"pwh_bastion_vo_finale_tiring_02",
				"pwh_bastion_vo_finale_tiring_03",
				"pwh_bastion_vo_finale_tiring_04"
			},
			sound_events_duration = {
				2.0699791908264,
				2.522979259491,
				2.4449791908264,
				4.8849792480469
			}
		},
		pwh_bastion_vo_head_to_surface = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_head_to_surface_01",
				"pwh_bastion_vo_head_to_surface_02",
				"pwh_bastion_vo_head_to_surface_03",
				"pwh_bastion_vo_head_to_surface_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_head_to_surface_01",
				"pwh_bastion_vo_head_to_surface_02",
				"pwh_bastion_vo_head_to_surface_03",
				"pwh_bastion_vo_head_to_surface_04"
			},
			sound_events_duration = {
				1.6509791612625,
				6.2719793319702,
				4.5909790992737,
				5.8009791374206
			}
		},
		pwh_bastion_vo_inside_cellblock = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_inside_cellblock_01",
				"pwh_bastion_vo_inside_cellblock_02",
				"pwh_bastion_vo_inside_cellblock_03",
				"pwh_bastion_vo_inside_cellblock_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_inside_cellblock_01",
				"pwh_bastion_vo_inside_cellblock_02",
				"pwh_bastion_vo_inside_cellblock_03",
				"pwh_bastion_vo_inside_cellblock_04"
			},
			sound_events_duration = {
				2.6659791469574,
				4.9339790344238,
				3.4979791641235,
				6.0009789466858
			}
		},
		pwh_bastion_vo_no_prisoners = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_no_prisoners_01",
				"pwh_bastion_vo_no_prisoners_02",
				"pwh_bastion_vo_no_prisoners_03",
				"pwh_bastion_vo_no_prisoners_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_no_prisoners_01",
				"pwh_bastion_vo_no_prisoners_02",
				"pwh_bastion_vo_no_prisoners_03",
				"pwh_bastion_vo_no_prisoners_04"
			},
			sound_events_duration = {
				3.9689791202545,
				4.2039999961853,
				5.1269793510437,
				4.14297914505
			}
		},
		pwh_bastion_vo_possessed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_possessed_01",
				"pwh_bastion_vo_possessed_02",
				"pwh_bastion_vo_possessed_03",
				"pwh_bastion_vo_possessed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_possessed_01",
				"pwh_bastion_vo_possessed_02",
				"pwh_bastion_vo_possessed_03",
				"pwh_bastion_vo_possessed_04"
			},
			sound_events_duration = {
				2.6929790973663,
				3.5029792785645,
				2.2349791526794,
				4.5359792709351
			}
		},
		pwh_bastion_vo_search_cells = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_bastion",
			sound_events_n = 4,
			category = "level_talk_must_play",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			localization_strings = {
				"pwh_bastion_vo_search_cells_01",
				"pwh_bastion_vo_search_cells_02",
				"pwh_bastion_vo_search_cells_03",
				"pwh_bastion_vo_search_cells_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_bastion_vo_search_cells_01",
				"pwh_bastion_vo_search_cells_02",
				"pwh_bastion_vo_search_cells_03",
				"pwh_bastion_vo_search_cells_04"
			},
			sound_events_duration = {
				2.9179792404175,
				4.2359790802002,
				1.3989791870117,
				4.8989791870117
			}
		}
	})
end