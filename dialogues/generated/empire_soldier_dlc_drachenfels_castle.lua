return function ()
	define_rule({
		name = "pes_castle_intro_line_a",
		response = "pes_castle_intro_line_a",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_intro_line_b",
		response = "pes_castle_intro_line_b",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_intro_line_c",
		response = "pes_castle_intro_line_c",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_approaching_throne_room",
		response = "pes_castle_vo_approaching_throne_room",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_blockage",
		response = "pes_castle_vo_blockage",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_blood_pool",
		response = "pes_castle_vo_blood_pool",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_crypt_discovered",
		response = "pes_castle_vo_crypt_discovered",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_crypt_not_discovered",
		response = "pes_castle_vo_crypt_not_discovered",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_do_not_recognize",
		response = "pes_castle_vo_do_not_recognize",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_door_open",
		response = "pes_castle_vo_door_open",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_drop_down",
		response = "pes_castle_vo_drop_down",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_enter",
		response = "pes_castle_vo_enter",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_find_a_way_up",
		response = "pes_castle_vo_find_a_way_up",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_halls",
		response = "pes_castle_vo_halls",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_hello",
		response = "pes_castle_vo_hello",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_landed",
		response = "pes_castle_vo_landed",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_meet_sorcerer",
		response = "pes_castle_vo_meet_sorcerer",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_recognize",
		response = "pes_castle_vo_recognize",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_search_again",
		response = "pes_castle_vo_search_again",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_secret_door",
		response = "pes_castle_vo_secret_door",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_sorcerer_slain",
		response = "pes_castle_vo_sorcerer_slain",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_this_way",
		response = "pes_castle_vo_this_way",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_throne_room_approach",
		response = "pes_castle_vo_throne_room_approach",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_traces_one",
		response = "pes_castle_vo_traces_one",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_trap_switch",
		response = "pes_castle_vo_trap_switch",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		name = "pes_castle_vo_vista",
		response = "pes_castle_vo_vista",
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
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
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
		pes_castle_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				[1] = "pes_castle_intro_line_a_01",
				[2] = "pes_castle_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_castle_intro_line_a_01",
				[2] = "pes_castle_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 5.2659792900085,
				[2] = 4.7649793624878
			}
		},
		pes_castle_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				[1] = "pes_castle_intro_line_b_01",
				[2] = "pes_castle_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_castle_intro_line_b_01",
				[2] = "pes_castle_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 2.4519791603088,
				[2] = 3.6219792366028
			}
		},
		pes_castle_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				[1] = "pes_castle_intro_line_c_01",
				[2] = "pes_castle_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_castle_intro_line_c_01",
				[2] = "pes_castle_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 3.3229792118073,
				[2] = 2.9897291660309
			}
		},
		pes_castle_vo_approaching_throne_room = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_approaching_throne_room_01",
				"pes_castle_vo_approaching_throne_room_02",
				"pes_castle_vo_approaching_throne_room_03",
				"pes_castle_vo_approaching_throne_room_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_approaching_throne_room_01",
				"pes_castle_vo_approaching_throne_room_02",
				"pes_castle_vo_approaching_throne_room_03",
				"pes_castle_vo_approaching_throne_room_04"
			},
			sound_events_duration = {
				2.4929790496826,
				3.9049792289734,
				3.1229791641235,
				2.7329790592194
			}
		},
		pes_castle_vo_blockage = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_blockage_01",
				"pes_castle_vo_blockage_02",
				"pes_castle_vo_blockage_03",
				"pes_castle_vo_blockage_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_blockage_01",
				"pes_castle_vo_blockage_02",
				"pes_castle_vo_blockage_03",
				"pes_castle_vo_blockage_04"
			},
			sound_events_duration = {
				0.96497917175293,
				1.283979177475,
				1.7469791173935,
				2.908979177475
			}
		},
		pes_castle_vo_blood_pool = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_blood_pool_01",
				"pes_castle_vo_blood_pool_02",
				"pes_castle_vo_blood_pool_03",
				"pes_castle_vo_blood_pool_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_blood_pool_01",
				"pes_castle_vo_blood_pool_02",
				"pes_castle_vo_blood_pool_03",
				"pes_castle_vo_blood_pool_04"
			},
			sound_events_duration = {
				2.8249790668488,
				2.7069792747498,
				3.1249792575836,
				3.8999791145325
			}
		},
		pes_castle_vo_crypt_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_crypt_discovered_01",
				"pes_castle_vo_crypt_discovered_02",
				"pes_castle_vo_crypt_discovered_03",
				"pes_castle_vo_crypt_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_crypt_discovered_01",
				"pes_castle_vo_crypt_discovered_02",
				"pes_castle_vo_crypt_discovered_03",
				"pes_castle_vo_crypt_discovered_04"
			},
			sound_events_duration = {
				3.368979215622,
				3.5009791851044,
				3.1239790916443,
				4.1149792671204
			}
		},
		pes_castle_vo_crypt_not_discovered = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_crypt_not_discovered_01",
				"pes_castle_vo_crypt_not_discovered_02",
				"pes_castle_vo_crypt_not_discovered_03",
				"pes_castle_vo_crypt_not_discovered_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_crypt_not_discovered_01",
				"pes_castle_vo_crypt_not_discovered_02",
				"pes_castle_vo_crypt_not_discovered_03",
				"pes_castle_vo_crypt_not_discovered_04"
			},
			sound_events_duration = {
				3.0239791870117,
				1.6639791727066,
				4.0899791717529,
				3.7939791679382
			}
		},
		pes_castle_vo_do_not_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_do_not_recognize_01",
				"pes_castle_vo_do_not_recognize_02",
				"pes_castle_vo_do_not_recognize_03",
				"pes_castle_vo_do_not_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_do_not_recognize_01",
				"pes_castle_vo_do_not_recognize_02",
				"pes_castle_vo_do_not_recognize_03",
				"pes_castle_vo_do_not_recognize_04"
			},
			sound_events_duration = {
				3.5039792060852,
				3.7009792327881,
				1.8539791107178,
				3.0169792175293
			}
		},
		pes_castle_vo_door_open = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_door_open_01",
				"pes_castle_vo_door_open_02",
				"pes_castle_vo_door_open_03",
				"pes_castle_vo_door_open_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_door_open_01",
				"pes_castle_vo_door_open_02",
				"pes_castle_vo_door_open_03",
				"pes_castle_vo_door_open_04"
			},
			sound_events_duration = {
				5.169979095459,
				2.1159791946411,
				3.9329791069031,
				2.4169790744781
			}
		},
		pes_castle_vo_drop_down = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_drop_down_01",
				"pes_castle_vo_drop_down_02",
				"pes_castle_vo_drop_down_03",
				"pes_castle_vo_drop_down_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_drop_down_01",
				"pes_castle_vo_drop_down_02",
				"pes_castle_vo_drop_down_03",
				"pes_castle_vo_drop_down_04"
			},
			sound_events_duration = {
				1.6249791383743,
				4.4929790496826,
				3.2429790496826,
				2.7289791107178
			}
		},
		pes_castle_vo_enter = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_enter_01",
				"pes_castle_vo_enter_02",
				"pes_castle_vo_enter_03",
				"pes_castle_vo_enter_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_enter_01",
				"pes_castle_vo_enter_02",
				"pes_castle_vo_enter_03",
				"pes_castle_vo_enter_04"
			},
			sound_events_duration = {
				1.2119791507721,
				2.783979177475,
				2.6089792251587,
				1.7269999980927
			}
		},
		pes_castle_vo_find_a_way_up = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_find_a_way_up_01",
				"pes_castle_vo_find_a_way_up_02",
				"pes_castle_vo_find_a_way_up_03",
				"pes_castle_vo_find_a_way_up_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_find_a_way_up_01",
				"pes_castle_vo_find_a_way_up_02",
				"pes_castle_vo_find_a_way_up_03",
				"pes_castle_vo_find_a_way_up_04"
			},
			sound_events_duration = {
				1.9909791946411,
				3.5519790649414,
				1.7709791660309,
				2.1839792728424
			}
		},
		pes_castle_vo_halls = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_halls_01",
				"pes_castle_vo_halls_02",
				"pes_castle_vo_halls_03",
				"pes_castle_vo_halls_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_halls_01",
				"pes_castle_vo_halls_02",
				"pes_castle_vo_halls_03",
				"pes_castle_vo_halls_04"
			},
			sound_events_duration = {
				1.6519792079925,
				4.2539792060852,
				2.4099791049957,
				2.1779792308807
			}
		},
		pes_castle_vo_hello = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_hello_01",
				"pes_castle_vo_hello_02",
				"pes_castle_vo_hello_03",
				"pes_castle_vo_hello_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_hello_01",
				"pes_castle_vo_hello_02",
				"pes_castle_vo_hello_03",
				"pes_castle_vo_hello_04"
			},
			sound_events_duration = {
				1.4139791727066,
				3.5599999427795,
				2.4189791679382,
				1.118979215622
			}
		},
		pes_castle_vo_landed = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_landed_01",
				"pes_castle_vo_landed_02",
				"pes_castle_vo_landed_03",
				"pes_castle_vo_landed_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_landed_01",
				"pes_castle_vo_landed_02",
				"pes_castle_vo_landed_03",
				"pes_castle_vo_landed_04"
			},
			sound_events_duration = {
				3.3509790897369,
				2.4419791698456,
				2.6519792079926,
				2.6529791355133
			}
		},
		pes_castle_vo_meet_sorcerer = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_meet_sorcerer_01",
				"pes_castle_vo_meet_sorcerer_02",
				"pes_castle_vo_meet_sorcerer_03",
				"pes_castle_vo_meet_sorcerer_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_meet_sorcerer_01",
				"pes_castle_vo_meet_sorcerer_02",
				"pes_castle_vo_meet_sorcerer_03",
				"pes_castle_vo_meet_sorcerer_04"
			},
			sound_events_duration = {
				5.7879791259766,
				3.3149790763855,
				2.2509999275208,
				2.6119792461395
			}
		},
		pes_castle_vo_recognize = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_recognize_01",
				"pes_castle_vo_recognize_02",
				"pes_castle_vo_recognize_03",
				"pes_castle_vo_recognize_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_recognize_01",
				"pes_castle_vo_recognize_02",
				"pes_castle_vo_recognize_03",
				"pes_castle_vo_recognize_04"
			},
			sound_events_duration = {
				2.3439791202545,
				1.8659791946411,
				4.3899793624878,
				3.2049791812897
			}
		},
		pes_castle_vo_search_again = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_search_again_01",
				"pes_castle_vo_search_again_02",
				"pes_castle_vo_search_again_03",
				"pes_castle_vo_search_again_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_search_again_01",
				"pes_castle_vo_search_again_02",
				"pes_castle_vo_search_again_03",
				"pes_castle_vo_search_again_04"
			},
			sound_events_duration = {
				2.1249792575836,
				2.3969790935516,
				2.3259792327881,
				3.6733125448227
			}
		},
		pes_castle_vo_secret_door = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_secret_door_01",
				"pes_castle_vo_secret_door_02",
				"pes_castle_vo_secret_door_03",
				"pes_castle_vo_secret_door_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_secret_door_01",
				"pes_castle_vo_secret_door_02",
				"pes_castle_vo_secret_door_03",
				"pes_castle_vo_secret_door_04"
			},
			sound_events_duration = {
				1.7479791641235,
				2.0519790649414,
				2.7909791469574,
				1.8669791221619
			}
		},
		pes_castle_vo_sorcerer_slain = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_sorcerer_slain_01",
				"pes_castle_vo_sorcerer_slain_02",
				"pes_castle_vo_sorcerer_slain_03",
				"pes_castle_vo_sorcerer_slain_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_sorcerer_slain_01",
				"pes_castle_vo_sorcerer_slain_02",
				"pes_castle_vo_sorcerer_slain_03",
				"pes_castle_vo_sorcerer_slain_04"
			},
			sound_events_duration = {
				2.5729792118073,
				5.705979347229,
				5.1989793777466,
				5.7399792671204
			}
		},
		pes_castle_vo_this_way = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_this_way_01",
				"pes_castle_vo_this_way_02",
				"pes_castle_vo_this_way_03",
				"pes_castle_vo_this_way_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_this_way_01",
				"pes_castle_vo_this_way_02",
				"pes_castle_vo_this_way_03",
				"pes_castle_vo_this_way_04"
			},
			sound_events_duration = {
				1.3780000209808,
				1.9109791517258,
				1.3719791173935,
				1.5279791355133
			}
		},
		pes_castle_vo_throne_room_approach = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_throne_room_approach_01",
				"pes_castle_vo_throne_room_approach_02",
				"pes_castle_vo_throne_room_approach_03",
				"pes_castle_vo_throne_room_approach_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_throne_room_approach_01",
				"pes_castle_vo_throne_room_approach_02",
				"pes_castle_vo_throne_room_approach_03",
				"pes_castle_vo_throne_room_approach_04"
			},
			sound_events_duration = {
				4.441978931427,
				3.5489792823791,
				3.2619791030884,
				2.8329792022705
			}
		},
		pes_castle_vo_traces_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_traces_one_01",
				"pes_castle_vo_traces_one_02",
				"pes_castle_vo_traces_one_03",
				"pes_castle_vo_traces_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_traces_one_01",
				"pes_castle_vo_traces_one_02",
				"pes_castle_vo_traces_one_03",
				"pes_castle_vo_traces_one_04"
			},
			sound_events_duration = {
				2.2749791145325,
				2.6759791374206,
				2.9219791889191,
				4.6899790763855
			}
		},
		pes_castle_vo_trap_switch = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_trap_switch_01",
				"pes_castle_vo_trap_switch_02",
				"pes_castle_vo_trap_switch_03",
				"pes_castle_vo_trap_switch_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_trap_switch_01",
				"pes_castle_vo_trap_switch_02",
				"pes_castle_vo_trap_switch_03",
				"pes_castle_vo_trap_switch_04"
			},
			sound_events_duration = {
				3.0949790477753,
				2.3319792747498,
				2.6969792842865,
				2.5789792537689
			}
		},
		pes_castle_vo_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_castle",
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
				"pes_castle_vo_vista_01",
				"pes_castle_vo_vista_02",
				"pes_castle_vo_vista_03",
				"pes_castle_vo_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_castle_vo_vista_01",
				"pes_castle_vo_vista_02",
				"pes_castle_vo_vista_03",
				"pes_castle_vo_vista_04"
			},
			sound_events_duration = {
				2.783979177475,
				4.3209791183472,
				4.1099791526794,
				4.477979183197
			}
		}
	})
end