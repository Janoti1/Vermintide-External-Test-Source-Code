return function ()
	define_rule({
		name = "pwh_portals_castle_gate",
		response = "pwh_portals_castle_gate",
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
				"portals_castle_gate"
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
				"portals_castle_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_castle_road",
		response = "pwh_portals_castle_road",
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
				"portals_castle_road"
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
				"portals_castle_road",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_road",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_event_blood",
		response = "pwh_portals_crypt_event_blood",
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
				"portals_crypt_event_blood"
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
				"portals_crypt_event_blood",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_blood",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_event_entering_crypt",
		response = "pwh_portals_crypt_event_entering_crypt",
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
				"portals_crypt_event_entering_crypt"
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
				"portals_crypt_event_entering_crypt",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_entering_crypt",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_event_hole",
		response = "pwh_portals_crypt_event_hole",
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
				"portals_crypt_event_hole"
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
				"portals_crypt_event_hole",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_event_hole",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_crypt_exit",
		response = "pwh_portals_crypt_exit",
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
				"portals_crypt_exit"
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
				"portals_crypt_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_crypt_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_enter_village",
		response = "pwh_portals_enter_village",
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
				"portals_enter_village"
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
				"portals_enter_village",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_enter_village",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_event_missing_gargoyle_heads",
		response = "pwh_portals_event_missing_gargoyle_heads",
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
				"portals_event_missing_gargoyle_heads"
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
				"portals_event_missing_gargoyle_heads",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_event_missing_gargoyle_heads",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_everyone_gone",
		response = "pwh_portals_everyone_gone",
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
				"portals_everyone_gone"
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
				"portals_everyone_gone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_everyone_gone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_find_map",
		response = "pwh_portals_find_map",
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
				"portals_find_map"
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
				"portals_find_map",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_find_map",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_find_survivors",
		response = "pwh_portals_find_survivors",
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
				"portals_find_survivors"
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
				"portals_find_survivors",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_find_survivors",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_follow_trail",
		response = "pwh_portals_follow_trail",
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
				"portals_follow_trail"
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
				"portals_follow_trail",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_follow_trail",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_get_out",
		response = "pwh_portals_get_out",
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
				"portals_get_out"
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
				"portals_get_out",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_get_out",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_get_to_temple",
		response = "pwh_portals_get_to_temple",
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
				"portals_get_to_temple"
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
				"portals_get_to_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_get_to_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_help_search",
		response = "pwh_portals_help_search",
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
				"portals_help_search"
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
				"portals_help_search",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_help_search",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_intro_line_a",
		response = "pwh_portals_intro_line_a",
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
				"portals_intro_line_a"
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
				"portals_intro_line_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_intro_line_b",
		response = "pwh_portals_intro_line_b",
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
				"portals_intro_line_a"
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
				"portals_intro_line_b",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_b",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_intro_line_c",
		response = "pwh_portals_intro_line_c",
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
				"portals_intro_line_b"
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
				"portals_intro_line_c",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_intro_line_c",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_kidnapped_traces",
		response = "pwh_portals_kidnapped_traces",
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
				"portals_kidnapped_traces"
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
				"portals_kidnapped_traces",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_kidnapped_traces",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_map_first_clue",
		response = "pwh_portals_map_first_clue",
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
				"portals_map_first_clue"
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
				"portals_map_first_clue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_map_first_clue",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_map_second_clue",
		response = "pwh_portals_map_second_clue",
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
				"portals_map_second_clue"
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
				"portals_map_second_clue",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_map_second_clue",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_memory_path",
		response = "pwh_portals_memory_path",
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
				"portals_memory_path"
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
				"portals_memory_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_memory_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_memory_portals",
		response = "pwh_portals_memory_portals",
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
				"portals_memory_portals"
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
				"portals_memory_path",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_memory_path",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_objective_recap",
		response = "pwh_portals_objective_recap",
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
				"portals_objective_recap"
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
				"portals_objective_recap",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_objective_recap",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_event",
		response = "pwh_portals_portal_event",
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
				"portals_portal_event"
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
				"portals_portal_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_interact_one",
		response = "pwh_portals_portal_interact_one",
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
				"portals_portal_interact_one"
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
				"portals_portal_interact_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_one",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_interact_three",
		response = "pwh_portals_portal_interact_three",
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
				"portals_portal_interact_three"
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
				"portals_portal_interact_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_three",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_portal_interact_two",
		response = "pwh_portals_portal_interact_two",
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
				"portals_portal_interact_two"
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
				"portals_portal_interact_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_portal_interact_two",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_pwh_castle_vista",
		response = "pwh_portals_pwh_castle_vista",
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
				"portals_castle_vista"
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
				"portals_castle_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_castle_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_raid_trace",
		response = "pwh_portals_raid_trace",
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
				"portals_raid_trace"
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
				"portals_raid_trace",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_raid_trace",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_secret_entrance_gate_opens",
		response = "pwh_portals_secret_entrance_gate_opens",
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
				"portals_secret_entrance_gate_opens"
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
				"portals_secret_entrance_gate_opens",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_secret_entrance_gate_opens",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_stairs",
		response = "pwh_portals_stairs",
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
				"portals_stairs"
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
				"portals_stairs",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_stairs",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_temple_bell_tower",
		response = "pwh_portals_temple_bell_tower",
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
				"portals_temple_bell_tower"
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
				"portals_temple_bell_tower",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_bell_tower",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_temple_event",
		response = "pwh_portals_temple_event",
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
				"portals_temple_event"
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
				"portals_temple_event",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_event",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_temple_locked",
		response = "pwh_portals_temple_locked",
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
				"portals_temple_locked"
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
				"portals_temple_locked",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_temple_locked",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_the_map",
		response = "pwh_portals_the_map",
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
				"portals_the_map"
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
				"portals_the_map",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_the_map",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_the_temple",
		response = "pwh_portals_the_temple",
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
				"portals_the_temple"
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
				"portals_the_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_the_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_trail_found",
		response = "pwh_portals_trail_found",
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
				"portals_trail_found"
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
				"portals_trail_found",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_trail_found",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_village_raided",
		response = "pwh_portals_village_raided",
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
				"portals_village_raided "
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
				"portals_village_raided ",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_village_raided ",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwh_portals_waystone",
		response = "pwh_portals_waystone",
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
				"portals_waystone"
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
				"portals_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"portals_waystone",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwh_portals_castle_gate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_pwh_castle_gate_01",
				"pwh_portals_pwh_castle_gate_02",
				"pwh_portals_pwh_castle_gate_03",
				"pwh_portals_pwh_castle_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_pwh_castle_gate_01",
				"pwh_portals_pwh_castle_gate_02",
				"pwh_portals_pwh_castle_gate_03",
				"pwh_portals_pwh_castle_gate_04"
			},
			sound_events_duration = {
				5.3239793777466,
				7.4759793281555,
				7.2319793701172,
				6.2389793395996
			}
		},
		pwh_portals_castle_road = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_pwh_castle_road_01",
				"pwh_portals_pwh_castle_road_02",
				"pwh_portals_pwh_castle_road_03",
				"pwh_portals_pwh_castle_road_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_pwh_castle_road_01",
				"pwh_portals_pwh_castle_road_02",
				"pwh_portals_pwh_castle_road_03",
				"pwh_portals_pwh_castle_road_04"
			},
			sound_events_duration = {
				4.5289793014526,
				2.2999792098999,
				3.0649790763855,
				5.040979385376
			}
		},
		pwh_portals_crypt_event_blood = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_crypt_event_blood_01",
				"pwh_portals_crypt_event_blood_02",
				"pwh_portals_crypt_event_blood_03",
				"pwh_portals_crypt_event_blood_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_crypt_event_blood_01",
				"pwh_portals_crypt_event_blood_02",
				"pwh_portals_crypt_event_blood_03",
				"pwh_portals_crypt_event_blood_04"
			},
			sound_events_duration = {
				1.7879999876022,
				5.8059792518616,
				4.6279792785644,
				5.0679793357849
			}
		},
		pwh_portals_crypt_event_entering_crypt = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_crypt_event_entering_crypt_01",
				"pwh_portals_crypt_event_entering_crypt_02",
				"pwh_portals_crypt_event_entering_crypt_03",
				"pwh_portals_crypt_event_entering_crypt_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_crypt_event_entering_crypt_01",
				"pwh_portals_crypt_event_entering_crypt_02",
				"pwh_portals_crypt_event_entering_crypt_03",
				"pwh_portals_crypt_event_entering_crypt_04"
			},
			sound_events_duration = {
				3.0799791812897,
				2.7589790821075,
				4.705979347229,
				3.6839792728424
			}
		},
		pwh_portals_crypt_event_hole = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_crypt_event_hole_01",
				"pwh_portals_crypt_event_hole_02",
				"pwh_portals_crypt_event_hole_03",
				"pwh_portals_crypt_event_hole_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_crypt_event_hole_01",
				"pwh_portals_crypt_event_hole_02",
				"pwh_portals_crypt_event_hole_03",
				"pwh_portals_crypt_event_hole_04"
			},
			sound_events_duration = {
				3.0520000457764,
				4.0429792404175,
				1.7059791088104,
				5.5899791717529
			}
		},
		pwh_portals_crypt_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_crypt_exit_01",
				"pwh_portals_crypt_exit_02",
				"pwh_portals_crypt_exit_03",
				"pwh_portals_crypt_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_crypt_exit_01",
				"pwh_portals_crypt_exit_02",
				"pwh_portals_crypt_exit_03",
				"pwh_portals_crypt_exit_04"
			},
			sound_events_duration = {
				4.2349791526794,
				3.881979227066,
				3.0869791507721,
				5.2539792060852
			}
		},
		pwh_portals_enter_village = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_enter_village_01",
				"pwh_portals_enter_village_02",
				"pwh_portals_enter_village_03",
				"pwh_portals_enter_village_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_enter_village_01",
				"pwh_portals_enter_village_02",
				"pwh_portals_enter_village_03",
				"pwh_portals_enter_village_04"
			},
			sound_events_duration = {
				4.8329792022705,
				5.4169793128967,
				4.6559791564941,
				3.4179792404175
			}
		},
		pwh_portals_event_missing_gargoyle_heads = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_event_missing_gargoyle_heads_01",
				"pwh_portals_event_missing_gargoyle_heads_02",
				"pwh_portals_event_missing_gargoyle_heads_03",
				"pwh_portals_event_missing_gargoyle_heads_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_event_missing_gargoyle_heads_01",
				"pwh_portals_event_missing_gargoyle_heads_02",
				"pwh_portals_event_missing_gargoyle_heads_03",
				"pwh_portals_event_missing_gargoyle_heads_04"
			},
			sound_events_duration = {
				4.397979259491,
				3.4099791049957,
				3.147979259491,
				5.0739793777466
			}
		},
		pwh_portals_everyone_gone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_everyone_gone_01",
				"pwh_portals_everyone_gone_02",
				"pwh_portals_everyone_gone_03",
				"pwh_portals_everyone_gone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_everyone_gone_01",
				"pwh_portals_everyone_gone_02",
				"pwh_portals_everyone_gone_03",
				"pwh_portals_everyone_gone_04"
			},
			sound_events_duration = {
				4.3659791946411,
				4.5569791793823,
				6.9359793663025,
				4.9849791526794
			}
		},
		pwh_portals_find_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_find_map_01",
				"pwh_portals_find_map_02",
				"pwh_portals_find_map_03",
				"pwh_portals_find_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_find_map_01",
				"pwh_portals_find_map_02",
				"pwh_portals_find_map_03",
				"pwh_portals_find_map_04"
			},
			sound_events_duration = {
				1.8199791908264,
				2.5599792003632,
				3.334979057312,
				2.4369790554047
			}
		},
		pwh_portals_find_survivors = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_find_survivors_01",
				"pwh_portals_find_survivors_02",
				"pwh_portals_find_survivors_03",
				"pwh_portals_find_survivors_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_find_survivors_01",
				"pwh_portals_find_survivors_02",
				"pwh_portals_find_survivors_03",
				"pwh_portals_find_survivors_04"
			},
			sound_events_duration = {
				1.6489791870117,
				4.2039790153503,
				2.4159791469574,
				1.8629791736603
			}
		},
		pwh_portals_follow_trail = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_follow_trail_01",
				"pwh_portals_follow_trail_02",
				"pwh_portals_follow_trail_03",
				"pwh_portals_follow_trail_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_follow_trail_01",
				"pwh_portals_follow_trail_02",
				"pwh_portals_follow_trail_03",
				"pwh_portals_follow_trail_04"
			},
			sound_events_duration = {
				3.9359791278839,
				3.9859790802002,
				3.9279792308807,
				5.1129789352417
			}
		},
		pwh_portals_get_out = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_get_out_01",
				"pwh_portals_get_out_02",
				"pwh_portals_get_out_03",
				"pwh_portals_get_out_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_get_out_01",
				"pwh_portals_get_out_02",
				"pwh_portals_get_out_03",
				"pwh_portals_get_out_04"
			},
			sound_events_duration = {
				1.5439791679382,
				1.5490000247955,
				2.2199790477753,
				1.8749791383743
			}
		},
		pwh_portals_get_to_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_get_to_temple_01",
				"pwh_portals_get_to_temple_02",
				"pwh_portals_get_to_temple_03",
				"pwh_portals_get_to_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_get_to_temple_01",
				"pwh_portals_get_to_temple_02",
				"pwh_portals_get_to_temple_03",
				"pwh_portals_get_to_temple_04"
			},
			sound_events_duration = {
				7.9649791717529,
				5.9839792251587,
				6.4089789390564,
				6.4719791412353
			}
		},
		pwh_portals_help_search = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_help_search_01",
				"pwh_portals_help_search_02",
				"pwh_portals_help_search_03",
				"pwh_portals_help_search_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_help_search_01",
				"pwh_portals_help_search_02",
				"pwh_portals_help_search_03",
				"pwh_portals_help_search_04"
			},
			sound_events_duration = {
				3.3619792461395,
				3.5389790534973,
				1.9889792203903,
				5.0579791069031
			}
		},
		pwh_portals_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				[1] = "pwh_portals_intro_line_a_01",
				[2] = "pwh_portals_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_portals_intro_line_a_01",
				[2] = "pwh_portals_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 4.4089789390564,
				[2] = 4.6369791030884
			}
		},
		pwh_portals_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				[1] = "pwh_portals_intro_line_b_01",
				[2] = "pwh_portals_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_portals_intro_line_b_01",
				[2] = "pwh_portals_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 2.6109790802002,
				[2] = 2.3849792480469
			}
		},
		pwh_portals_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				[1] = "pwh_portals_intro_line_c_01",
				[2] = "pwh_portals_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwh_portals_intro_line_c_01",
				[2] = "pwh_portals_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 6.0819792747498,
				[2] = 5.9099793434143
			}
		},
		pwh_portals_kidnapped_traces = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_kidnapped_traces_01",
				"pwh_portals_kidnapped_traces_02",
				"pwh_portals_kidnapped_traces_03",
				"pwh_portals_kidnapped_traces_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_kidnapped_traces_01",
				"pwh_portals_kidnapped_traces_02",
				"pwh_portals_kidnapped_traces_03",
				"pwh_portals_kidnapped_traces_04"
			},
			sound_events_duration = {
				4.4849791526794,
				6.8559789657593,
				5.7259793281555,
				7.4919791221619
			}
		},
		pwh_portals_map_first_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_map_first_clue_01",
				"pwh_portals_map_first_clue_02",
				"pwh_portals_map_first_clue_03",
				"pwh_portals_map_first_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_map_first_clue_01",
				"pwh_portals_map_first_clue_02",
				"pwh_portals_map_first_clue_03",
				"pwh_portals_map_first_clue_04"
			},
			sound_events_duration = {
				4.3419790267944,
				2.2969791889191,
				4.4989790916443,
				5.165979385376
			}
		},
		pwh_portals_map_second_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_map_second_clue_01",
				"pwh_portals_map_second_clue_02",
				"pwh_portals_map_second_clue_03",
				"pwh_portals_map_second_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_map_second_clue_01",
				"pwh_portals_map_second_clue_02",
				"pwh_portals_map_second_clue_03",
				"pwh_portals_map_second_clue_04"
			},
			sound_events_duration = {
				6.0349793434143,
				4.9499793052673,
				3.3059792518616,
				3.6259791851044
			}
		},
		pwh_portals_memory_path = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_memory_path_01",
				"pwh_portals_memory_path_02",
				"pwh_portals_memory_path_03",
				"pwh_portals_memory_path_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_memory_path_01",
				"pwh_portals_memory_path_02",
				"pwh_portals_memory_path_03",
				"pwh_portals_memory_path_04"
			},
			sound_events_duration = {
				1.6109791994095,
				3.6749792098999,
				3.8969790935516,
				5.2829790115356
			}
		},
		pwh_portals_memory_portals = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_memory_portals_01",
				"pwh_portals_memory_portals_02",
				"pwh_portals_memory_portals_03",
				"pwh_portals_memory_portals_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_memory_portals_01",
				"pwh_portals_memory_portals_02",
				"pwh_portals_memory_portals_03",
				"pwh_portals_memory_portals_04"
			},
			sound_events_duration = {
				2.7709791660309,
				5.1839790344238,
				4.3909792900085,
				6.6979789733887
			}
		},
		pwh_portals_objective_recap = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_objective_recap_01",
				"pwh_portals_objective_recap_02",
				"pwh_portals_objective_recap_03",
				"pwh_portals_objective_recap_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_objective_recap_01",
				"pwh_portals_objective_recap_02",
				"pwh_portals_objective_recap_03",
				"pwh_portals_objective_recap_04"
			},
			sound_events_duration = {
				6.0029792785644,
				5.6409792900085,
				4.9519791603088,
				6.0189790725708
			}
		},
		pwh_portals_portal_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_portal_event_01",
				"pwh_portals_portal_event_02",
				"pwh_portals_portal_event_03",
				"pwh_portals_portal_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_portal_event_01",
				"pwh_portals_portal_event_02",
				"pwh_portals_portal_event_03",
				"pwh_portals_portal_event_04"
			},
			sound_events_duration = {
				1.8639999628067,
				3.8439791202545,
				1.8579791784286,
				3.2139999866486
			}
		},
		pwh_portals_portal_interact_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_portal_interact_one_01",
				"pwh_portals_portal_interact_one_02",
				"pwh_portals_portal_interact_one_03",
				"pwh_portals_portal_interact_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_portal_interact_one_01",
				"pwh_portals_portal_interact_one_02",
				"pwh_portals_portal_interact_one_03",
				"pwh_portals_portal_interact_one_04"
			},
			sound_events_duration = {
				0.96197915077209,
				3.3709790706634,
				1.6669791936874,
				3.4059791564941
			}
		},
		pwh_portals_portal_interact_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_portal_interact_three_01",
				"pwh_portals_portal_interact_three_02",
				"pwh_portals_portal_interact_three_03",
				"pwh_portals_portal_interact_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_portal_interact_three_01",
				"pwh_portals_portal_interact_three_02",
				"pwh_portals_portal_interact_three_03",
				"pwh_portals_portal_interact_three_04"
			},
			sound_events_duration = {
				3.5369791984558,
				3.0949790477753,
				4.3769793510437,
				3.629979133606
			}
		},
		pwh_portals_portal_interact_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_portal_interact_two_01",
				"pwh_portals_portal_interact_two_02",
				"pwh_portals_portal_interact_two_03",
				"pwh_portals_portal_interact_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_portal_interact_two_01",
				"pwh_portals_portal_interact_two_02",
				"pwh_portals_portal_interact_two_03",
				"pwh_portals_portal_interact_two_04"
			},
			sound_events_duration = {
				0.79697918891907,
				1.9949791431427,
				3.6129791736603,
				3.5199792385101
			}
		},
		pwh_portals_pwh_castle_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_pwh_castle_vista_01",
				"pwh_portals_pwh_castle_vista_02",
				"pwh_portals_pwh_castle_vista_03",
				"pwh_portals_pwh_castle_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_pwh_castle_vista_01",
				"pwh_portals_pwh_castle_vista_02",
				"pwh_portals_pwh_castle_vista_03",
				"pwh_portals_pwh_castle_vista_04"
			},
			sound_events_duration = {
				7.0089793205261,
				7.7839789390564,
				7.3459792137146,
				8.2259788513184
			}
		},
		pwh_portals_raid_trace = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_raid_trace_01",
				"pwh_portals_raid_trace_02",
				"pwh_portals_raid_trace_03",
				"pwh_portals_raid_trace_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_raid_trace_01",
				"pwh_portals_raid_trace_02",
				"pwh_portals_raid_trace_03",
				"pwh_portals_raid_trace_04"
			},
			sound_events_duration = {
				1.9979791641235,
				2.51597905159,
				5.1839790344238,
				4.5469789505005
			}
		},
		pwh_portals_secret_entrance_gate_opens = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_secret_entrance_gate_opens_01",
				"pwh_portals_secret_entrance_gate_opens_02",
				"pwh_portals_secret_entrance_gate_opens_03",
				"pwh_portals_secret_entrance_gate_opens_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_secret_entrance_gate_opens_01",
				"pwh_portals_secret_entrance_gate_opens_02",
				"pwh_portals_secret_entrance_gate_opens_03",
				"pwh_portals_secret_entrance_gate_opens_04"
			},
			sound_events_duration = {
				4.8599791526794,
				5.8019790649414,
				3.2929792404175,
				5.1529793739319
			}
		},
		pwh_portals_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_stairs_01",
				"pwh_portals_stairs_02",
				"pwh_portals_stairs_03",
				"pwh_portals_stairs_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_stairs_01",
				"pwh_portals_stairs_02",
				"pwh_portals_stairs_03",
				"pwh_portals_stairs_04"
			},
			sound_events_duration = {
				5.0329790115356,
				2.8539791107178,
				4.7329792976379,
				6.7629790306091
			}
		},
		pwh_portals_temple_bell_tower = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_temple_bell_tower_01",
				"pwh_portals_temple_bell_tower_02",
				"pwh_portals_temple_bell_tower_03",
				"pwh_portals_temple_bell_tower_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_temple_bell_tower_01",
				"pwh_portals_temple_bell_tower_02",
				"pwh_portals_temple_bell_tower_03",
				"pwh_portals_temple_bell_tower_04"
			},
			sound_events_duration = {
				2.709979057312,
				3.0609791278839,
				2.2109792232513,
				3.0869791507721
			}
		},
		pwh_portals_temple_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_temple_event_01",
				"pwh_portals_temple_event_02",
				"pwh_portals_temple_event_03",
				"pwh_portals_temple_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_temple_event_01",
				"pwh_portals_temple_event_02",
				"pwh_portals_temple_event_03",
				"pwh_portals_temple_event_04"
			},
			sound_events_duration = {
				3.0539791584015,
				4.1529793739319,
				3.5509791374206,
				3.091979265213
			}
		},
		pwh_portals_temple_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_temple_locked_01",
				"pwh_portals_temple_locked_02",
				"pwh_portals_temple_locked_03",
				"pwh_portals_temple_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_temple_locked_01",
				"pwh_portals_temple_locked_02",
				"pwh_portals_temple_locked_03",
				"pwh_portals_temple_locked_04"
			},
			sound_events_duration = {
				2.6919791698456,
				4.1469793319702,
				2.8829791545868,
				5.5909790992737
			}
		},
		pwh_portals_the_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_the_map_01",
				"pwh_portals_the_map_02",
				"pwh_portals_the_map_03",
				"pwh_portals_the_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_the_map_01",
				"pwh_portals_the_map_02",
				"pwh_portals_the_map_03",
				"pwh_portals_the_map_04"
			},
			sound_events_duration = {
				3.2379791736603,
				3.3359792232513,
				3.6109790802002,
				4.8279790878296
			}
		},
		pwh_portals_the_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_the_temple_01",
				"pwh_portals_the_temple_02",
				"pwh_portals_the_temple_03",
				"pwh_portals_the_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_the_temple_01",
				"pwh_portals_the_temple_02",
				"pwh_portals_the_temple_03",
				"pwh_portals_the_temple_04"
			},
			sound_events_duration = {
				2.2559790611267,
				2.323979139328,
				5.6749792098999,
				4.7079792022705
			}
		},
		pwh_portals_trail_found = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_trail_found_01",
				"pwh_portals_trail_found_02",
				"pwh_portals_trail_found_03",
				"pwh_portals_trail_found_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_trail_found_01",
				"pwh_portals_trail_found_02",
				"pwh_portals_trail_found_03",
				"pwh_portals_trail_found_04"
			},
			sound_events_duration = {
				2.3399791717529,
				4.4469790458679,
				3.7559790611267,
				5.5119791030884
			}
		},
		pwh_portals_village_raided = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_village_raided_01",
				"pwh_portals_village_raided_02",
				"pwh_portals_village_raided_03",
				"pwh_portals_village_raided_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_village_raided_01",
				"pwh_portals_village_raided_02",
				"pwh_portals_village_raided_03",
				"pwh_portals_village_raided_04"
			},
			sound_events_duration = {
				4.4389791488647,
				4.8659791946411,
				5.7149791717529,
				5.1599793434143
			}
		},
		pwh_portals_waystone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "witch_hunter_dlc_drachenfels_portals",
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
				"pwh_portals_waystone_01",
				"pwh_portals_waystone_02",
				"pwh_portals_waystone_03",
				"pwh_portals_waystone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwh_portals_waystone_01",
				"pwh_portals_waystone_02",
				"pwh_portals_waystone_03",
				"pwh_portals_waystone_04"
			},
			sound_events_duration = {
				4.0489792823792,
				5.1079792976379,
				5.7739791870117,
				6.8669791221619
			}
		}
	})
end