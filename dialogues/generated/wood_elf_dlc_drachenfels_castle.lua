return function ()
	define_rule({
		name = "pwe_castle_intro_line_a",
		response = "pwe_castle_intro_line_a",
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
				"castle_intro_line_a"
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
				"castle_intro_line_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_intro_line_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_intro_line_b",
		response = "pwe_castle_intro_line_b",
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
				"castle_intro_line_a"
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
				"castle_intro_line_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_intro_line_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_intro_line_c",
		response = "pwe_castle_intro_line_c",
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
				"castle_intro_line_b"
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
				"castle_intro_line_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_intro_line_c",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_casual_quotes",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_approaching_throne_room",
		response = "pwe_castle_vo_approaching_throne_room",
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
				"castle_vo_approaching_throne_room"
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
				"castle_vo_approaching_throne_room",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_approaching_throne_room",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_blockage",
		response = "pwe_castle_vo_blockage",
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
				"castle_vo_blockage"
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
				"castle_vo_blockage",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_blockage",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_blood_pool",
		response = "pwe_castle_vo_blood_pool",
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
				"castle_vo_blood_pool"
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
				"castle_vo_blood_pool",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_blood_pool",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_crypt_discovered",
		response = "pwe_castle_vo_crypt_discovered",
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
				"castle_vo_crypt_discovered"
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
				"castle_vo_crypt_discovered",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_crypt_discovered",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_crypt_not_discovered",
		response = "pwe_castle_vo_crypt_not_discovered",
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
				"castle_vo_crypt_not_discovered"
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
				"castle_vo_crypt_not_discovered",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_crypt_not_discovered",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_do_not_recognize",
		response = "pwe_castle_vo_do_not_recognize",
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
				"castle_vo_do_not_recognize"
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
				"castle_vo_do_not_recognize",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_do_not_recognize",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_door_open",
		response = "pwe_castle_vo_door_open",
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
				"castle_vo_door_open"
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
				"castle_vo_door_open",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_door_open",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_drop_down",
		response = "pwe_castle_vo_drop_down",
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
				"castle_vo_drop_down"
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
				"castle_vo_drop_down",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_drop_down",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_enter",
		response = "pwe_castle_vo_enter",
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
				"castle_vo_enter"
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
				"castle_vo_enter",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_enter",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_find_a_way_up",
		response = "pwe_castle_vo_find_a_way_up",
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
				"castle_vo_find_a_way_up"
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
				"castle_vo_find_a_way_up",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_find_a_way_up",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_halls",
		response = "pwe_castle_vo_halls",
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
				"castle_vo_halls"
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
				"castle_vo_halls",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_halls",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_hello",
		response = "pwe_castle_vo_hello",
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
				"castle_vo_hello"
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
				"castle_vo_hello",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_hello",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_landed",
		response = "pwe_castle_vo_landed",
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
				"castle_vo_landed"
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
				"castle_vo_landed",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_landed",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_meet_sorcerer",
		response = "pwe_castle_vo_meet_sorcerer",
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
				"castle_vo_meet_sorcerer"
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
				"castle_vo_meet_sorcerer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_meet_sorcerer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_recognize",
		response = "pwe_castle_vo_recognize",
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
				"castle_vo_recognize"
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
				"castle_vo_recognize",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_recognize",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_search_again",
		response = "pwe_castle_vo_search_again",
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
				"castle_vo_search_again"
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
				"castle_vo_search_again",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_search_again",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_secret_door",
		response = "pwe_castle_vo_secret_door",
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
				"castle_vo_secret_door"
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
				"castle_vo_secret_door",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_secret_door",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_sorcerer_slain",
		response = "pwe_castle_vo_sorcerer_slain",
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
				"castle_vo_sorcerer_slain"
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
				"castle_vo_sorcerer_slain",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_sorcerer_slain",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_this_way",
		response = "pwe_castle_vo_this_way",
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
				"castle_vo_this_way"
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
				"castle_vo_this_way",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_this_way",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_throne_room_approach",
		response = "pwe_castle_vo_throne_room_approach",
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
				"castle_vo_throne_room_approach"
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
				"castle_vo_throne_room_approach",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_throne_room_approach",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_traces_one",
		response = "pwe_castle_vo_traces_one",
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
				"castle_vo_traces_one"
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
				"castle_vo_traces_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_traces_one",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_trap_switch",
		response = "pwe_castle_vo_trap_switch",
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
				"castle_vo_trap_switch"
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
				"castle_vo_trap_switch",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_trap_switch",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_castle_vo_vista",
		response = "pwe_castle_vo_vista",
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
				"castle_vo_vista"
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
				"castle_vo_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"castle_vo_vista",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_castle_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_castle",
			sound_events_n = 2,
			category = "level_talk",
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
				[1] = "pwe_castle_intro_line_a_01",
				[2] = "pwe_castle_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_castle_intro_line_a_01",
				[2] = "pwe_castle_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 3.868979215622,
				[2] = 5.0069789886475
			}
		},
		pwe_castle_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_castle",
			sound_events_n = 2,
			category = "level_talk",
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
				[1] = "pwe_castle_intro_line_b_01",
				[2] = "pwe_castle_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_castle_intro_line_b_01",
				[2] = "pwe_castle_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 3.8649792671204,
				[2] = 4.2619791030884
			}
		},
		pwe_castle_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_castle",
			sound_events_n = 2,
			category = "level_talk",
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
				[1] = "pwe_castle_intro_line_c_01",
				[2] = "pwe_castle_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_castle_intro_line_c_01",
				[2] = "pwe_castle_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 2.8219792842865,
				[2] = 2.5329999923706
			}
		},
		pwe_castle_vo_approaching_throne_room = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_approaching_throne_room_01",
				"pwe_castle_vo_approaching_throne_room_02",
				"pwe_castle_vo_approaching_throne_room_03",
				"pwe_castle_vo_approaching_throne_room_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_approaching_throne_room_01",
				"pwe_castle_vo_approaching_throne_room_02",
				"pwe_castle_vo_approaching_throne_room_03",
				"pwe_castle_vo_approaching_throne_room_04"
			},
			sound_events_duration = {
				3.5199792385101,
				4.0199790000916,
				3.8409790992737,
				2.8029792308807
			}
		},
		pwe_castle_vo_blockage = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_blockage_01",
				"pwe_castle_vo_blockage_02",
				"pwe_castle_vo_blockage_03",
				"pwe_castle_vo_blockage_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_blockage_01",
				"pwe_castle_vo_blockage_02",
				"pwe_castle_vo_blockage_03",
				"pwe_castle_vo_blockage_04"
			},
			sound_events_duration = {
				2.7819790840149,
				2.794979095459,
				2.0939791202545,
				5.1599998474121
			}
		},
		pwe_castle_vo_blood_pool = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_blood_pool_01",
				"pwe_castle_vo_blood_pool_02",
				"pwe_castle_vo_blood_pool_03",
				"pwe_castle_vo_blood_pool_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_blood_pool_01",
				"pwe_castle_vo_blood_pool_02",
				"pwe_castle_vo_blood_pool_03",
				"pwe_castle_vo_blood_pool_04"
			},
			sound_events_duration = {
				3.5469791889191,
				4.7019791603088,
				2.9439792633057,
				1.8279792070389
			}
		},
		pwe_castle_vo_crypt_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_crypt_discovered_01",
				"pwe_castle_vo_crypt_discovered_02",
				"pwe_castle_vo_crypt_discovered_03",
				"pwe_castle_vo_crypt_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_crypt_discovered_01",
				"pwe_castle_vo_crypt_discovered_02",
				"pwe_castle_vo_crypt_discovered_03",
				"pwe_castle_vo_crypt_discovered_04"
			},
			sound_events_duration = {
				5.7689790725708,
				4.9789791107178,
				4.5859789848328,
				5.147979259491
			}
		},
		pwe_castle_vo_crypt_not_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_crypt_not_discovered_01",
				"pwe_castle_vo_crypt_not_discovered_02",
				"pwe_castle_vo_crypt_not_discovered_03",
				"pwe_castle_vo_crypt_not_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_crypt_not_discovered_01",
				"pwe_castle_vo_crypt_not_discovered_02",
				"pwe_castle_vo_crypt_not_discovered_03",
				"pwe_castle_vo_crypt_not_discovered_04"
			},
			sound_events_duration = {
				2.7239999771118,
				3.1149792671204,
				4.7009792327881,
				4.3869791030884
			}
		},
		pwe_castle_vo_do_not_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_do_not_recognize_01",
				"pwe_castle_vo_do_not_recognize_02",
				"pwe_castle_vo_do_not_recognize_03",
				"pwe_castle_vo_do_not_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_do_not_recognize_01",
				"pwe_castle_vo_do_not_recognize_02",
				"pwe_castle_vo_do_not_recognize_03",
				"pwe_castle_vo_do_not_recognize_04"
			},
			sound_events_duration = {
				2.6629791259766,
				4.5969791412353,
				4.3859791755676,
				4.0110001564026
			}
		},
		pwe_castle_vo_door_open = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_door_open_01",
				"pwe_castle_vo_door_open_02",
				"pwe_castle_vo_door_open_03",
				"pwe_castle_vo_door_open_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_door_open_01",
				"pwe_castle_vo_door_open_02",
				"pwe_castle_vo_door_open_03",
				"pwe_castle_vo_door_open_04"
			},
			sound_events_duration = {
				3.2539792060852,
				2.7939791679382,
				3.8289792537689,
				2.8709790706634
			}
		},
		pwe_castle_vo_drop_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_drop_down_01",
				"pwe_castle_vo_drop_down_02",
				"pwe_castle_vo_drop_down_03",
				"pwe_castle_vo_drop_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_drop_down_01",
				"pwe_castle_vo_drop_down_02",
				"pwe_castle_vo_drop_down_03",
				"pwe_castle_vo_drop_down_04"
			},
			sound_events_duration = {
				1.7940000295639,
				3.8939790725708,
				4.4239792823792,
				2.7149791717529
			}
		},
		pwe_castle_vo_enter = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_enter_01",
				"pwe_castle_vo_enter_02",
				"pwe_castle_vo_enter_03",
				"pwe_castle_vo_enter_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_enter_01",
				"pwe_castle_vo_enter_02",
				"pwe_castle_vo_enter_03",
				"pwe_castle_vo_enter_04"
			},
			sound_events_duration = {
				1.9349792003632,
				2.2379791736603,
				2.0269792079926,
				2.9479792118073
			}
		},
		pwe_castle_vo_find_a_way_up = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_find_a_way_up_01",
				"pwe_castle_vo_find_a_way_up_02",
				"pwe_castle_vo_find_a_way_up_03",
				"pwe_castle_vo_find_a_way_up_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_find_a_way_up_01",
				"pwe_castle_vo_find_a_way_up_02",
				"pwe_castle_vo_find_a_way_up_03",
				"pwe_castle_vo_find_a_way_up_04"
			},
			sound_events_duration = {
				2.1569790840149,
				3.8089792728424,
				3.6600000858307,
				3.6829791069031
			}
		},
		pwe_castle_vo_halls = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_halls_01",
				"pwe_castle_vo_halls_02",
				"pwe_castle_vo_halls_03",
				"pwe_castle_vo_halls_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_halls_01",
				"pwe_castle_vo_halls_02",
				"pwe_castle_vo_halls_03",
				"pwe_castle_vo_halls_04"
			},
			sound_events_duration = {
				2.397979259491,
				2.1240416765213,
				1.51797914505,
				3.8119790554047
			}
		},
		pwe_castle_vo_hello = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_hello_01",
				"pwe_castle_vo_hello_02",
				"pwe_castle_vo_hello_03",
				"pwe_castle_vo_hello_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_hello_01",
				"pwe_castle_vo_hello_02",
				"pwe_castle_vo_hello_03",
				"pwe_castle_vo_hello_04"
			},
			sound_events_duration = {
				1.3810000419617,
				2.89097905159,
				4.0539793968201,
				4.2999792098999
			}
		},
		pwe_castle_vo_landed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_landed_01",
				"pwe_castle_vo_landed_02",
				"pwe_castle_vo_landed_03",
				"pwe_castle_vo_landed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_landed_01",
				"pwe_castle_vo_landed_02",
				"pwe_castle_vo_landed_03",
				"pwe_castle_vo_landed_04"
			},
			sound_events_duration = {
				2.8539791107178,
				5.6929793357849,
				3.4149792194366,
				3.937979221344
			}
		},
		pwe_castle_vo_meet_sorcerer = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_meet_sorcerer_01",
				"pwe_castle_vo_meet_sorcerer_02",
				"pwe_castle_vo_meet_sorcerer_03",
				"pwe_castle_vo_meet_sorcerer_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_meet_sorcerer_01",
				"pwe_castle_vo_meet_sorcerer_02",
				"pwe_castle_vo_meet_sorcerer_03",
				"pwe_castle_vo_meet_sorcerer_04"
			},
			sound_events_duration = {
				4.2479791641235,
				3.506979227066,
				3.8569791316986,
				2.754979133606
			}
		},
		pwe_castle_vo_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_recognize_01",
				"pwe_castle_vo_recognize_02",
				"pwe_castle_vo_recognize_03",
				"pwe_castle_vo_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_recognize_01",
				"pwe_castle_vo_recognize_02",
				"pwe_castle_vo_recognize_03",
				"pwe_castle_vo_recognize_04"
			},
			sound_events_duration = {
				2.988979101181,
				4.14297914505,
				4.165979385376,
				6.2999792098999
			}
		},
		pwe_castle_vo_search_again = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_search_again_01",
				"pwe_castle_vo_search_again_02",
				"pwe_castle_vo_search_again_03",
				"pwe_castle_vo_search_again_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_search_again_01",
				"pwe_castle_vo_search_again_02",
				"pwe_castle_vo_search_again_03",
				"pwe_castle_vo_search_again_04"
			},
			sound_events_duration = {
				2.8769791126251,
				3.5809791088104,
				3.437979221344,
				3.4019792079926
			}
		},
		pwe_castle_vo_secret_door = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_secret_door_01",
				"pwe_castle_vo_secret_door_02",
				"pwe_castle_vo_secret_door_03",
				"pwe_castle_vo_secret_door_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_secret_door_01",
				"pwe_castle_vo_secret_door_02",
				"pwe_castle_vo_secret_door_03",
				"pwe_castle_vo_secret_door_04"
			},
			sound_events_duration = {
				1.7399791479111,
				3.6039791107178,
				2.0999999046326,
				2.7199790477753
			}
		},
		pwe_castle_vo_sorcerer_slain = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_sorcerer_slain_01",
				"pwe_castle_vo_sorcerer_slain_02",
				"pwe_castle_vo_sorcerer_slain_03",
				"pwe_castle_vo_sorcerer_slain_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_sorcerer_slain_01",
				"pwe_castle_vo_sorcerer_slain_02",
				"pwe_castle_vo_sorcerer_slain_03",
				"pwe_castle_vo_sorcerer_slain_04"
			},
			sound_events_duration = {
				4.8299789428711,
				3.006979227066,
				3.3369791507721,
				4.8219790458679
			}
		},
		pwe_castle_vo_this_way = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_this_way_01",
				"pwe_castle_vo_this_way_02",
				"pwe_castle_vo_this_way_03",
				"pwe_castle_vo_this_way_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_this_way_01",
				"pwe_castle_vo_this_way_02",
				"pwe_castle_vo_this_way_03",
				"pwe_castle_vo_this_way_04"
			},
			sound_events_duration = {
				2.2789790630341,
				1.2827291488648,
				2.2669999599457,
				1.9541770815849
			}
		},
		pwe_castle_vo_throne_room_approach = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_throne_room_approach_01",
				"pwe_castle_vo_throne_room_approach_02",
				"pwe_castle_vo_throne_room_approach_03",
				"pwe_castle_vo_throne_room_approach_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_throne_room_approach_01",
				"pwe_castle_vo_throne_room_approach_02",
				"pwe_castle_vo_throne_room_approach_03",
				"pwe_castle_vo_throne_room_approach_04"
			},
			sound_events_duration = {
				3.6359791755676,
				3.6959791183472,
				5.0829792022705,
				4.1099791526794
			}
		},
		pwe_castle_vo_traces_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_traces_one_01",
				"pwe_castle_vo_traces_one_02",
				"pwe_castle_vo_traces_one_03",
				"pwe_castle_vo_traces_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_traces_one_01",
				"pwe_castle_vo_traces_one_02",
				"pwe_castle_vo_traces_one_03",
				"pwe_castle_vo_traces_one_04"
			},
			sound_events_duration = {
				5.8679790496826,
				4.3439793586731,
				3.533979177475,
				4.1779789924622
			}
		},
		pwe_castle_vo_trap_switch = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_trap_switch_01",
				"pwe_castle_vo_trap_switch_02",
				"pwe_castle_vo_trap_switch_03",
				"pwe_castle_vo_trap_switch_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_trap_switch_01",
				"pwe_castle_vo_trap_switch_02",
				"pwe_castle_vo_trap_switch_03",
				"pwe_castle_vo_trap_switch_04"
			},
			sound_events_duration = {
				3.6339790821075,
				2.8949792385101,
				1.6139999628067,
				1.8539791107178
			}
		},
		pwe_castle_vo_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_castle",
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
				"pwe_castle_vo_vista_01",
				"pwe_castle_vo_vista_02",
				"pwe_castle_vo_vista_03",
				"pwe_castle_vo_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_castle_vo_vista_01",
				"pwe_castle_vo_vista_02",
				"pwe_castle_vo_vista_03",
				"pwe_castle_vo_vista_04"
			},
			sound_events_duration = {
				4.8009791374206,
				3.8729791641235,
				3.6559791564941,
				4.0519790649414
			}
		}
	})
end