return function ()
	define_rule({
		response = "nfl_morris_before_shrine_tutorial_01",
		name = "nfl_morris_before_shrine_tutorial_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_before_shrine_tutorial"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"global_context",
				"times_shrine_was_in_range",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_shrine_tutorial_one",
		name = "nfl_morris_map_shrine_tutorial_one",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_shrine_tutorial"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"global_context",
				"times_shrine_visited",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_shrine_tutorial_three",
		name = "nfl_morris_map_shrine_tutorial_three",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_map_shrine_tutorial_two"
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_shrine_tutorial_two",
		name = "nfl_morris_map_shrine_tutorial_two",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_map_shrine_tutorial_one"
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_tutorial_five",
		name = "nfl_morris_map_tutorial_five",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_map_tutorial_three"
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_tutorial_one",
		name = "nfl_morris_map_tutorial_one",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_map_tutorial"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"global_context",
				"map_has_belakor",
				OP.EQ,
				0
			},
			{
				"global_context",
				"times_map_visited",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_tutorial_three",
		name = "nfl_morris_map_tutorial_three",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_map_tutorial_two"
			}
		}
	})
	define_rule({
		response = "nfl_morris_map_tutorial_two",
		name = "nfl_morris_map_tutorial_two",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak_self"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"ferry_lady_01"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"nfl_morris_map_tutorial_one"
			}
		}
	})
	define_rule({
		name = "pbw_gameplay_purchasing_blessing",
		response = "pbw_gameplay_purchasing_blessing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_purchasing_blessing"
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
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pbw_gameplay_shrine_hurry",
		name = "pbw_gameplay_shrine_hurry",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_shrine_hurry"
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
			}
		}
	})
	define_rule({
		name = "pdr_gameplay_purchasing_blessing",
		response = "pdr_gameplay_purchasing_blessing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_purchasing_blessing"
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
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pdr_gameplay_shrine_hurry",
		name = "pdr_gameplay_shrine_hurry",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_shrine_hurry"
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
			}
		}
	})
	define_rule({
		name = "pes_gameplay_purchasing_blessing",
		response = "pes_gameplay_purchasing_blessing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_purchasing_blessing"
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
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pes_gameplay_shrine_hurry",
		name = "pes_gameplay_shrine_hurry",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_shrine_hurry"
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
			}
		}
	})
	define_rule({
		name = "pwe_gameplay_purchasing_blessing",
		response = "pwe_gameplay_purchasing_blessing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_purchasing_blessing"
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
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_gameplay_shrine_hurry",
		name = "pwe_gameplay_shrine_hurry",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_shrine_hurry"
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
			}
		}
	})
	define_rule({
		name = "pwh_gameplay_purchasing_blessing",
		response = "pwh_gameplay_purchasing_blessing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_purchasing_blessing"
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
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMEDIFF,
				OP.GT,
				10
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_purchasing_blessing",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwh_gameplay_shrine_hurry",
		name = "pwh_gameplay_shrine_hurry",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"deus_shrine_hurry"
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
			}
		}
	})
	add_dialogues({
		nfl_morris_before_shrine_tutorial_01 = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_tutorial_four_01",
				"nfl_morris_map_tutorial_four_02",
				"nfl_morris_map_tutorial_four_03",
				"nfl_morris_map_tutorial_four_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_tutorial_four_01",
				"nfl_morris_map_tutorial_four_02",
				"nfl_morris_map_tutorial_four_03",
				"nfl_morris_map_tutorial_four_04"
			},
			sound_events_duration = {
				5.7184581756592,
				6.7569584846497,
				5.3052706718445,
				5.3604168891907
			}
		},
		nfl_morris_map_shrine_tutorial_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_shrine_tutorial_one_01",
				"nfl_morris_map_shrine_tutorial_one_02",
				"nfl_morris_map_shrine_tutorial_one_03",
				"nfl_morris_map_shrine_tutorial_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_shrine_tutorial_one_01",
				"nfl_morris_map_shrine_tutorial_one_02",
				"nfl_morris_map_shrine_tutorial_one_03",
				"nfl_morris_map_shrine_tutorial_one_04"
			},
			sound_events_duration = {
				5.4381875991821,
				5.916916847229,
				5.7074375152588,
				5.2709164619446
			}
		},
		nfl_morris_map_shrine_tutorial_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_shrine_tutorial_three_01",
				"nfl_morris_map_shrine_tutorial_three_02",
				"nfl_morris_map_shrine_tutorial_three_03",
				"nfl_morris_map_shrine_tutorial_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_shrine_tutorial_three_01",
				"nfl_morris_map_shrine_tutorial_three_02",
				"nfl_morris_map_shrine_tutorial_three_03",
				"nfl_morris_map_shrine_tutorial_three_04"
			},
			sound_events_duration = {
				5.8499999046326,
				5.0915417671204,
				6.0993332862854,
				5.8219585418701
			}
		},
		nfl_morris_map_shrine_tutorial_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_shrine_tutorial_two_01",
				"nfl_morris_map_shrine_tutorial_two_02",
				"nfl_morris_map_shrine_tutorial_two_03",
				"nfl_morris_map_shrine_tutorial_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_shrine_tutorial_two_01",
				"nfl_morris_map_shrine_tutorial_two_02",
				"nfl_morris_map_shrine_tutorial_two_03",
				"nfl_morris_map_shrine_tutorial_two_04"
			},
			sound_events_duration = {
				5.4122915267944,
				4.8190627098083,
				4.983916759491,
				6.6137290000916
			}
		},
		nfl_morris_map_tutorial_five = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_tutorial_five_01",
				"nfl_morris_map_tutorial_five_02",
				"nfl_morris_map_tutorial_five_03",
				"nfl_morris_map_tutorial_five_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_tutorial_five_01",
				"nfl_morris_map_tutorial_five_02",
				"nfl_morris_map_tutorial_five_03",
				"nfl_morris_map_tutorial_five_04"
			},
			sound_events_duration = {
				3.1788749694824,
				2.6133332252502,
				2.6453542709351,
				3.3626666069031
			}
		},
		nfl_morris_map_tutorial_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_tutorial_one_01",
				"nfl_morris_map_tutorial_one_02",
				"nfl_morris_map_tutorial_one_03",
				"nfl_morris_map_tutorial_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_tutorial_one_01",
				"nfl_morris_map_tutorial_one_02",
				"nfl_morris_map_tutorial_one_03",
				"nfl_morris_map_tutorial_one_04"
			},
			sound_events_duration = {
				3.9939374923706,
				4.296374797821,
				5.4429168701172,
				4.2527918815613
			}
		},
		nfl_morris_map_tutorial_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_tutorial_three_01",
				"nfl_morris_map_tutorial_three_02",
				"nfl_morris_map_tutorial_three_03",
				"nfl_morris_map_tutorial_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_tutorial_three_01",
				"nfl_morris_map_tutorial_three_02",
				"nfl_morris_map_tutorial_three_03",
				"nfl_morris_map_tutorial_three_04"
			},
			sound_events_duration = {
				4.7244377136231,
				4.4187707901001,
				4.3516664505005,
				5.6311874389648
			}
		},
		nfl_morris_map_tutorial_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "special_occasion",
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
				"nfl_morris_map_tutorial_two_01",
				"nfl_morris_map_tutorial_two_02",
				"nfl_morris_map_tutorial_two_03",
				"nfl_morris_map_tutorial_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"nfl_morris_map_tutorial_two_01",
				"nfl_morris_map_tutorial_two_02",
				"nfl_morris_map_tutorial_two_03",
				"nfl_morris_map_tutorial_two_04"
			},
			sound_events_duration = {
				5.6005206108093,
				4.5177083015442,
				4.5318126678467,
				4.6041460037231
			}
		},
		pbw_gameplay_purchasing_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_purchasing_blessing_01",
				"pbw_gameplay_purchasing_blessing_02",
				"pbw_gameplay_purchasing_blessing_03",
				"pbw_gameplay_purchasing_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_purchasing_blessing_01",
				"pbw_gameplay_purchasing_blessing_02",
				"pbw_gameplay_purchasing_blessing_03",
				"pbw_gameplay_purchasing_blessing_04"
			},
			sound_events_duration = {
				1.9440833330154,
				2.1464583873749,
				2.3093957901001,
				3.8590834140778
			}
		},
		pbw_gameplay_shrine_hurry = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pbw_gameplay_shrine_hurry_01",
				"pbw_gameplay_shrine_hurry_02",
				"pbw_gameplay_shrine_hurry_03",
				"pbw_gameplay_shrine_hurry_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_gameplay_shrine_hurry_01",
				"pbw_gameplay_shrine_hurry_02",
				"pbw_gameplay_shrine_hurry_03",
				"pbw_gameplay_shrine_hurry_04"
			},
			sound_events_duration = {
				3.2427499294281,
				3.2116041183472,
				2.0747499465942,
				1.7305833101273
			}
		},
		pdr_gameplay_purchasing_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_purchasing_blessing_01",
				"pdr_gameplay_purchasing_blessing_02",
				"pdr_gameplay_purchasing_blessing_03",
				"pdr_gameplay_purchasing_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_purchasing_blessing_01",
				"pdr_gameplay_purchasing_blessing_02",
				"pdr_gameplay_purchasing_blessing_03",
				"pdr_gameplay_purchasing_blessing_04"
			},
			sound_events_duration = {
				3.2913541793823,
				3.1530833244324,
				2.2483332157135,
				2.8118958473206
			}
		},
		pdr_gameplay_shrine_hurry = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pdr_gameplay_shrine_hurry_01",
				"pdr_gameplay_shrine_hurry_02",
				"pdr_gameplay_shrine_hurry_03",
				"pdr_gameplay_shrine_hurry_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_gameplay_shrine_hurry_01",
				"pdr_gameplay_shrine_hurry_02",
				"pdr_gameplay_shrine_hurry_03",
				"pdr_gameplay_shrine_hurry_04"
			},
			sound_events_duration = {
				1.0984791517258,
				1.1959166526794,
				2.2463750839233,
				3.006041765213
			}
		},
		pes_gameplay_purchasing_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_purchasing_blessing_01",
				"pes_gameplay_purchasing_blessing_02",
				"pes_gameplay_purchasing_blessing_03",
				"pes_gameplay_purchasing_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_purchasing_blessing_01",
				"pes_gameplay_purchasing_blessing_02",
				"pes_gameplay_purchasing_blessing_03",
				"pes_gameplay_purchasing_blessing_04"
			},
			sound_events_duration = {
				3.507354259491,
				2.8921041488648,
				2.919145822525,
				2.9487917423248
			}
		},
		pes_gameplay_shrine_hurry = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pes_gameplay_shrine_hurry_01",
				"pes_gameplay_shrine_hurry_02",
				"pes_gameplay_shrine_hurry_03",
				"pes_gameplay_shrine_hurry_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_gameplay_shrine_hurry_01",
				"pes_gameplay_shrine_hurry_02",
				"pes_gameplay_shrine_hurry_03",
				"pes_gameplay_shrine_hurry_04"
			},
			sound_events_duration = {
				1.5592708587647,
				1.3971041440964,
				1.5831458568573,
				1.3178124427795
			}
		},
		pwe_gameplay_purchasing_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_purchasing_blessing_01",
				"pwe_gameplay_purchasing_blessing_02",
				"pwe_gameplay_purchasing_blessing_03",
				"pwe_gameplay_purchasing_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_purchasing_blessing_01",
				"pwe_gameplay_purchasing_blessing_02",
				"pwe_gameplay_purchasing_blessing_03",
				"pwe_gameplay_purchasing_blessing_04"
			},
			sound_events_duration = {
				2.9519166946411,
				2.3786458969116,
				2.6995625495911,
				1.8863958120346
			}
		},
		pwe_gameplay_shrine_hurry = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwe_gameplay_shrine_hurry_01",
				"pwe_gameplay_shrine_hurry_02",
				"pwe_gameplay_shrine_hurry_03",
				"pwe_gameplay_shrine_hurry_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_gameplay_shrine_hurry_01",
				"pwe_gameplay_shrine_hurry_02",
				"pwe_gameplay_shrine_hurry_03",
				"pwe_gameplay_shrine_hurry_04"
			},
			sound_events_duration = {
				1.0658333301544,
				1.2887916564941,
				0.86329168081284,
				1.5138750076294
			}
		},
		pwh_gameplay_purchasing_blessing = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_purchasing_blessing_01",
				"pwh_gameplay_purchasing_blessing_02",
				"pwh_gameplay_purchasing_blessing_03",
				"pwh_gameplay_purchasing_blessing_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_purchasing_blessing_01",
				"pwh_gameplay_purchasing_blessing_02",
				"pwh_gameplay_purchasing_blessing_03",
				"pwh_gameplay_purchasing_blessing_04"
			},
			sound_events_duration = {
				2.5318748950958,
				3.1676666736603,
				2.6646873950958,
				3.0565416812897
			}
		},
		pwh_gameplay_shrine_hurry = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "hero_conversations_dlc_morris_map",
			sound_events_n = 4,
			category = "seen_items",
			dialogue_animations_n = 4,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			localization_strings = {
				"pwh_gameplay_shrine_hurry_01",
				"pwh_gameplay_shrine_hurry_02",
				"pwh_gameplay_shrine_hurry_03",
				"pwh_gameplay_shrine_hurry_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_gameplay_shrine_hurry_01",
				"pwh_gameplay_shrine_hurry_02",
				"pwh_gameplay_shrine_hurry_03",
				"pwh_gameplay_shrine_hurry_04"
			},
			sound_events_duration = {
				1.0161875486374,
				2.1991040706634,
				2.7839584350586,
				0.98491668701172
			}
		}
	})
end