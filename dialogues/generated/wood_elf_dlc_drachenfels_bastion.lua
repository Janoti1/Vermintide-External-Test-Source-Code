return function ()
	define_rule({
		name = "pwe_bastion_intro_line_a",
		response = "pwe_bastion_intro_line_a",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_intro_line_b",
		response = "pwe_bastion_intro_line_b",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_intro_line_c",
		response = "pwe_bastion_intro_line_c",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_caves",
		response = "pwe_bastion_vo_caves",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_courtyard_done",
		response = "pwe_bastion_vo_courtyard_done",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_courtyard_first_villager",
		response = "pwe_bastion_vo_courtyard_first_villager",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_entering_courtyard",
		response = "pwe_bastion_vo_entering_courtyard",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_entering_darkness",
		response = "pwe_bastion_vo_entering_darkness",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_entering_finale",
		response = "pwe_bastion_vo_entering_finale",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_entrance",
		response = "pwe_bastion_vo_entrance",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_exiting_pwe_bastion",
		response = "pwe_bastion_vo_exiting_pwe_bastion",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_finale_done",
		response = "pwe_bastion_vo_finale_done",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_finale_missile",
		response = "pwe_bastion_vo_finale_missile",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_finale_tiring",
		response = "pwe_bastion_vo_finale_tiring",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_head_to_surface",
		response = "pwe_bastion_vo_head_to_surface",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_inside_cellblock",
		response = "pwe_bastion_vo_inside_cellblock",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_no_prisoners",
		response = "pwe_bastion_vo_no_prisoners",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_possessed",
		response = "pwe_bastion_vo_possessed",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		name = "pwe_bastion_vo_search_cells",
		response = "pwe_bastion_vo_search_cells",
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
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
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
		pwe_bastion_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				[1] = "pwe_bastion_intro_line_a_01",
				[2] = "pwe_bastion_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_bastion_intro_line_a_01",
				[2] = "pwe_bastion_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 2.7849791049957,
				[2] = 4.3369793891907
			}
		},
		pwe_bastion_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				[1] = "pwe_bastion_intro_line_b_01",
				[2] = "pwe_bastion_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_bastion_intro_line_b_01",
				[2] = "pwe_bastion_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 4.5659790039063,
				[2] = 4.062979221344
			}
		},
		pwe_bastion_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				[1] = "pwe_bastion_intro_line_c_01",
				[2] = "pwe_bastion_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_bastion_intro_line_c_01",
				[2] = "pwe_bastion_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 6.3999791145325,
				[2] = 6.5509791374206
			}
		},
		pwe_bastion_vo_caves = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_caves_01",
				"pwe_bastion_vo_caves_02",
				"pwe_bastion_vo_caves_03",
				"pwe_bastion_vo_caves_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_caves_01",
				"pwe_bastion_vo_caves_02",
				"pwe_bastion_vo_caves_03",
				"pwe_bastion_vo_caves_04"
			},
			sound_events_duration = {
				3.3739790916443,
				4.1679792404175,
				3.2879791259766,
				2.8609790802002
			}
		},
		pwe_bastion_vo_courtyard_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_courtyard_done_01",
				"pwe_bastion_vo_courtyard_done_02",
				"pwe_bastion_vo_courtyard_done_03",
				"pwe_bastion_vo_courtyard_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_courtyard_done_01",
				"pwe_bastion_vo_courtyard_done_02",
				"pwe_bastion_vo_courtyard_done_03",
				"pwe_bastion_vo_courtyard_done_04"
			},
			sound_events_duration = {
				3.0419790744781,
				2.591979265213,
				4.2699790000916,
				4.2029790878296
			}
		},
		pwe_bastion_vo_courtyard_first_villager = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_courtyard_first_villager_01",
				"pwe_bastion_vo_courtyard_first_villager_02",
				"pwe_bastion_vo_courtyard_first_villager_03",
				"pwe_bastion_vo_courtyard_first_villager_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_courtyard_first_villager_01",
				"pwe_bastion_vo_courtyard_first_villager_02",
				"pwe_bastion_vo_courtyard_first_villager_03",
				"pwe_bastion_vo_courtyard_first_villager_04"
			},
			sound_events_duration = {
				2.0679790973663,
				1.9199792146683,
				1.0999791622162,
				2.4395208358765
			}
		},
		pwe_bastion_vo_entering_courtyard = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_entering_courtyard_01",
				"pwe_bastion_vo_entering_courtyard_02",
				"pwe_bastion_vo_entering_courtyard_03",
				"pwe_bastion_vo_entering_courtyard_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_entering_courtyard_01",
				"pwe_bastion_vo_entering_courtyard_02",
				"pwe_bastion_vo_entering_courtyard_03",
				"pwe_bastion_vo_entering_courtyard_04"
			},
			sound_events_duration = {
				1.2789791822434,
				1.6789791584015,
				1.4799791574478,
				1.5159791707993
			}
		},
		pwe_bastion_vo_entering_darkness = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_entering_darkness_01",
				"pwe_bastion_vo_entering_darkness_02",
				"pwe_bastion_vo_entering_darkness_03",
				"pwe_bastion_vo_entering_darkness_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_entering_darkness_01",
				"pwe_bastion_vo_entering_darkness_02",
				"pwe_bastion_vo_entering_darkness_03",
				"pwe_bastion_vo_entering_darkness_04"
			},
			sound_events_duration = {
				2.3839790821075,
				2.9719791412353,
				3.6559791564941,
				6.4049792289734
			}
		},
		pwe_bastion_vo_entering_finale = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_entering_finale_01",
				"pwe_bastion_vo_entering_finale_02",
				"pwe_bastion_vo_entering_finale_03",
				"pwe_bastion_vo_entering_finale_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_entering_finale_01",
				"pwe_bastion_vo_entering_finale_02",
				"pwe_bastion_vo_entering_finale_03",
				"pwe_bastion_vo_entering_finale_04"
			},
			sound_events_duration = {
				5.5489792823792,
				9.201979637146,
				5.4079790115356,
				4.9149789810181
			}
		},
		pwe_bastion_vo_entrance = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_entrance_01",
				"pwe_bastion_vo_entrance_02",
				"pwe_bastion_vo_entrance_03",
				"pwe_bastion_vo_entrance_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_entrance_01",
				"pwe_bastion_vo_entrance_02",
				"pwe_bastion_vo_entrance_03",
				"pwe_bastion_vo_entrance_04"
			},
			sound_events_duration = {
				4.2419791221619,
				5.4189791679382,
				3.8919792175293,
				5.5309791564941
			}
		},
		pwe_bastion_vo_exiting_pwe_bastion = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_exiting_pwe_bastion_01",
				"pwe_bastion_vo_exiting_pwe_bastion_02",
				"pwe_bastion_vo_exiting_pwe_bastion_03",
				"pwe_bastion_vo_exiting_pwe_bastion_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_exiting_pwe_bastion_01",
				"pwe_bastion_vo_exiting_pwe_bastion_02",
				"pwe_bastion_vo_exiting_pwe_bastion_03",
				"pwe_bastion_vo_exiting_pwe_bastion_04"
			},
			sound_events_duration = {
				2.9269790649414,
				4.2959790229797,
				6.7809791564941,
				4.6089792251587
			}
		},
		pwe_bastion_vo_finale_done = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_finale_done_01",
				"pwe_bastion_vo_finale_done_02",
				"pwe_bastion_vo_finale_done_03",
				"pwe_bastion_vo_finale_done_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_finale_done_01",
				"pwe_bastion_vo_finale_done_02",
				"pwe_bastion_vo_finale_done_03",
				"pwe_bastion_vo_finale_done_04"
			},
			sound_events_duration = {
				0.97100001573563,
				0.98799997568131,
				1.5169999599457,
				3.1099998950958
			}
		},
		pwe_bastion_vo_finale_missile = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_finale_missile_01",
				"pwe_bastion_vo_finale_missile_02",
				"pwe_bastion_vo_finale_missile_03",
				"pwe_bastion_vo_finale_missile_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_finale_missile_01",
				"pwe_bastion_vo_finale_missile_02",
				"pwe_bastion_vo_finale_missile_03",
				"pwe_bastion_vo_finale_missile_04"
			},
			sound_events_duration = {
				2.4419791698456,
				1.9629791975021,
				1.6030000448227,
				1.7289791107178
			}
		},
		pwe_bastion_vo_finale_tiring = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_finale_tiring_01",
				"pwe_bastion_vo_finale_tiring_02",
				"pwe_bastion_vo_finale_tiring_03",
				"pwe_bastion_vo_finale_tiring_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_finale_tiring_01",
				"pwe_bastion_vo_finale_tiring_02",
				"pwe_bastion_vo_finale_tiring_03",
				"pwe_bastion_vo_finale_tiring_04"
			},
			sound_events_duration = {
				1.227979183197,
				2.260999917984,
				2.0639998912811,
				2.75
			}
		},
		pwe_bastion_vo_head_to_surface = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_head_to_surface_01",
				"pwe_bastion_vo_head_to_surface_02",
				"pwe_bastion_vo_head_to_surface_03",
				"pwe_bastion_vo_head_to_surface_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_head_to_surface_01",
				"pwe_bastion_vo_head_to_surface_02",
				"pwe_bastion_vo_head_to_surface_03",
				"pwe_bastion_vo_head_to_surface_04"
			},
			sound_events_duration = {
				2.8749792575836,
				2.2129790782928,
				3.0009791851044,
				3.2709791660309
			}
		},
		pwe_bastion_vo_inside_cellblock = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_inside_cellblock_01",
				"pwe_bastion_vo_inside_cellblock_02",
				"pwe_bastion_vo_inside_cellblock_03",
				"pwe_bastion_vo_inside_cellblock_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_inside_cellblock_01",
				"pwe_bastion_vo_inside_cellblock_02",
				"pwe_bastion_vo_inside_cellblock_03",
				"pwe_bastion_vo_inside_cellblock_04"
			},
			sound_events_duration = {
				2.1789999008179,
				2.2339999675751,
				2.9099791049957,
				3.0150001049042
			}
		},
		pwe_bastion_vo_no_prisoners = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_no_prisoners_01",
				"pwe_bastion_vo_no_prisoners_02",
				"pwe_bastion_vo_no_prisoners_03",
				"pwe_bastion_vo_no_prisoners_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_no_prisoners_01",
				"pwe_bastion_vo_no_prisoners_02",
				"pwe_bastion_vo_no_prisoners_03",
				"pwe_bastion_vo_no_prisoners_04"
			},
			sound_events_duration = {
				2.2679791450501,
				3.352979183197,
				3.0021457672119,
				2.0999791622162
			}
		},
		pwe_bastion_vo_possessed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_possessed_01",
				"pwe_bastion_vo_possessed_02",
				"pwe_bastion_vo_possessed_03",
				"pwe_bastion_vo_possessed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_possessed_01",
				"pwe_bastion_vo_possessed_02",
				"pwe_bastion_vo_possessed_03",
				"pwe_bastion_vo_possessed_04"
			},
			sound_events_duration = {
				1.7419791221619,
				1.5299999713898,
				1.5789999961853,
				1.6469999551773
			}
		},
		pwe_bastion_vo_search_cells = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_bastion",
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
				"pwe_bastion_vo_search_cells_01",
				"pwe_bastion_vo_search_cells_02",
				"pwe_bastion_vo_search_cells_03",
				"pwe_bastion_vo_search_cells_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_bastion_vo_search_cells_01",
				"pwe_bastion_vo_search_cells_02",
				"pwe_bastion_vo_search_cells_03",
				"pwe_bastion_vo_search_cells_04"
			},
			sound_events_duration = {
				4.1970000267029,
				2.7879791259766,
				3.2329790592194,
				1.8200000524521
			}
		}
	})
end