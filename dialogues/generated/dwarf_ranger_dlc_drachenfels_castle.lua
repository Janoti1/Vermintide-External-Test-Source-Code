return function ()
	define_rule({
		name = "pdr_castle_intro_line_a",
		response = "pdr_castle_intro_line_a",
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
		name = "pdr_castle_intro_line_b",
		response = "pdr_castle_intro_line_b",
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
		name = "pdr_castle_intro_line_c",
		response = "pdr_castle_intro_line_c",
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
		name = "pdr_castle_vo_approaching_throne_room",
		response = "pdr_castle_vo_approaching_throne_room",
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
		name = "pdr_castle_vo_blockage",
		response = "pdr_castle_vo_blockage",
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
		name = "pdr_castle_vo_blood_pool",
		response = "pdr_castle_vo_blood_pool",
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
		name = "pdr_castle_vo_crypt_discovered",
		response = "pdr_castle_vo_crypt_discovered",
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
		name = "pdr_castle_vo_crypt_not_discovered",
		response = "pdr_castle_vo_crypt_not_discovered",
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
		name = "pdr_castle_vo_do_not_recognize",
		response = "pdr_castle_vo_do_not_recognize",
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
		name = "pdr_castle_vo_door_open",
		response = "pdr_castle_vo_door_open",
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
		name = "pdr_castle_vo_drop_down",
		response = "pdr_castle_vo_drop_down",
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
		name = "pdr_castle_vo_enter",
		response = "pdr_castle_vo_enter",
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
		name = "pdr_castle_vo_find_a_way_up",
		response = "pdr_castle_vo_find_a_way_up",
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
		name = "pdr_castle_vo_halls",
		response = "pdr_castle_vo_halls",
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
		name = "pdr_castle_vo_hello",
		response = "pdr_castle_vo_hello",
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
		name = "pdr_castle_vo_landed",
		response = "pdr_castle_vo_landed",
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
		name = "pdr_castle_vo_meet_sorcerer",
		response = "pdr_castle_vo_meet_sorcerer",
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
		name = "pdr_castle_vo_recognize",
		response = "pdr_castle_vo_recognize",
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
		name = "pdr_castle_vo_search_again",
		response = "pdr_castle_vo_search_again",
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
		name = "pdr_castle_vo_secret_door",
		response = "pdr_castle_vo_secret_door",
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
		name = "pdr_castle_vo_sorcerer_slain",
		response = "pdr_castle_vo_sorcerer_slain",
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
		name = "pdr_castle_vo_this_way",
		response = "pdr_castle_vo_this_way",
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
		name = "pdr_castle_vo_throne_room_approach",
		response = "pdr_castle_vo_throne_room_approach",
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
		name = "pdr_castle_vo_traces_one",
		response = "pdr_castle_vo_traces_one",
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
		name = "pdr_castle_vo_trap_switch",
		response = "pdr_castle_vo_trap_switch",
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
		name = "pdr_castle_vo_vista",
		response = "pdr_castle_vo_vista",
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
		pdr_castle_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				[1] = "pdr_castle_intro_line_a_01",
				[2] = "pdr_castle_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_castle_intro_line_a_01",
				[2] = "pdr_castle_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 2.7879791259766,
				[2] = 2.9299790859222
			}
		},
		pdr_castle_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				[1] = "pdr_castle_intro_line_b_01",
				[2] = "pdr_castle_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_castle_intro_line_b_01",
				[2] = "pdr_castle_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 4.0599789619446,
				[2] = 5.7409791946411
			}
		},
		pdr_castle_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				[1] = "pdr_castle_intro_line_c_01",
				[2] = "pdr_castle_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_castle_intro_line_c_01",
				[2] = "pdr_castle_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 2.243979215622,
				[2] = 2.4429790973663
			}
		},
		pdr_castle_vo_approaching_throne_room = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_approaching_throne_room_01",
				"pdr_castle_vo_approaching_throne_room_02",
				"pdr_castle_vo_approaching_throne_room_03",
				"pdr_castle_vo_approaching_throne_room_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_approaching_throne_room_01",
				"pdr_castle_vo_approaching_throne_room_02",
				"pdr_castle_vo_approaching_throne_room_03",
				"pdr_castle_vo_approaching_throne_room_04"
			},
			sound_events_duration = {
				1.9629791975021,
				4.0199790000916,
				4.2709794044495,
				3.5759792327881
			}
		},
		pdr_castle_vo_blockage = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_blockage_01",
				"pdr_castle_vo_blockage_02",
				"pdr_castle_vo_blockage_03",
				"pdr_castle_vo_blockage_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_blockage_01",
				"pdr_castle_vo_blockage_02",
				"pdr_castle_vo_blockage_03",
				"pdr_castle_vo_blockage_04"
			},
			sound_events_duration = {
				1.3090000152588,
				2.3169791698456,
				2.7219791412353,
				2.1609792709351
			}
		},
		pdr_castle_vo_blood_pool = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_blood_pool_01",
				"pdr_castle_vo_blood_pool_02",
				"pdr_castle_vo_blood_pool_03",
				"pdr_castle_vo_blood_pool_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_blood_pool_01",
				"pdr_castle_vo_blood_pool_02",
				"pdr_castle_vo_blood_pool_03",
				"pdr_castle_vo_blood_pool_04"
			},
			sound_events_duration = {
				3.2069792747498,
				4.4509792327881,
				3.1669790744781,
				3.419979095459
			}
		},
		pdr_castle_vo_crypt_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_crypt_discovered_01",
				"pdr_castle_vo_crypt_discovered_02",
				"pdr_castle_vo_crypt_discovered_03",
				"pdr_castle_vo_crypt_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_crypt_discovered_01",
				"pdr_castle_vo_crypt_discovered_02",
				"pdr_castle_vo_crypt_discovered_03",
				"pdr_castle_vo_crypt_discovered_04"
			},
			sound_events_duration = {
				4.2529792785644,
				4.3189792633057,
				3.3339791297913,
				5.6719789505005
			}
		},
		pdr_castle_vo_crypt_not_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_crypt_not_discovered_01",
				"pdr_castle_vo_crypt_not_discovered_02",
				"pdr_castle_vo_crypt_not_discovered_03",
				"pdr_castle_vo_crypt_not_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_crypt_not_discovered_01",
				"pdr_castle_vo_crypt_not_discovered_02",
				"pdr_castle_vo_crypt_not_discovered_03",
				"pdr_castle_vo_crypt_not_discovered_04"
			},
			sound_events_duration = {
				2.9339792728424,
				3.2629792690277,
				5.1379790306091,
				4.0919790267944
			}
		},
		pdr_castle_vo_do_not_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_do_not_recognize_01",
				"pdr_castle_vo_do_not_recognize_02",
				"pdr_castle_vo_do_not_recognize_03",
				"pdr_castle_vo_do_not_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_do_not_recognize_01",
				"pdr_castle_vo_do_not_recognize_02",
				"pdr_castle_vo_do_not_recognize_03",
				"pdr_castle_vo_do_not_recognize_04"
			},
			sound_events_duration = {
				1.9869791269302,
				1.5789791345596,
				2.7239792346954,
				2.7059791088104
			}
		},
		pdr_castle_vo_door_open = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_door_open_01",
				"pdr_castle_vo_door_open_02",
				"pdr_castle_vo_door_open_03",
				"pdr_castle_vo_door_open_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_door_open_01",
				"pdr_castle_vo_door_open_02",
				"pdr_castle_vo_door_open_03",
				"pdr_castle_vo_door_open_04"
			},
			sound_events_duration = {
				2.0889792442322,
				2.8109791278839,
				2.6289792060852,
				3.283979177475
			}
		},
		pdr_castle_vo_drop_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_drop_down_01",
				"pdr_castle_vo_drop_down_02",
				"pdr_castle_vo_drop_down_03",
				"pdr_castle_vo_drop_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_drop_down_01",
				"pdr_castle_vo_drop_down_02",
				"pdr_castle_vo_drop_down_03",
				"pdr_castle_vo_drop_down_04"
			},
			sound_events_duration = {
				2.4449791908264,
				1.6360000371933,
				2.6310000419617,
				2.9809792041779
			}
		},
		pdr_castle_vo_enter = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_enter_01",
				"pdr_castle_vo_enter_02",
				"pdr_castle_vo_enter_03",
				"pdr_castle_vo_enter_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_enter_01",
				"pdr_castle_vo_enter_02",
				"pdr_castle_vo_enter_03",
				"pdr_castle_vo_enter_04"
			},
			sound_events_duration = {
				2.8209791183472,
				2.0039792060852,
				3.0179791450501,
				2.8079791069031
			}
		},
		pdr_castle_vo_find_a_way_up = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_find_a_way_up_01",
				"pdr_castle_vo_find_a_way_up_02",
				"pdr_castle_vo_find_a_way_up_03",
				"pdr_castle_vo_find_a_way_up_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_find_a_way_up_01",
				"pdr_castle_vo_find_a_way_up_02",
				"pdr_castle_vo_find_a_way_up_03",
				"pdr_castle_vo_find_a_way_up_04"
			},
			sound_events_duration = {
				2.3929791450501,
				3.9459791183472,
				3.8199791908264,
				4.8589792251587
			}
		},
		pdr_castle_vo_halls = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_halls_01",
				"pdr_castle_vo_halls_02",
				"pdr_castle_vo_halls_03",
				"pdr_castle_vo_halls_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_halls_01",
				"pdr_castle_vo_halls_02",
				"pdr_castle_vo_halls_03",
				"pdr_castle_vo_halls_04"
			},
			sound_events_duration = {
				2.9499790668488,
				1.4749791622162,
				2.1839792728424,
				2.7579791545868
			}
		},
		pdr_castle_vo_hello = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_hello_01",
				"pdr_castle_vo_hello_02",
				"pdr_castle_vo_hello_03",
				"pdr_castle_vo_hello_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_hello_01",
				"pdr_castle_vo_hello_02",
				"pdr_castle_vo_hello_03",
				"pdr_castle_vo_hello_04"
			},
			sound_events_duration = {
				6.2090001106262,
				1.39297914505,
				3.6349999904633,
				1.9599791765213
			}
		},
		pdr_castle_vo_landed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_landed_01",
				"pdr_castle_vo_landed_02",
				"pdr_castle_vo_landed_03",
				"pdr_castle_vo_landed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_landed_01",
				"pdr_castle_vo_landed_02",
				"pdr_castle_vo_landed_03",
				"pdr_castle_vo_landed_04"
			},
			sound_events_duration = {
				3.0329792499542,
				2.2269792556763,
				2.7430000305176,
				4.5639791488647
			}
		},
		pdr_castle_vo_meet_sorcerer = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_meet_sorcerer_01",
				"pdr_castle_vo_meet_sorcerer_02",
				"pdr_castle_vo_meet_sorcerer_03",
				"pdr_castle_vo_meet_sorcerer_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_meet_sorcerer_01",
				"pdr_castle_vo_meet_sorcerer_02",
				"pdr_castle_vo_meet_sorcerer_03",
				"pdr_castle_vo_meet_sorcerer_04"
			},
			sound_events_duration = {
				4.1729793548584,
				3.3159792423248,
				3.6459791660309,
				2.9269790649414
			}
		},
		pdr_castle_vo_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_recognize_01",
				"pdr_castle_vo_recognize_02",
				"pdr_castle_vo_recognize_03",
				"pdr_castle_vo_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_recognize_01",
				"pdr_castle_vo_recognize_02",
				"pdr_castle_vo_recognize_03",
				"pdr_castle_vo_recognize_04"
			},
			sound_events_duration = {
				2.4569792747498,
				2.6819791793823,
				2.9969792366028,
				2.6339790821075
			}
		},
		pdr_castle_vo_search_again = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_search_again_01",
				"pdr_castle_vo_search_again_02",
				"pdr_castle_vo_search_again_03",
				"pdr_castle_vo_search_again_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_search_again_01",
				"pdr_castle_vo_search_again_02",
				"pdr_castle_vo_search_again_03",
				"pdr_castle_vo_search_again_04"
			},
			sound_events_duration = {
				2.9679791927338,
				2.4309792518616,
				2.1949791908264,
				3.8719792366028
			}
		},
		pdr_castle_vo_secret_door = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_secret_door_01",
				"pdr_castle_vo_secret_door_02",
				"pdr_castle_vo_secret_door_03",
				"pdr_castle_vo_secret_door_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_secret_door_01",
				"pdr_castle_vo_secret_door_02",
				"pdr_castle_vo_secret_door_03",
				"pdr_castle_vo_secret_door_04"
			},
			sound_events_duration = {
				3.4349792003632,
				3.993979215622,
				3.8319792747498,
				2.7149791717529
			}
		},
		pdr_castle_vo_sorcerer_slain = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_sorcerer_slain_01",
				"pdr_castle_vo_sorcerer_slain_02",
				"pdr_castle_vo_sorcerer_slain_03",
				"pdr_castle_vo_sorcerer_slain_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_sorcerer_slain_01",
				"pdr_castle_vo_sorcerer_slain_02",
				"pdr_castle_vo_sorcerer_slain_03",
				"pdr_castle_vo_sorcerer_slain_04"
			},
			sound_events_duration = {
				2.8169791698456,
				3.7609791755676,
				3.0579791069031,
				5.0500001907349
			}
		},
		pdr_castle_vo_this_way = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_this_way_01",
				"pdr_castle_vo_this_way_02",
				"pdr_castle_vo_this_way_03",
				"pdr_castle_vo_this_way_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_this_way_01",
				"pdr_castle_vo_this_way_02",
				"pdr_castle_vo_this_way_03",
				"pdr_castle_vo_this_way_04"
			},
			sound_events_duration = {
				3.8709790706634,
				1.192999958992,
				2.834979057312,
				1.9750000238419
			}
		},
		pdr_castle_vo_throne_room_approach = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_throne_room_approach_01",
				"pdr_castle_vo_throne_room_approach_02",
				"pdr_castle_vo_throne_room_approach_03",
				"pdr_castle_vo_throne_room_approach_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_throne_room_approach_01",
				"pdr_castle_vo_throne_room_approach_02",
				"pdr_castle_vo_throne_room_approach_03",
				"pdr_castle_vo_throne_room_approach_04"
			},
			sound_events_duration = {
				2.9919791221619,
				2.9729790687561,
				2.9499790668488,
				3.3759791851044
			}
		},
		pdr_castle_vo_traces_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_traces_one_01",
				"pdr_castle_vo_traces_one_02",
				"pdr_castle_vo_traces_one_03",
				"pdr_castle_vo_traces_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_traces_one_01",
				"pdr_castle_vo_traces_one_02",
				"pdr_castle_vo_traces_one_03",
				"pdr_castle_vo_traces_one_04"
			},
			sound_events_duration = {
				4.1439790725708,
				2.7919790744781,
				2.3709790706634,
				3.0409791469574
			}
		},
		pdr_castle_vo_trap_switch = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_trap_switch_01",
				"pdr_castle_vo_trap_switch_02",
				"pdr_castle_vo_trap_switch_03",
				"pdr_castle_vo_trap_switch_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_trap_switch_01",
				"pdr_castle_vo_trap_switch_02",
				"pdr_castle_vo_trap_switch_03",
				"pdr_castle_vo_trap_switch_04"
			},
			sound_events_duration = {
				3.0360000133514,
				3.629979133606,
				2.5399792194366,
				1.8769791126251
			}
		},
		pdr_castle_vo_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_castle",
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
				"pdr_castle_vo_vista_01",
				"pdr_castle_vo_vista_02",
				"pdr_castle_vo_vista_03",
				"pdr_castle_vo_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_castle_vo_vista_01",
				"pdr_castle_vo_vista_02",
				"pdr_castle_vo_vista_03",
				"pdr_castle_vo_vista_04"
			},
			sound_events_duration = {
				4.772979259491,
				2.3609790802002,
				5.7189793586731,
				3.1689791679382
			}
		}
	})
end