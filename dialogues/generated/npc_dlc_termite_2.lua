return function ()
	define_rule({
		response = "nik_power_escape_final_word_a",
		name = "nik_power_escape_final_word_a",
		probability = 1,
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
				"power_escape_final_word_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			}
		}
	})
	define_rule({
		response = "nik_power_start_banter_a",
		name = "nik_power_start_banter_a",
		probability = 1,
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
				"power_start_banter_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"inn_keeper"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_cavern_bomb_leaves_a",
		response = "vmg_a_power_cavern_bomb_leaves_a",
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
				"power_cavern_bomb_leaves_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_cavern_bomb_leaves",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_cavern_bomb_leaves",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_cavern_disable_generator_complete_a",
		response = "vmg_a_power_cavern_disable_generator_complete_a",
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
				"power_cavern_disable_generator_complete_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_cavern_disable_generator_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_cavern_disable_generator_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_cavern_disable_warp_sphere_complete_a",
		response = "vmg_a_power_cavern_disable_warp_sphere_complete_a",
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
				"power_cavern_disable_warp_sphere_complete_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_cavern_disable_warp_sphere_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_cavern_disable_warp_sphere_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_cavern_disable_wheel_two_complete_a",
		response = "vmg_a_power_cavern_disable_wheel_two_complete_a",
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
				"power_cavern_disable_wheel_two_complete_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_cavern_disable_wheel_two_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_cavern_disable_wheel_two_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "vmg_a_power_cavern_event_complete_a",
		name = "vmg_a_power_cavern_event_complete_a",
		probability = 1,
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
				"power_cavern_event_complete_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_cavern_second_interstitial_a",
		response = "vmg_a_power_cavern_second_interstitial_a",
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
				"power_cavern_disable_wheel_complete_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_cavern_second_interstitial",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_cavern_second_interstitial",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_escape_monster_fight_a",
		response = "vmg_a_power_escape_monster_fight_a",
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
				"power_escape_monster_fight_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_escape_monster_fight",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_escape_monster_fight",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "vmg_a_power_escape_monster_fight_end_b",
		name = "vmg_a_power_escape_monster_fight_end_b",
		probability = 1,
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
				"power_escape_monster_fight_end_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_escape_monster_fight_three_a",
		response = "vmg_a_power_escape_monster_fight_three_a",
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
				"power_escape_monster_fight_three_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_escape_monster_fight_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_escape_monster_fight_three",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_escape_monster_fight_two_a",
		response = "vmg_a_power_escape_monster_fight_two_a",
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
				"power_escape_monster_fight_two_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_escape_monster_fight_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_escape_monster_fight_two",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "vmg_a_power_escape_monster_reveal_b",
		name = "vmg_a_power_escape_monster_reveal_b",
		probability = 1,
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
				"power_escape_monster_reveal_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_escape_surprise_a",
		response = "vmg_a_power_escape_surprise_a",
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
				"power_escape_surprise_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_escape_surprise",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_escape_surprise",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		probability = 1,
		name = "vmg_a_power_first_interstitial_a",
		response = "vmg_a_power_first_interstitial_a",
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
				"power_first_interstitial_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"vs_mission_giver"
			},
			{
				"user_memory",
				"power_first_interstitial",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"power_first_interstitial",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		nik_power_escape_final_word_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"nik_power_escape_final_word_a_01",
				"nik_power_escape_final_word_a_02",
				"nik_power_escape_final_word_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"nik_power_escape_final_word_a_01",
				"nik_power_escape_final_word_a_02",
				"nik_power_escape_final_word_a_03"
			},
			sound_events_duration = {
				6.2150001525879,
				6.679666519165,
				5.0049166679382
			}
		},
		nik_power_start_banter_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"nik_power_start_banter_a_01",
				"nik_power_start_banter_a_02",
				"nik_power_start_banter_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"nik_power_start_banter_a_01",
				"nik_power_start_banter_a_02",
				"nik_power_start_banter_a_03"
			},
			sound_events_duration = {
				6.5648956298828,
				6.3692498207092,
				6.0251040458679
			}
		},
		vmg_a_power_cavern_bomb_leaves_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_cavern_bomb_leaves_a_01",
				"vmg_a_power_cavern_bomb_leaves_a_02",
				"vmg_a_power_cavern_bomb_leaves_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_power_cavern_bomb_leaves_a_01",
				"vmg_a_power_cavern_bomb_leaves_a_02",
				"vmg_a_power_cavern_bomb_leaves_a_03"
			},
			sound_events_duration = {
				6.3649792671204,
				7.2749791145325,
				6.6599793434143
			}
		},
		vmg_a_power_cavern_disable_generator_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_cavern_disable_generator_complete_a_01",
				"vmg_a_power_cavern_disable_generator_complete_a_02",
				"vmg_a_power_cavern_disable_generator_complete_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_power_cavern_disable_generator_complete_a_01",
				"vmg_a_power_cavern_disable_generator_complete_a_02",
				"vmg_a_power_cavern_disable_generator_complete_a_03"
			},
			sound_events_duration = {
				2.9299790859222,
				2.1249792575836,
				2.2649791240692
			}
		},
		vmg_a_power_cavern_disable_warp_sphere_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_cavern_disable_warp_sphere_complete_a_01",
				"vmg_a_power_cavern_disable_warp_sphere_complete_a_02",
				"vmg_a_power_cavern_disable_warp_sphere_complete_a_01"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_power_cavern_disable_warp_sphere_complete_a_01",
				"vmg_a_power_cavern_disable_warp_sphere_complete_a_02",
				"vmg_a_power_cavern_disable_warp_sphere_complete_a_01"
			},
			sound_events_duration = {
				6.4749794006348,
				2.1799790859222,
				6.4749794006348
			}
		},
		vmg_a_power_cavern_disable_wheel_two_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_cavern_disable_wheel_two_complete_a_01",
				"vmg_a_power_cavern_disable_wheel_two_complete_a_02",
				"vmg_a_power_cavern_disable_wheel_two_complete_a_01"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_cavern_disable_wheel_two_complete_a_01",
				"vmg_a_power_cavern_disable_wheel_two_complete_a_02",
				"vmg_a_power_cavern_disable_wheel_two_complete_a_01"
			},
			sound_events_duration = {
				4.124979019165,
				3.0149791240692,
				4.124979019165
			}
		},
		vmg_a_power_cavern_event_complete_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_cavern_event_complete_a_01",
				"vmg_a_power_cavern_event_complete_a_02",
				"vmg_a_power_cavern_event_complete_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_cavern_event_complete_a_01",
				"vmg_a_power_cavern_event_complete_a_02",
				"vmg_a_power_cavern_event_complete_a_03"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567
			}
		},
		vmg_a_power_cavern_second_interstitial_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_cavern_second_interstitial_a_01",
				"vmg_a_power_cavern_second_interstitial_a_02",
				"vmg_a_power_cavern_second_interstitial_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_cavern_second_interstitial_a_01",
				"vmg_a_power_cavern_second_interstitial_a_02",
				"vmg_a_power_cavern_second_interstitial_a_03"
			},
			sound_events_duration = {
				2.2149791717529,
				5.5149793624878,
				1.4999791383743
			}
		},
		vmg_a_power_escape_monster_fight_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_escape_monster_fight_a_01",
				"vmg_a_power_escape_monster_fight_a_02",
				"vmg_a_power_escape_monster_fight_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_power_escape_monster_fight_a_01",
				"vmg_a_power_escape_monster_fight_a_02",
				"vmg_a_power_escape_monster_fight_a_03"
			},
			sound_events_duration = {
				6.9099793434143,
				2.7449791431427,
				3.1899790763855
			}
		},
		vmg_a_power_escape_monster_fight_end_b = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_escape_monster_fight_end_b_01",
				"vmg_a_power_escape_monster_fight_end_b_02",
				"vmg_a_power_escape_monster_fight_end_b_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_escape_monster_fight_end_b_01",
				"vmg_a_power_escape_monster_fight_end_b_02",
				"vmg_a_power_escape_monster_fight_end_b_03"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567
			}
		},
		vmg_a_power_escape_monster_fight_three_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_escape_monster_fight_three_a_01",
				"vmg_a_power_escape_monster_fight_three_a_02",
				"vmg_a_power_escape_monster_fight_three_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_escape_monster_fight_three_a_01",
				"vmg_a_power_escape_monster_fight_three_a_02",
				"vmg_a_power_escape_monster_fight_three_a_03"
			},
			sound_events_duration = {
				2.2499792575836,
				4.3299789428711,
				4.4449791908264
			}
		},
		vmg_a_power_escape_monster_fight_two_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_escape_monster_fight_two_a_01",
				"vmg_a_power_escape_monster_fight_two_a_02",
				"vmg_a_power_escape_monster_fight_two_a_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_escape_monster_fight_two_a_01",
				"vmg_a_power_escape_monster_fight_two_a_02",
				"vmg_a_power_escape_monster_fight_two_a_03"
			},
			sound_events_duration = {
				6.419979095459,
				4.3649792671204,
				5.754979133606
			}
		},
		vmg_a_power_escape_monster_reveal_b = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_escape_monster_reveal_b_01",
				"vmg_a_power_escape_monster_reveal_b_02",
				"vmg_a_power_escape_monster_reveal_b_03"
			},
			randomize_indexes = {},
			sound_events = {
				"vmg_a_power_escape_monster_reveal_b_01",
				"vmg_a_power_escape_monster_reveal_b_02",
				"vmg_a_power_escape_monster_reveal_b_03"
			},
			sound_events_duration = {
				1.3199791908264,
				1.3199791908264,
				1.3199791908264
			}
		},
		vmg_a_power_escape_surprise_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_escape_surprise_a_01",
				"vmg_a_power_escape_surprise_a_02",
				"vmg_a_power_escape_surprise_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_power_escape_surprise_a_01",
				"vmg_a_power_escape_surprise_a_02",
				"vmg_a_power_escape_surprise_a_03"
			},
			sound_events_duration = {
				5.6399793624878,
				2.3499791622162,
				5.7999792098999
			}
		},
		vmg_a_power_first_interstitial_a = {
			randomize_indexes_n = 0,
			face_animations_n = 3,
			database = "npc_dlc_termite_2",
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
				"vmg_a_power_first_interstitial_a_01",
				"vmg_a_power_first_interstitial_a_02",
				"vmg_a_power_first_interstitial_a_03"
			},
			randomize_indexes = {},
			sound_distance = math.huge,
			sound_events = {
				"vmg_a_power_first_interstitial_a_01",
				"vmg_a_power_first_interstitial_a_02",
				"vmg_a_power_first_interstitial_a_03"
			},
			sound_events_duration = {
				2.5349791049957,
				5.5399789810181,
				4.124979019165
			}
		}
	})
end
