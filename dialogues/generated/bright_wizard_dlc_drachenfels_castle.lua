return function ()
	define_rule({
		name = "pbw_castle_intro_line_a",
		response = "pbw_castle_intro_line_a",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_intro_line_b",
		response = "pbw_castle_intro_line_b",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_intro_line_c",
		response = "pbw_castle_intro_line_c",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_approaching_throne_room",
		response = "pbw_castle_vo_approaching_throne_room",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_blockage",
		response = "pbw_castle_vo_blockage",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_blood_pool",
		response = "pbw_castle_vo_blood_pool",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_crypt_discovered",
		response = "pbw_castle_vo_crypt_discovered",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_crypt_not_discovered",
		response = "pbw_castle_vo_crypt_not_discovered",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_do_not_recognize",
		response = "pbw_castle_vo_do_not_recognize",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_door_open",
		response = "pbw_castle_vo_door_open",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_drop_down",
		response = "pbw_castle_vo_drop_down",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_enter",
		response = "pbw_castle_vo_enter",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_find_a_way_up",
		response = "pbw_castle_vo_find_a_way_up",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_halls",
		response = "pbw_castle_vo_halls",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_hello",
		response = "pbw_castle_vo_hello",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_landed",
		response = "pbw_castle_vo_landed",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_meet_sorcerer",
		response = "pbw_castle_vo_meet_sorcerer",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_recognize",
		response = "pbw_castle_vo_recognize",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_search_again",
		response = "pbw_castle_vo_search_again",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_secret_door",
		response = "pbw_castle_vo_secret_door",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_sorcerer_slain",
		response = "pbw_castle_vo_sorcerer_slain",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_this_way",
		response = "pbw_castle_vo_this_way",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_throne_room_approach",
		response = "pbw_castle_vo_throne_room_approach",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_traces_one",
		response = "pbw_castle_vo_traces_one",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_trap_switch",
		response = "pbw_castle_vo_trap_switch",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		name = "pbw_castle_vo_vista",
		response = "pbw_castle_vo_vista",
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
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
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
		pbw_castle_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				[1] = "pbw_castle_intro_line_a_01",
				[2] = "pbw_castle_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_castle_intro_line_a_01",
				[2] = "pbw_castle_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 5.0249791145325,
				[2] = 4.4489793777466
			}
		},
		pbw_castle_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				[1] = "pbw_castle_intro_line_b_01",
				[2] = "pbw_castle_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_castle_intro_line_b_01",
				[2] = "pbw_castle_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 2.9079792499542,
				[2] = 4.6489791870117
			}
		},
		pbw_castle_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				[1] = "pbw_castle_intro_line_c_01",
				[2] = "pbw_castle_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_castle_intro_line_c_01",
				[2] = "pbw_castle_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 6.2589793205261,
				[2] = 3.0859792232513
			}
		},
		pbw_castle_vo_approaching_throne_room = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_approaching_throne_room_01",
				"pbw_castle_vo_approaching_throne_room_02",
				"pbw_castle_vo_approaching_throne_room_03",
				"pbw_castle_vo_approaching_throne_room_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_approaching_throne_room_01",
				"pbw_castle_vo_approaching_throne_room_02",
				"pbw_castle_vo_approaching_throne_room_03",
				"pbw_castle_vo_approaching_throne_room_04"
			},
			sound_events_duration = {
				2.841979265213,
				2.7769792079926,
				1.1329791545868,
				3.7229790687561
			}
		},
		pbw_castle_vo_blockage = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_blockage_01",
				"pbw_castle_vo_blockage_02",
				"pbw_castle_vo_blockage_03",
				"pbw_castle_vo_blockage_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_blockage_01",
				"pbw_castle_vo_blockage_02",
				"pbw_castle_vo_blockage_03",
				"pbw_castle_vo_blockage_04"
			},
			sound_events_duration = {
				1.9859791994095,
				1.3879791498184,
				2.3649792671204,
				2.4309792518616
			}
		},
		pbw_castle_vo_blood_pool = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_blood_pool_01",
				"pbw_castle_vo_blood_pool_02",
				"pbw_castle_vo_blood_pool_03",
				"pbw_castle_vo_blood_pool_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_blood_pool_01",
				"pbw_castle_vo_blood_pool_02",
				"pbw_castle_vo_blood_pool_03",
				"pbw_castle_vo_blood_pool_04"
			},
			sound_events_duration = {
				4.8699793815613,
				2.1709792613983,
				3.9209792613983,
				3.4109792709351
			}
		},
		pbw_castle_vo_crypt_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_crypt_discovered_01",
				"pbw_castle_vo_crypt_discovered_02",
				"pbw_castle_vo_crypt_discovered_03",
				"pbw_castle_vo_crypt_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_crypt_discovered_01",
				"pbw_castle_vo_crypt_discovered_02",
				"pbw_castle_vo_crypt_discovered_03",
				"pbw_castle_vo_crypt_discovered_04"
			},
			sound_events_duration = {
				6.1839790344238,
				4.874979019165,
				3.7139792442322,
				5.5829792022705
			}
		},
		pbw_castle_vo_crypt_not_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_crypt_not_discovered_01",
				"pbw_castle_vo_crypt_not_discovered_02",
				"pbw_castle_vo_crypt_not_discovered_03",
				"pbw_castle_vo_crypt_not_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_crypt_not_discovered_01",
				"pbw_castle_vo_crypt_not_discovered_02",
				"pbw_castle_vo_crypt_not_discovered_03",
				"pbw_castle_vo_crypt_not_discovered_04"
			},
			sound_events_duration = {
				2.8309791088104,
				3.448979139328,
				3.4239792823791,
				4.3629789352417
			}
		},
		pbw_castle_vo_do_not_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_do_not_recognize_01",
				"pbw_castle_vo_do_not_recognize_02",
				"pbw_castle_vo_do_not_recognize_03",
				"pbw_castle_vo_do_not_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_do_not_recognize_01",
				"pbw_castle_vo_do_not_recognize_02",
				"pbw_castle_vo_do_not_recognize_03",
				"pbw_castle_vo_do_not_recognize_04"
			},
			sound_events_duration = {
				2.2809791564941,
				1.4959791898727,
				1.2619792222977,
				3.1789791584015
			}
		},
		pbw_castle_vo_door_open = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_door_open_01",
				"pbw_castle_vo_door_open_02",
				"pbw_castle_vo_door_open_03",
				"pbw_castle_vo_door_open_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_door_open_01",
				"pbw_castle_vo_door_open_02",
				"pbw_castle_vo_door_open_03",
				"pbw_castle_vo_door_open_04"
			},
			sound_events_duration = {
				2.4579792022705,
				2.0339999198914,
				4.5159792900085,
				2.8919792175293
			}
		},
		pbw_castle_vo_drop_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_drop_down_01",
				"pbw_castle_vo_drop_down_02",
				"pbw_castle_vo_drop_down_03",
				"pbw_castle_vo_drop_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_drop_down_01",
				"pbw_castle_vo_drop_down_02",
				"pbw_castle_vo_drop_down_03",
				"pbw_castle_vo_drop_down_04"
			},
			sound_events_duration = {
				3.8769791126251,
				4.1909790039063,
				3.7709791660309,
				4.3979997634888
			}
		},
		pbw_castle_vo_enter = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_enter_01",
				"pbw_castle_vo_enter_02",
				"pbw_castle_vo_enter_03",
				"pbw_castle_vo_enter_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_enter_01",
				"pbw_castle_vo_enter_02",
				"pbw_castle_vo_enter_03",
				"pbw_castle_vo_enter_04"
			},
			sound_events_duration = {
				1.6909791231155,
				1.7999999523163,
				1.7079792022705,
				1.6970000267029
			}
		},
		pbw_castle_vo_find_a_way_up = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_find_a_way_up_01",
				"pbw_castle_vo_find_a_way_up_02",
				"pbw_castle_vo_find_a_way_up_03",
				"pbw_castle_vo_find_a_way_up_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_find_a_way_up_01",
				"pbw_castle_vo_find_a_way_up_02",
				"pbw_castle_vo_find_a_way_up_03",
				"pbw_castle_vo_find_a_way_up_04"
			},
			sound_events_duration = {
				2.0299792289734,
				2.8840000629425,
				1.4809792041779,
				3.6289792060852
			}
		},
		pbw_castle_vo_halls = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_halls_01",
				"pbw_castle_vo_halls_02",
				"pbw_castle_vo_halls_03",
				"pbw_castle_vo_halls_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_halls_01",
				"pbw_castle_vo_halls_02",
				"pbw_castle_vo_halls_03",
				"pbw_castle_vo_halls_04"
			},
			sound_events_duration = {
				2.8729791641235,
				2.4469792842865,
				2.5129792690277,
				4.0869793891907
			}
		},
		pbw_castle_vo_hello = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_hello_01",
				"pbw_castle_vo_hello_02",
				"pbw_castle_vo_hello_03",
				"pbw_castle_vo_hello_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_hello_01",
				"pbw_castle_vo_hello_02",
				"pbw_castle_vo_hello_03",
				"pbw_castle_vo_hello_04"
			},
			sound_events_duration = {
				3.0350000858307,
				4.6899790763855,
				3.7719790935516,
				4.0979790687561
			}
		},
		pbw_castle_vo_landed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_landed_01",
				"pbw_castle_vo_landed_02",
				"pbw_castle_vo_landed_03",
				"pbw_castle_vo_landed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_landed_01",
				"pbw_castle_vo_landed_02",
				"pbw_castle_vo_landed_03",
				"pbw_castle_vo_landed_04"
			},
			sound_events_duration = {
				3.7079792022705,
				5.004979133606,
				3.448979139328,
				3.4869792461395
			}
		},
		pbw_castle_vo_meet_sorcerer = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_meet_sorcerer_01",
				"pbw_castle_vo_meet_sorcerer_02",
				"pbw_castle_vo_meet_sorcerer_03",
				"pbw_castle_vo_meet_sorcerer_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_meet_sorcerer_01",
				"pbw_castle_vo_meet_sorcerer_02",
				"pbw_castle_vo_meet_sorcerer_03",
				"pbw_castle_vo_meet_sorcerer_04"
			},
			sound_events_duration = {
				3.4119791984558,
				4.2249794006348,
				2.7499792575836,
				2.5709791183472
			}
		},
		pbw_castle_vo_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_recognize_01",
				"pbw_castle_vo_recognize_02",
				"pbw_castle_vo_recognize_03",
				"pbw_castle_vo_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_recognize_01",
				"pbw_castle_vo_recognize_02",
				"pbw_castle_vo_recognize_03",
				"pbw_castle_vo_recognize_04"
			},
			sound_events_duration = {
				1.5799791812897,
				2.0459792613983,
				3.493979215622,
				4.2889790534973
			}
		},
		pbw_castle_vo_search_again = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_search_again_01",
				"pbw_castle_vo_search_again_02",
				"pbw_castle_vo_search_again_03",
				"pbw_castle_vo_search_again_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_search_again_01",
				"pbw_castle_vo_search_again_02",
				"pbw_castle_vo_search_again_03",
				"pbw_castle_vo_search_again_04"
			},
			sound_events_duration = {
				4.3940000534058,
				2.8319792747498,
				2.7529792785645,
				5.1649789810181
			}
		},
		pbw_castle_vo_secret_door = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_secret_door_01",
				"pbw_castle_vo_secret_door_02",
				"pbw_castle_vo_secret_door_03",
				"pbw_castle_vo_secret_door_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_secret_door_01",
				"pbw_castle_vo_secret_door_02",
				"pbw_castle_vo_secret_door_03",
				"pbw_castle_vo_secret_door_04"
			},
			sound_events_duration = {
				3.6919791698456,
				3.0260000228882,
				5.8899793624878,
				2.6949791908264
			}
		},
		pbw_castle_vo_sorcerer_slain = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_sorcerer_slain_01",
				"pbw_castle_vo_sorcerer_slain_02",
				"pbw_castle_vo_sorcerer_slain_03",
				"pbw_castle_vo_sorcerer_slain_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_sorcerer_slain_01",
				"pbw_castle_vo_sorcerer_slain_02",
				"pbw_castle_vo_sorcerer_slain_03",
				"pbw_castle_vo_sorcerer_slain_04"
			},
			sound_events_duration = {
				1.7519999742508,
				2.7119998931885,
				2.7579791545868,
				2.7939999103546
			}
		},
		pbw_castle_vo_this_way = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_this_way_01",
				"pbw_castle_vo_this_way_02",
				"pbw_castle_vo_this_way_03",
				"pbw_castle_vo_this_way_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_this_way_01",
				"pbw_castle_vo_this_way_02",
				"pbw_castle_vo_this_way_03",
				"pbw_castle_vo_this_way_04"
			},
			sound_events_duration = {
				0.63200002908707,
				1.4340000152588,
				1.6770000457764,
				1.7369999885559
			}
		},
		pbw_castle_vo_throne_room_approach = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_throne_room_approach_01",
				"pbw_castle_vo_throne_room_approach_02",
				"pbw_castle_vo_throne_room_approach_03",
				"pbw_castle_vo_throne_room_approach_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_throne_room_approach_01",
				"pbw_castle_vo_throne_room_approach_02",
				"pbw_castle_vo_throne_room_approach_03",
				"pbw_castle_vo_throne_room_approach_04"
			},
			sound_events_duration = {
				1.9419791698456,
				4.3339791297913,
				3.8469791412353,
				3.1759791374206
			}
		},
		pbw_castle_vo_traces_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_traces_one_01",
				"pbw_castle_vo_traces_one_02",
				"pbw_castle_vo_traces_one_03",
				"pbw_castle_vo_traces_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_traces_one_01",
				"pbw_castle_vo_traces_one_02",
				"pbw_castle_vo_traces_one_03",
				"pbw_castle_vo_traces_one_04"
			},
			sound_events_duration = {
				5.1539793014526,
				5.249979019165,
				2.9089999198914,
				3.0019791126251
			}
		},
		pbw_castle_vo_trap_switch = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_trap_switch_01",
				"pbw_castle_vo_trap_switch_02",
				"pbw_castle_vo_trap_switch_03",
				"pbw_castle_vo_trap_switch_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_trap_switch_01",
				"pbw_castle_vo_trap_switch_02",
				"pbw_castle_vo_trap_switch_03",
				"pbw_castle_vo_trap_switch_04"
			},
			sound_events_duration = {
				1.9199792146683,
				1.9819791316986,
				2.477979183197,
				1.5859792232513
			}
		},
		pbw_castle_vo_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_castle",
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
				"pbw_castle_vo_vista_01",
				"pbw_castle_vo_vista_02",
				"pbw_castle_vo_vista_03",
				"pbw_castle_vo_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_castle_vo_vista_01",
				"pbw_castle_vo_vista_02",
				"pbw_castle_vo_vista_03",
				"pbw_castle_vo_vista_04"
			},
			sound_events_duration = {
				5.2589793205261,
				4.7349791526794,
				4.5619792938232,
				5.7379789352417
			}
		}
	})
end