return function ()
	define_rule({
		name = "pbw_portals_castle_gate",
		response = "pbw_portals_castle_gate",
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
		name = "pbw_portals_castle_road",
		response = "pbw_portals_castle_road",
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
		name = "pbw_portals_crypt_event_blood",
		response = "pbw_portals_crypt_event_blood",
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
		name = "pbw_portals_crypt_event_entering_crypt",
		response = "pbw_portals_crypt_event_entering_crypt",
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
		name = "pbw_portals_crypt_event_hole",
		response = "pbw_portals_crypt_event_hole",
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
		name = "pbw_portals_crypt_exit",
		response = "pbw_portals_crypt_exit",
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
		name = "pbw_portals_enter_village",
		response = "pbw_portals_enter_village",
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
		name = "pbw_portals_event_missing_gargoyle_heads",
		response = "pbw_portals_event_missing_gargoyle_heads",
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
		name = "pbw_portals_everyone_gone",
		response = "pbw_portals_everyone_gone",
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
		name = "pbw_portals_find_map",
		response = "pbw_portals_find_map",
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
		name = "pbw_portals_find_survivors",
		response = "pbw_portals_find_survivors",
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
		name = "pbw_portals_follow_trail",
		response = "pbw_portals_follow_trail",
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
		name = "pbw_portals_get_out",
		response = "pbw_portals_get_out",
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
		name = "pbw_portals_get_to_temple",
		response = "pbw_portals_get_to_temple",
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
		name = "pbw_portals_help_search",
		response = "pbw_portals_help_search",
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
		name = "pbw_portals_intro_line_a",
		response = "pbw_portals_intro_line_a",
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
		name = "pbw_portals_intro_line_b",
		response = "pbw_portals_intro_line_b",
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
		name = "pbw_portals_intro_line_c",
		response = "pbw_portals_intro_line_c",
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
		name = "pbw_portals_kidnapped_traces",
		response = "pbw_portals_kidnapped_traces",
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
		name = "pbw_portals_map_first_clue",
		response = "pbw_portals_map_first_clue",
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
		name = "pbw_portals_map_second_clue",
		response = "pbw_portals_map_second_clue",
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
		name = "pbw_portals_memory_path",
		response = "pbw_portals_memory_path",
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
		name = "pbw_portals_memory_portals",
		response = "pbw_portals_memory_portals",
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
		name = "pbw_portals_objective_recap",
		response = "pbw_portals_objective_recap",
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
		name = "pbw_portals_pbw_castle_vista",
		response = "pbw_portals_pbw_castle_vista",
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
		name = "pbw_portals_portal_event",
		response = "pbw_portals_portal_event",
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
		name = "pbw_portals_portal_interact_one",
		response = "pbw_portals_portal_interact_one",
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
		name = "pbw_portals_portal_interact_three",
		response = "pbw_portals_portal_interact_three",
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
		name = "pbw_portals_portal_interact_two",
		response = "pbw_portals_portal_interact_two",
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
		name = "pbw_portals_raid_trace",
		response = "pbw_portals_raid_trace",
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
		name = "pbw_portals_secret_entrance_gate_opens",
		response = "pbw_portals_secret_entrance_gate_opens",
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
		name = "pbw_portals_stairs",
		response = "pbw_portals_stairs",
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
		name = "pbw_portals_temple_bell_tower",
		response = "pbw_portals_temple_bell_tower",
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
		name = "pbw_portals_temple_event",
		response = "pbw_portals_temple_event",
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
		name = "pbw_portals_temple_locked",
		response = "pbw_portals_temple_locked",
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
		name = "pbw_portals_the_map",
		response = "pbw_portals_the_map",
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
		name = "pbw_portals_the_temple",
		response = "pbw_portals_the_temple",
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
		name = "pbw_portals_trail_found",
		response = "pbw_portals_trail_found",
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
		name = "pbw_portals_village_raided",
		response = "pbw_portals_village_raided",
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
		name = "pbw_portals_waystone",
		response = "pbw_portals_waystone",
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
		pbw_portals_castle_gate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_pbw_castle_gate_01",
				"pbw_portals_pbw_castle_gate_02",
				"pbw_portals_pbw_castle_gate_03",
				"pbw_portals_pbw_castle_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_pbw_castle_gate_01",
				"pbw_portals_pbw_castle_gate_02",
				"pbw_portals_pbw_castle_gate_03",
				"pbw_portals_pbw_castle_gate_04"
			},
			sound_events_duration = {
				3.4419791698456,
				4.7229790687561,
				3.6759791374206,
				2.9179792404175
			}
		},
		pbw_portals_castle_road = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_pbw_castle_road_01",
				"pbw_portals_pbw_castle_road_02",
				"pbw_portals_pbw_castle_road_03",
				"pbw_portals_pbw_castle_road_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_pbw_castle_road_01",
				"pbw_portals_pbw_castle_road_02",
				"pbw_portals_pbw_castle_road_03",
				"pbw_portals_pbw_castle_road_04"
			},
			sound_events_duration = {
				2.3429791927338,
				2.3069791793823,
				2.8589792251587,
				2.4109792709351
			}
		},
		pbw_portals_crypt_event_blood = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_crypt_event_blood_01",
				"pbw_portals_crypt_event_blood_02",
				"pbw_portals_crypt_event_blood_03",
				"pbw_portals_crypt_event_blood_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_crypt_event_blood_01",
				"pbw_portals_crypt_event_blood_02",
				"pbw_portals_crypt_event_blood_03",
				"pbw_portals_crypt_event_blood_04"
			},
			sound_events_duration = {
				1.5189791917801,
				2.9319999217987,
				3.3219792842865,
				5.2329792976379
			}
		},
		pbw_portals_crypt_event_entering_crypt = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_crypt_event_entering_crypt_01",
				"pbw_portals_crypt_event_entering_crypt_02",
				"pbw_portals_crypt_event_entering_crypt_03",
				"pbw_portals_crypt_event_entering_crypt_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_crypt_event_entering_crypt_01",
				"pbw_portals_crypt_event_entering_crypt_02",
				"pbw_portals_crypt_event_entering_crypt_03",
				"pbw_portals_crypt_event_entering_crypt_04"
			},
			sound_events_duration = {
				2.7709791660309,
				2.7999999523163,
				3.9139790534973,
				2.5869791507721
			}
		},
		pbw_portals_crypt_event_hole = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_crypt_event_hole_01",
				"pbw_portals_crypt_event_hole_02",
				"pbw_portals_crypt_event_hole_03",
				"pbw_portals_crypt_event_hole_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_crypt_event_hole_01",
				"pbw_portals_crypt_event_hole_02",
				"pbw_portals_crypt_event_hole_03",
				"pbw_portals_crypt_event_hole_04"
			},
			sound_events_duration = {
				1.8910000324249,
				2.8769791126251,
				1.4420000314713,
				2.8229792118073
			}
		},
		pbw_portals_crypt_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_crypt_exit_01",
				"pbw_portals_crypt_exit_02",
				"pbw_portals_crypt_exit_03",
				"pbw_portals_crypt_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_crypt_exit_01",
				"pbw_portals_crypt_exit_02",
				"pbw_portals_crypt_exit_03",
				"pbw_portals_crypt_exit_04"
			},
			sound_events_duration = {
				2.7459790706634,
				1.7139791250229,
				3.2079792022705,
				3.1719791889191
			}
		},
		pbw_portals_enter_village = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_enter_village_01",
				"pbw_portals_enter_village_02",
				"pbw_portals_enter_village_03",
				"pbw_portals_enter_village_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_enter_village_01",
				"pbw_portals_enter_village_02",
				"pbw_portals_enter_village_03",
				"pbw_portals_enter_village_04"
			},
			sound_events_duration = {
				3.7460000514984,
				2.0969791412353,
				3.6489791870117,
				3.4929790496826
			}
		},
		pbw_portals_event_missing_gargoyle_heads = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_event_missing_gargoyle_heads_01",
				"pbw_portals_event_missing_gargoyle_heads_02",
				"pbw_portals_event_missing_gargoyle_heads_03",
				"pbw_portals_event_missing_gargoyle_heads_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_event_missing_gargoyle_heads_01",
				"pbw_portals_event_missing_gargoyle_heads_02",
				"pbw_portals_event_missing_gargoyle_heads_03",
				"pbw_portals_event_missing_gargoyle_heads_04"
			},
			sound_events_duration = {
				2.7505209445953,
				3.6103541851044,
				2.1859374046326,
				2.63316655159
			}
		},
		pbw_portals_everyone_gone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_everyone_gone_01",
				"pbw_portals_everyone_gone_02",
				"pbw_portals_everyone_gone_03",
				"pbw_portals_everyone_gone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_everyone_gone_01",
				"pbw_portals_everyone_gone_02",
				"pbw_portals_everyone_gone_03",
				"pbw_portals_everyone_gone_04"
			},
			sound_events_duration = {
				2.4519791603088,
				2.5669791698456,
				4.5959792137146,
				4.9299793243408
			}
		},
		pbw_portals_find_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_find_map_01",
				"pbw_portals_find_map_02",
				"pbw_portals_find_map_03",
				"pbw_portals_find_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_find_map_01",
				"pbw_portals_find_map_02",
				"pbw_portals_find_map_03",
				"pbw_portals_find_map_04"
			},
			sound_events_duration = {
				2.6689791679382,
				1.7000000476837,
				1.5379791259766,
				1.4539791345596
			}
		},
		pbw_portals_find_survivors = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_find_survivors_01",
				"pbw_portals_find_survivors_02",
				"pbw_portals_find_survivors_03",
				"pbw_portals_find_survivors_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_find_survivors_01",
				"pbw_portals_find_survivors_02",
				"pbw_portals_find_survivors_03",
				"pbw_portals_find_survivors_04"
			},
			sound_events_duration = {
				2.6979792118073,
				1.8009791374207,
				2.1919791698456,
				1.8289999961853
			}
		},
		pbw_portals_follow_trail = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_follow_trail_01",
				"pbw_portals_follow_trail_02",
				"pbw_portals_follow_trail_03",
				"pbw_portals_follow_trail_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_follow_trail_01",
				"pbw_portals_follow_trail_02",
				"pbw_portals_follow_trail_03",
				"pbw_portals_follow_trail_04"
			},
			sound_events_duration = {
				1.9079999923706,
				3.5199792385101,
				1.805999994278,
				3.2299792766571
			}
		},
		pbw_portals_get_out = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_get_out_01",
				"pbw_portals_get_out_02",
				"pbw_portals_get_out_03",
				"pbw_portals_get_out_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_get_out_01",
				"pbw_portals_get_out_02",
				"pbw_portals_get_out_03",
				"pbw_portals_get_out_04"
			},
			sound_events_duration = {
				1.6349791288376,
				2.9879791736603,
				3.2799792289734,
				2.5999791622162
			}
		},
		pbw_portals_get_to_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_get_to_temple_01",
				"pbw_portals_get_to_temple_02",
				"pbw_portals_get_to_temple_03",
				"pbw_portals_get_to_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_get_to_temple_01",
				"pbw_portals_get_to_temple_02",
				"pbw_portals_get_to_temple_03",
				"pbw_portals_get_to_temple_04"
			},
			sound_events_duration = {
				3.0999791622162,
				2.4949791431427,
				4.1609792709351,
				4.3689789772034
			}
		},
		pbw_portals_help_search = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_help_search_01",
				"pbw_portals_help_search_02",
				"pbw_portals_help_search_03",
				"pbw_portals_help_search_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_help_search_01",
				"pbw_portals_help_search_02",
				"pbw_portals_help_search_03",
				"pbw_portals_help_search_04"
			},
			sound_events_duration = {
				2.0909790992737,
				2.0920000076294,
				3.5939791202545,
				1.9420000314713
			}
		},
		pbw_portals_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				[1] = "pbw_portals_intro_line_a_01",
				[2] = "pbw_portals_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_portals_intro_line_a_01",
				[2] = "pbw_portals_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 3.4619791507721,
				[2] = 3.1710000038147
			}
		},
		pbw_portals_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				[1] = "pbw_portals_intro_line_b_01",
				[2] = "pbw_portals_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_portals_intro_line_b_01",
				[2] = "pbw_portals_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 0.8699791431427,
				[2] = 1.3109999895096
			}
		},
		pbw_portals_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				[1] = "pbw_portals_intro_line_c_01",
				[2] = "pbw_portals_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pbw_portals_intro_line_c_01",
				[2] = "pbw_portals_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 3.658979177475,
				[2] = 3.5319790840149
			}
		},
		pbw_portals_kidnapped_traces = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_kidnapped_traces_01",
				"pbw_portals_kidnapped_traces_02",
				"pbw_portals_kidnapped_traces_03",
				"pbw_portals_kidnapped_traces_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_kidnapped_traces_01",
				"pbw_portals_kidnapped_traces_02",
				"pbw_portals_kidnapped_traces_03",
				"pbw_portals_kidnapped_traces_04"
			},
			sound_events_duration = {
				2.5599792003632,
				4.1649789810181,
				4.1309790611267,
				2.4569792747498
			}
		},
		pbw_portals_map_first_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_map_first_clue_01",
				"pbw_portals_map_first_clue_02",
				"pbw_portals_map_first_clue_03",
				"pbw_portals_map_first_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_map_first_clue_01",
				"pbw_portals_map_first_clue_02",
				"pbw_portals_map_first_clue_03",
				"pbw_portals_map_first_clue_04"
			},
			sound_events_duration = {
				3.2329790592194,
				2.1979792118073,
				3.39097905159,
				4.9579792022705
			}
		},
		pbw_portals_map_second_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_map_second_clue_01",
				"pbw_portals_map_second_clue_02",
				"pbw_portals_map_second_clue_03",
				"pbw_portals_map_second_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_map_second_clue_01",
				"pbw_portals_map_second_clue_02",
				"pbw_portals_map_second_clue_03",
				"pbw_portals_map_second_clue_04"
			},
			sound_events_duration = {
				2.5969791412353,
				2.9929790496826,
				2.9369790554047,
				1.8209791183472
			}
		},
		pbw_portals_memory_path = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_memory_path_01",
				"pbw_portals_memory_path_02",
				"pbw_portals_memory_path_03",
				"pbw_portals_memory_path_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_memory_path_01",
				"pbw_portals_memory_path_02",
				"pbw_portals_memory_path_03",
				"pbw_portals_memory_path_04"
			},
			sound_events_duration = {
				2.1419792175293,
				2.6829791069031,
				3.0509791374206,
				3.7049791812897
			}
		},
		pbw_portals_memory_portals = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_memory_portals_01",
				"pbw_portals_memory_portals_02",
				"pbw_portals_memory_portals_03",
				"pbw_portals_memory_portals_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_memory_portals_01",
				"pbw_portals_memory_portals_02",
				"pbw_portals_memory_portals_03",
				"pbw_portals_memory_portals_04"
			},
			sound_events_duration = {
				3.1359791755676,
				3.2689790725708,
				4.7889790534973,
				3.3739895820618
			}
		},
		pbw_portals_objective_recap = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_objective_recap_01",
				"pbw_portals_objective_recap_02",
				"pbw_portals_objective_recap_03",
				"pbw_portals_objective_recap_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_objective_recap_01",
				"pbw_portals_objective_recap_02",
				"pbw_portals_objective_recap_03",
				"pbw_portals_objective_recap_04"
			},
			sound_events_duration = {
				3.5479791164398,
				3.9049792289734,
				3.6799790859222,
				5.2579793930054
			}
		},
		pbw_portals_pbw_castle_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_pbw_castle_vista_01",
				"pbw_portals_pbw_castle_vista_02",
				"pbw_portals_pbw_castle_vista_03",
				"pbw_portals_pbw_castle_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_pbw_castle_vista_01",
				"pbw_portals_pbw_castle_vista_02",
				"pbw_portals_pbw_castle_vista_03",
				"pbw_portals_pbw_castle_vista_04"
			},
			sound_events_duration = {
				4.6119790077209,
				4.3049793243408,
				6.2819790840149,
				5.7019791603088
			}
		},
		pbw_portals_portal_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_portal_event_01",
				"pbw_portals_portal_event_02",
				"pbw_portals_portal_event_03",
				"pbw_portals_portal_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_portal_event_01",
				"pbw_portals_portal_event_02",
				"pbw_portals_portal_event_03",
				"pbw_portals_portal_event_04"
			},
			sound_events_duration = {
				1.6579791307449,
				1.8419791460037,
				2.0949790477753,
				2.5219790935516
			}
		},
		pbw_portals_portal_interact_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_portal_interact_one_01",
				"pbw_portals_portal_interact_one_02",
				"pbw_portals_portal_interact_one_03",
				"pbw_portals_portal_interact_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_portal_interact_one_01",
				"pbw_portals_portal_interact_one_02",
				"pbw_portals_portal_interact_one_03",
				"pbw_portals_portal_interact_one_04"
			},
			sound_events_duration = {
				0.98299998044968,
				3.3719792366028,
				1.8639792203903,
				2.9399790763855
			}
		},
		pbw_portals_portal_interact_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_portal_interact_three_01",
				"pbw_portals_portal_interact_three_02",
				"pbw_portals_portal_interact_three_03",
				"pbw_portals_portal_interact_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_portal_interact_three_01",
				"pbw_portals_portal_interact_three_02",
				"pbw_portals_portal_interact_three_03",
				"pbw_portals_portal_interact_three_04"
			},
			sound_events_duration = {
				3.4340000152588,
				4.6169791221619,
				2.9429790973663,
				3.3139791488648
			}
		},
		pbw_portals_portal_interact_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_portal_interact_two_01",
				"pbw_portals_portal_interact_two_02",
				"pbw_portals_portal_interact_two_03",
				"pbw_portals_portal_interact_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_portal_interact_two_01",
				"pbw_portals_portal_interact_two_02",
				"pbw_portals_portal_interact_two_03",
				"pbw_portals_portal_interact_two_04"
			},
			sound_events_duration = {
				1.1259791851044,
				0.66699999570847,
				2.2939791679382,
				4.3299789428711
			}
		},
		pbw_portals_raid_trace = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_raid_trace_01",
				"pbw_portals_raid_trace_02",
				"pbw_portals_raid_trace_03",
				"pbw_portals_raid_trace_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_raid_trace_01",
				"pbw_portals_raid_trace_02",
				"pbw_portals_raid_trace_03",
				"pbw_portals_raid_trace_04"
			},
			sound_events_duration = {
				2.3049790859222,
				4.7269792556763,
				4.5709791183472,
				3.2809791564941
			}
		},
		pbw_portals_secret_entrance_gate_opens = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_secret_entrance_gate_opens_01",
				"pbw_portals_secret_entrance_gate_opens_02",
				"pbw_portals_secret_entrance_gate_opens_03",
				"pbw_portals_secret_entrance_gate_opens_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_secret_entrance_gate_opens_01",
				"pbw_portals_secret_entrance_gate_opens_02",
				"pbw_portals_secret_entrance_gate_opens_03",
				"pbw_portals_secret_entrance_gate_opens_04"
			},
			sound_events_duration = {
				2.5949790477753,
				3.1579999923706,
				3.9019792079926,
				3.3209791183472
			}
		},
		pbw_portals_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_stairs_01",
				"pbw_portals_stairs_02",
				"pbw_portals_stairs_03",
				"pbw_portals_stairs_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_stairs_01",
				"pbw_portals_stairs_02",
				"pbw_portals_stairs_03",
				"pbw_portals_stairs_04"
			},
			sound_events_duration = {
				5.6999793052673,
				4.4879789352417,
				3.7469792366028,
				6.0509791374206
			}
		},
		pbw_portals_temple_bell_tower = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_temple_bell_tower_01",
				"pbw_portals_temple_bell_tower_02",
				"pbw_portals_temple_bell_tower_03",
				"pbw_portals_temple_bell_tower_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_temple_bell_tower_01",
				"pbw_portals_temple_bell_tower_02",
				"pbw_portals_temple_bell_tower_03",
				"pbw_portals_temple_bell_tower_04"
			},
			sound_events_duration = {
				1.1679791212082,
				1.2469791173935,
				2.4809792041779,
				1.8789792060852
			}
		},
		pbw_portals_temple_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_temple_event_01",
				"pbw_portals_temple_event_02",
				"pbw_portals_temple_event_03",
				"pbw_portals_temple_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_temple_event_01",
				"pbw_portals_temple_event_02",
				"pbw_portals_temple_event_03",
				"pbw_portals_temple_event_04"
			},
			sound_events_duration = {
				3.6399791240692,
				3.3569791316986,
				2.9659790992737,
				3.4309792518616
			}
		},
		pbw_portals_temple_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_temple_locked_01",
				"pbw_portals_temple_locked_02",
				"pbw_portals_temple_locked_03",
				"pbw_portals_temple_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_temple_locked_01",
				"pbw_portals_temple_locked_02",
				"pbw_portals_temple_locked_03",
				"pbw_portals_temple_locked_04"
			},
			sound_events_duration = {
				2.3229999542236,
				2.834979057312,
				3.129979133606,
				2.118979215622
			}
		},
		pbw_portals_the_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_the_map_01",
				"pbw_portals_the_map_02",
				"pbw_portals_the_map_03",
				"pbw_portals_the_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_the_map_01",
				"pbw_portals_the_map_02",
				"pbw_portals_the_map_03",
				"pbw_portals_the_map_04"
			},
			sound_events_duration = {
				2.3449790477753,
				3.4139790534973,
				1.8580000400543,
				1.7259999513626
			}
		},
		pbw_portals_the_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_the_temple_01",
				"pbw_portals_the_temple_02",
				"pbw_portals_the_temple_03",
				"pbw_portals_the_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_the_temple_01",
				"pbw_portals_the_temple_02",
				"pbw_portals_the_temple_03",
				"pbw_portals_the_temple_04"
			},
			sound_events_duration = {
				1.25100004673,
				3.1909792423248,
				2.3509790897369,
				3.3839790821075
			}
		},
		pbw_portals_trail_found = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_trail_found_01",
				"pbw_portals_trail_found_02",
				"pbw_portals_trail_found_03",
				"pbw_portals_trail_found_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_trail_found_01",
				"pbw_portals_trail_found_02",
				"pbw_portals_trail_found_03",
				"pbw_portals_trail_found_04"
			},
			sound_events_duration = {
				1.0579999685288,
				1.7259792089462,
				1.4299792051315,
				1.7769792079925
			}
		},
		pbw_portals_village_raided = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_village_raided_01",
				"pbw_portals_village_raided_02",
				"pbw_portals_village_raided_03",
				"pbw_portals_village_raided_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_village_raided_01",
				"pbw_portals_village_raided_02",
				"pbw_portals_village_raided_03",
				"pbw_portals_village_raided_04"
			},
			sound_events_duration = {
				5.4179792404175,
				3.6530001163483,
				2.629979133606,
				4.0039792060852
			}
		},
		pbw_portals_waystone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "bright_wizard_dlc_drachenfels_portals",
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
				"pbw_portals_waystone_01",
				"pbw_portals_waystone_02",
				"pbw_portals_waystone_03",
				"pbw_portals_waystone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pbw_portals_waystone_01",
				"pbw_portals_waystone_02",
				"pbw_portals_waystone_03",
				"pbw_portals_waystone_04"
			},
			sound_events_duration = {
				4.4169793128967,
				2.5929999351502,
				5.0319790840149,
				4.8369793891907
			}
		}
	})
end