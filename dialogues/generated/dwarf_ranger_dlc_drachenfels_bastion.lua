return function ()
	define_rule({
		name = "pdr_bastion_intro_line_a",
		response = "pdr_bastion_intro_line_a",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_intro_line_b",
		response = "pdr_bastion_intro_line_b",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_intro_line_c",
		response = "pdr_bastion_intro_line_c",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_caves",
		response = "pdr_bastion_vo_caves",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_courtyard_done",
		response = "pdr_bastion_vo_courtyard_done",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_courtyard_first_villager",
		response = "pdr_bastion_vo_courtyard_first_villager",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_entering_courtyard",
		response = "pdr_bastion_vo_entering_courtyard",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_entering_darkness",
		response = "pdr_bastion_vo_entering_darkness",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_entering_finale",
		response = "pdr_bastion_vo_entering_finale",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_entrance",
		response = "pdr_bastion_vo_entrance",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_exiting_pdr_bastion",
		response = "pdr_bastion_vo_exiting_pdr_bastion",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_finale_done",
		response = "pdr_bastion_vo_finale_done",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_finale_missile",
		response = "pdr_bastion_vo_finale_missile",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_finale_tiring",
		response = "pdr_bastion_vo_finale_tiring",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_head_to_surface",
		response = "pdr_bastion_vo_head_to_surface",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_inside_cellblock",
		response = "pdr_bastion_vo_inside_cellblock",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_no_prisoners",
		response = "pdr_bastion_vo_no_prisoners",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_possessed",
		response = "pdr_bastion_vo_possessed",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		name = "pdr_bastion_vo_search_cells",
		response = "pdr_bastion_vo_search_cells",
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
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
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
		pdr_bastion_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				[1] = "pdr_bastion_intro_line_a_01",
				[2] = "pdr_bastion_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_bastion_intro_line_a_01",
				[2] = "pdr_bastion_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 3.738979101181,
				[2] = 3.3059792518616
			}
		},
		pdr_bastion_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				[1] = "pdr_bastion_intro_line_b_01",
				[2] = "pdr_bastion_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_bastion_intro_line_b_01",
				[2] = "pdr_bastion_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 3.7849791049957,
				[2] = 4.2819790840149
			}
		},
		pdr_bastion_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				[1] = "pdr_bastion_intro_line_c_01",
				[2] = "pdr_bastion_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_bastion_intro_line_c_01",
				[2] = "pdr_bastion_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 2.6209790706634,
				[2] = 3.8319792747498
			}
		},
		pdr_bastion_vo_caves = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_caves_01",
				"pdr_bastion_vo_caves_02",
				"pdr_bastion_vo_caves_03",
				"pdr_bastion_vo_caves_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_caves_01",
				"pdr_bastion_vo_caves_02",
				"pdr_bastion_vo_caves_03",
				"pdr_bastion_vo_caves_04"
			},
			sound_events_duration = {
				3.7599792480469,
				6.4589791297913,
				4.0439791679382,
				4.1449790000916
			}
		},
		pdr_bastion_vo_courtyard_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_courtyard_done_01",
				"pdr_bastion_vo_courtyard_done_02",
				"pdr_bastion_vo_courtyard_done_03",
				"pdr_bastion_vo_courtyard_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_courtyard_done_01",
				"pdr_bastion_vo_courtyard_done_02",
				"pdr_bastion_vo_courtyard_done_03",
				"pdr_bastion_vo_courtyard_done_04"
			},
			sound_events_duration = {
				3.9189791679382,
				4.2389793395996,
				6.4259791374206,
				4.4329791069031
			}
		},
		pdr_bastion_vo_courtyard_first_villager = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_courtyard_first_villager_01",
				"pdr_bastion_vo_courtyard_first_villager_02",
				"pdr_bastion_vo_courtyard_first_villager_03",
				"pdr_bastion_vo_courtyard_first_villager_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_courtyard_first_villager_01",
				"pdr_bastion_vo_courtyard_first_villager_02",
				"pdr_bastion_vo_courtyard_first_villager_03",
				"pdr_bastion_vo_courtyard_first_villager_04"
			},
			sound_events_duration = {
				1.9199792146683,
				1.7400000095367,
				2.4099791049957,
				2.9989790916443
			}
		},
		pdr_bastion_vo_entering_courtyard = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_entering_courtyard_01",
				"pdr_bastion_vo_entering_courtyard_02",
				"pdr_bastion_vo_entering_courtyard_03",
				"pdr_bastion_vo_entering_courtyard_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_entering_courtyard_01",
				"pdr_bastion_vo_entering_courtyard_02",
				"pdr_bastion_vo_entering_courtyard_03",
				"pdr_bastion_vo_entering_courtyard_04"
			},
			sound_events_duration = {
				4.2889790534973,
				3.4409792423248,
				2.1199791431427,
				1.2619792222977
			}
		},
		pdr_bastion_vo_entering_darkness = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_entering_darkness_01",
				"pdr_bastion_vo_entering_darkness_02",
				"pdr_bastion_vo_entering_darkness_03",
				"pdr_bastion_vo_entering_darkness_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_entering_darkness_01",
				"pdr_bastion_vo_entering_darkness_02",
				"pdr_bastion_vo_entering_darkness_03",
				"pdr_bastion_vo_entering_darkness_04"
			},
			sound_events_duration = {
				4.379979133606,
				2.1609792709351,
				4.5439791679382,
				3.9609792232513
			}
		},
		pdr_bastion_vo_entering_finale = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_entering_finale_01",
				"pdr_bastion_vo_entering_finale_02",
				"pdr_bastion_vo_entering_finale_03",
				"pdr_bastion_vo_entering_finale_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_entering_finale_01",
				"pdr_bastion_vo_entering_finale_02",
				"pdr_bastion_vo_entering_finale_03",
				"pdr_bastion_vo_entering_finale_04"
			},
			sound_events_duration = {
				3.0599792003632,
				3.4099791049957,
				4.6559791564941,
				6.4349789619446
			}
		},
		pdr_bastion_vo_entrance = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_entrance_01",
				"pdr_bastion_vo_entrance_02",
				"pdr_bastion_vo_entrance_03",
				"pdr_bastion_vo_entrance_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_entrance_01",
				"pdr_bastion_vo_entrance_02",
				"pdr_bastion_vo_entrance_03",
				"pdr_bastion_vo_entrance_04"
			},
			sound_events_duration = {
				3.1129791736603,
				2.7469792366028,
				2.8889791965485,
				2.591979265213
			}
		},
		pdr_bastion_vo_exiting_pdr_bastion = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_exiting_pdr_bastion_01",
				"pdr_bastion_vo_exiting_pdr_bastion_02",
				"pdr_bastion_vo_exiting_pdr_bastion_03",
				"pdr_bastion_vo_exiting_pdr_bastion_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_exiting_pdr_bastion_01",
				"pdr_bastion_vo_exiting_pdr_bastion_02",
				"pdr_bastion_vo_exiting_pdr_bastion_03",
				"pdr_bastion_vo_exiting_pdr_bastion_04"
			},
			sound_events_duration = {
				3.863979101181,
				5.2039790153503,
				3.7479791641235,
				4.3669791221619
			}
		},
		pdr_bastion_vo_finale_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_finale_done_01",
				"pdr_bastion_vo_finale_done_02",
				"pdr_bastion_vo_finale_done_03",
				"pdr_bastion_vo_finale_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_finale_done_01",
				"pdr_bastion_vo_finale_done_02",
				"pdr_bastion_vo_finale_done_03",
				"pdr_bastion_vo_finale_done_04"
			},
			sound_events_duration = {
				3.477979183197,
				1.5659791231155,
				2.8869791030884,
				3.9239792823791
			}
		},
		pdr_bastion_vo_finale_missile = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_finale_missile_01",
				"pdr_bastion_vo_finale_missile_02",
				"pdr_bastion_vo_finale_missile_03",
				"pdr_bastion_vo_finale_missile_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_finale_missile_01",
				"pdr_bastion_vo_finale_missile_02",
				"pdr_bastion_vo_finale_missile_03",
				"pdr_bastion_vo_finale_missile_04"
			},
			sound_events_duration = {
				1.7039791345596,
				1.8949791193008,
				2.5119791030884,
				2.7259790897369
			}
		},
		pdr_bastion_vo_finale_tiring = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_finale_tiring_01",
				"pdr_bastion_vo_finale_tiring_02",
				"pdr_bastion_vo_finale_tiring_03",
				"pdr_bastion_vo_finale_tiring_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_finale_tiring_01",
				"pdr_bastion_vo_finale_tiring_02",
				"pdr_bastion_vo_finale_tiring_03",
				"pdr_bastion_vo_finale_tiring_04"
			},
			sound_events_duration = {
				2.3069791793823,
				3.0709791183472,
				2.522979259491,
				2.7689790725708
			}
		},
		pdr_bastion_vo_head_to_surface = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_head_to_surface_01",
				"pdr_bastion_vo_head_to_surface_02",
				"pdr_bastion_vo_head_to_surface_03",
				"pdr_bastion_vo_head_to_surface_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_head_to_surface_01",
				"pdr_bastion_vo_head_to_surface_02",
				"pdr_bastion_vo_head_to_surface_03",
				"pdr_bastion_vo_head_to_surface_04"
			},
			sound_events_duration = {
				2.0269792079926,
				1.2329791784286,
				3.7989792823791,
				2.5549790859222
			}
		},
		pdr_bastion_vo_inside_cellblock = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_inside_cellblock_01",
				"pdr_bastion_vo_inside_cellblock_02",
				"pdr_bastion_vo_inside_cellblock_03",
				"pdr_bastion_vo_inside_cellblock_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_inside_cellblock_01",
				"pdr_bastion_vo_inside_cellblock_02",
				"pdr_bastion_vo_inside_cellblock_03",
				"pdr_bastion_vo_inside_cellblock_04"
			},
			sound_events_duration = {
				2.2459790706634,
				4.044979095459,
				2.4299790859222,
				2.7419791221619
			}
		},
		pdr_bastion_vo_no_prisoners = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_no_prisoners_01",
				"pdr_bastion_vo_no_prisoners_02",
				"pdr_bastion_vo_no_prisoners_03",
				"pdr_bastion_vo_no_prisoners_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_no_prisoners_01",
				"pdr_bastion_vo_no_prisoners_02",
				"pdr_bastion_vo_no_prisoners_03",
				"pdr_bastion_vo_no_prisoners_04"
			},
			sound_events_duration = {
				3.6519792079926,
				3.4029791355133,
				2.0889792442322,
				3.8499791622162
			}
		},
		pdr_bastion_vo_possessed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_possessed_01",
				"pdr_bastion_vo_possessed_02",
				"pdr_bastion_vo_possessed_03",
				"pdr_bastion_vo_possessed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_possessed_01",
				"pdr_bastion_vo_possessed_02",
				"pdr_bastion_vo_possessed_03",
				"pdr_bastion_vo_possessed_04"
			},
			sound_events_duration = {
				2.7439999580383,
				1.2329791784286,
				2.0219790935516,
				1.8559792041779
			}
		},
		pdr_bastion_vo_search_cells = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_bastion",
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
				"pdr_bastion_vo_search_cells_01",
				"pdr_bastion_vo_search_cells_02",
				"pdr_bastion_vo_search_cells_03",
				"pdr_bastion_vo_search_cells_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_bastion_vo_search_cells_01",
				"pdr_bastion_vo_search_cells_02",
				"pdr_bastion_vo_search_cells_03",
				"pdr_bastion_vo_search_cells_04"
			},
			sound_events_duration = {
				1.9399791955948,
				2.2269999980927,
				2.4349792003632,
				3.2179791927338
			}
		}
	})
end