return function ()
	define_rule({
		name = "pdr_portals_castle_gate",
		response = "pdr_portals_castle_gate",
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
		name = "pdr_portals_castle_road",
		response = "pdr_portals_castle_road",
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
		name = "pdr_portals_crypt_event_blood",
		response = "pdr_portals_crypt_event_blood",
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
		name = "pdr_portals_crypt_event_entering_crypt",
		response = "pdr_portals_crypt_event_entering_crypt",
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
		name = "pdr_portals_crypt_event_hole",
		response = "pdr_portals_crypt_event_hole",
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
		name = "pdr_portals_crypt_exit",
		response = "pdr_portals_crypt_exit",
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
		name = "pdr_portals_enter_village",
		response = "pdr_portals_enter_village",
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
		name = "pdr_portals_event_missing_gargoyle_heads",
		response = "pdr_portals_event_missing_gargoyle_heads",
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
		name = "pdr_portals_everyone_gone",
		response = "pdr_portals_everyone_gone",
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
		name = "pdr_portals_find_map",
		response = "pdr_portals_find_map",
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
		name = "pdr_portals_find_survivors",
		response = "pdr_portals_find_survivors",
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
		name = "pdr_portals_follow_trail",
		response = "pdr_portals_follow_trail",
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
		name = "pdr_portals_get_out",
		response = "pdr_portals_get_out",
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
		name = "pdr_portals_get_to_temple",
		response = "pdr_portals_get_to_temple",
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
		name = "pdr_portals_help_search",
		response = "pdr_portals_help_search",
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
		name = "pdr_portals_intro_line_a",
		response = "pdr_portals_intro_line_a",
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
		name = "pdr_portals_intro_line_b",
		response = "pdr_portals_intro_line_b",
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
		name = "pdr_portals_intro_line_c",
		response = "pdr_portals_intro_line_c",
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
		name = "pdr_portals_kidnapped_traces",
		response = "pdr_portals_kidnapped_traces",
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
		name = "pdr_portals_map_first_clue",
		response = "pdr_portals_map_first_clue",
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
		name = "pdr_portals_map_second_clue",
		response = "pdr_portals_map_second_clue",
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
		name = "pdr_portals_memory_path",
		response = "pdr_portals_memory_path",
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
		name = "pdr_portals_memory_portals",
		response = "pdr_portals_memory_portals",
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
		name = "pdr_portals_objective_recap",
		response = "pdr_portals_objective_recap",
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
		name = "pdr_portals_pdr_castle_vista",
		response = "pdr_portals_pdr_castle_vista",
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
		name = "pdr_portals_portal_event",
		response = "pdr_portals_portal_event",
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
		name = "pdr_portals_portal_interact_one",
		response = "pdr_portals_portal_interact_one",
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
		name = "pdr_portals_portal_interact_three",
		response = "pdr_portals_portal_interact_three",
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
		name = "pdr_portals_portal_interact_two",
		response = "pdr_portals_portal_interact_two",
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
		name = "pdr_portals_raid_trace",
		response = "pdr_portals_raid_trace",
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
		name = "pdr_portals_secret_entrance_gate_opens",
		response = "pdr_portals_secret_entrance_gate_opens",
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
		name = "pdr_portals_stairs",
		response = "pdr_portals_stairs",
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
		name = "pdr_portals_temple_bell_tower",
		response = "pdr_portals_temple_bell_tower",
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
		name = "pdr_portals_temple_event",
		response = "pdr_portals_temple_event",
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
		name = "pdr_portals_temple_locked",
		response = "pdr_portals_temple_locked",
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
		name = "pdr_portals_the_map",
		response = "pdr_portals_the_map",
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
		name = "pdr_portals_the_temple",
		response = "pdr_portals_the_temple",
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
		name = "pdr_portals_trail_found",
		response = "pdr_portals_trail_found",
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
		name = "pdr_portals_village_raided",
		response = "pdr_portals_village_raided",
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
		name = "pdr_portals_waystone",
		response = "pdr_portals_waystone",
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
		pdr_portals_castle_gate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_pdr_castle_gate_01",
				"pdr_portals_pdr_castle_gate_02",
				"pdr_portals_pdr_castle_gate_03",
				"pdr_portals_pdr_castle_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_pdr_castle_gate_01",
				"pdr_portals_pdr_castle_gate_02",
				"pdr_portals_pdr_castle_gate_03",
				"pdr_portals_pdr_castle_gate_04"
			},
			sound_events_duration = {
				2.6089792251587,
				3.7529792785645,
				4.5069789886475,
				5.7189793586731
			}
		},
		pdr_portals_castle_road = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_pdr_castle_road_01",
				"pdr_portals_pdr_castle_road_02",
				"pdr_portals_pdr_castle_road_03",
				"pdr_portals_pdr_castle_road_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_pdr_castle_road_01",
				"pdr_portals_pdr_castle_road_02",
				"pdr_portals_pdr_castle_road_03",
				"pdr_portals_pdr_castle_road_04"
			},
			sound_events_duration = {
				2.4389791488648,
				3.4959790706634,
				1.7309792041779,
				1.9219791889191
			}
		},
		pdr_portals_crypt_event_blood = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_crypt_event_blood_01",
				"pdr_portals_crypt_event_blood_02",
				"pdr_portals_crypt_event_blood_03",
				"pdr_portals_crypt_event_blood_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_crypt_event_blood_01",
				"pdr_portals_crypt_event_blood_02",
				"pdr_portals_crypt_event_blood_03",
				"pdr_portals_crypt_event_blood_04"
			},
			sound_events_duration = {
				2.5169792175293,
				2.5969998836517,
				3.9729790687561,
				4.3139791488647
			}
		},
		pdr_portals_crypt_event_entering_crypt = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_crypt_event_entering_crypt_01",
				"pdr_portals_crypt_event_entering_crypt_02",
				"pdr_portals_crypt_event_entering_crypt_03",
				"pdr_portals_crypt_event_entering_crypt_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_crypt_event_entering_crypt_01",
				"pdr_portals_crypt_event_entering_crypt_02",
				"pdr_portals_crypt_event_entering_crypt_03",
				"pdr_portals_crypt_event_entering_crypt_04"
			},
			sound_events_duration = {
				3.8009791374206,
				2.8159792423248,
				3.658979177475,
				3.2819790840149
			}
		},
		pdr_portals_crypt_event_hole = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_crypt_event_hole_01",
				"pdr_portals_crypt_event_hole_02",
				"pdr_portals_crypt_event_hole_03",
				"pdr_portals_crypt_event_hole_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_crypt_event_hole_01",
				"pdr_portals_crypt_event_hole_02",
				"pdr_portals_crypt_event_hole_03",
				"pdr_portals_crypt_event_hole_04"
			},
			sound_events_duration = {
				1.9549791812897,
				2.5189790725708,
				2.6159999370575,
				3.5239791870117
			}
		},
		pdr_portals_crypt_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_crypt_exit_01",
				"pdr_portals_crypt_exit_02",
				"pdr_portals_crypt_exit_03",
				"pdr_portals_crypt_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_crypt_exit_01",
				"pdr_portals_crypt_exit_02",
				"pdr_portals_crypt_exit_03",
				"pdr_portals_crypt_exit_04"
			},
			sound_events_duration = {
				1.3849791288376,
				4.7009792327881,
				3.5009791851044,
				2.9569792747498
			}
		},
		pdr_portals_enter_village = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_enter_village_01",
				"pdr_portals_enter_village_02",
				"pdr_portals_enter_village_03",
				"pdr_portals_enter_village_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_enter_village_01",
				"pdr_portals_enter_village_02",
				"pdr_portals_enter_village_03",
				"pdr_portals_enter_village_04"
			},
			sound_events_duration = {
				2.5469791889191,
				2.4859790802002,
				2.9809792041779,
				3.1429791450501
			}
		},
		pdr_portals_event_missing_gargoyle_heads = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_event_missing_gargoyle_heads_01",
				"pdr_portals_event_missing_gargoyle_heads_02",
				"pdr_portals_event_missing_gargoyle_heads_03",
				"pdr_portals_event_missing_gargoyle_heads_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_event_missing_gargoyle_heads_01",
				"pdr_portals_event_missing_gargoyle_heads_02",
				"pdr_portals_event_missing_gargoyle_heads_03",
				"pdr_portals_event_missing_gargoyle_heads_04"
			},
			sound_events_duration = {
				3.1389791965485,
				3.8549792766571,
				4.5759792327881,
				2.129979133606
			}
		},
		pdr_portals_everyone_gone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_everyone_gone_01",
				"pdr_portals_everyone_gone_02",
				"pdr_portals_everyone_gone_03",
				"pdr_portals_everyone_gone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_everyone_gone_01",
				"pdr_portals_everyone_gone_02",
				"pdr_portals_everyone_gone_03",
				"pdr_portals_everyone_gone_04"
			},
			sound_events_duration = {
				4.5989789962769,
				2.0289790630341,
				3.2119791507721,
				4.0129790306091
			}
		},
		pdr_portals_find_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_find_map_01",
				"pdr_portals_find_map_02",
				"pdr_portals_find_map_03",
				"pdr_portals_find_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_find_map_01",
				"pdr_portals_find_map_02",
				"pdr_portals_find_map_03",
				"pdr_portals_find_map_04"
			},
			sound_events_duration = {
				1.8719791173935,
				1.8589792251587,
				1.5069791078568,
				2.131979227066
			}
		},
		pdr_portals_find_survivors = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_find_survivors_01",
				"pdr_portals_find_survivors_02",
				"pdr_portals_find_survivors_03",
				"pdr_portals_find_survivors_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_find_survivors_01",
				"pdr_portals_find_survivors_02",
				"pdr_portals_find_survivors_03",
				"pdr_portals_find_survivors_04"
			},
			sound_events_duration = {
				1.0869791507721,
				1.2929999828339,
				2.2999792098999,
				3.6999790668488
			}
		},
		pdr_portals_follow_trail = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_follow_trail_01",
				"pdr_portals_follow_trail_02",
				"pdr_portals_follow_trail_03",
				"pdr_portals_follow_trail_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_follow_trail_01",
				"pdr_portals_follow_trail_02",
				"pdr_portals_follow_trail_03",
				"pdr_portals_follow_trail_04"
			},
			sound_events_duration = {
				1.5209791660309,
				4.0589790344238,
				2.8759791851044,
				2.8269791603088
			}
		},
		pdr_portals_get_out = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_get_out_01",
				"pdr_portals_get_out_02",
				"pdr_portals_get_out_03",
				"pdr_portals_get_out_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_get_out_01",
				"pdr_portals_get_out_02",
				"pdr_portals_get_out_03",
				"pdr_portals_get_out_04"
			},
			sound_events_duration = {
				2.2919790744781,
				2.2679791450501,
				3.0209791660309,
				2.7229790687561
			}
		},
		pdr_portals_get_to_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_get_to_temple_01",
				"pdr_portals_get_to_temple_02",
				"pdr_portals_get_to_temple_03",
				"pdr_portals_get_to_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_get_to_temple_01",
				"pdr_portals_get_to_temple_02",
				"pdr_portals_get_to_temple_03",
				"pdr_portals_get_to_temple_04"
			},
			sound_events_duration = {
				4.165979385376,
				5.8539791107178,
				6.2899789810181,
				4.0799789428711
			}
		},
		pdr_portals_help_search = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_help_search_01",
				"pdr_portals_help_search_02",
				"pdr_portals_help_search_03",
				"pdr_portals_help_search_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_help_search_01",
				"pdr_portals_help_search_02",
				"pdr_portals_help_search_03",
				"pdr_portals_help_search_04"
			},
			sound_events_duration = {
				1.9799791574478,
				2.352979183197,
				4.165979385376,
				2.2699792385101
			}
		},
		pdr_portals_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				[1] = "pdr_portals_intro_line_a_01",
				[2] = "pdr_portals_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_portals_intro_line_a_01",
				[2] = "pdr_portals_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 4.2829790115356,
				[2] = 4.1349792480469
			}
		},
		pdr_portals_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				[1] = "pdr_portals_intro_line_b_01",
				[2] = "pdr_portals_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_portals_intro_line_b_01",
				[2] = "pdr_portals_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 3.0289790630341,
				[2] = 2.1169791221619
			}
		},
		pdr_portals_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				[1] = "pdr_portals_intro_line_c_01",
				[2] = "pdr_portals_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pdr_portals_intro_line_c_01",
				[2] = "pdr_portals_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 5.1419792175293,
				[2] = 6.4229793548584
			}
		},
		pdr_portals_kidnapped_traces = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_kidnapped_traces_01",
				"pdr_portals_kidnapped_traces_02",
				"pdr_portals_kidnapped_traces_03",
				"pdr_portals_kidnapped_traces_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_kidnapped_traces_01",
				"pdr_portals_kidnapped_traces_02",
				"pdr_portals_kidnapped_traces_03",
				"pdr_portals_kidnapped_traces_04"
			},
			sound_events_duration = {
				5.1499791145325,
				3.4849791526794,
				3.562979221344,
				5.9259791374206
			}
		},
		pdr_portals_map_first_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_map_first_clue_01",
				"pdr_portals_map_first_clue_02",
				"pdr_portals_map_first_clue_03",
				"pdr_portals_map_first_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_map_first_clue_01",
				"pdr_portals_map_first_clue_02",
				"pdr_portals_map_first_clue_03",
				"pdr_portals_map_first_clue_04"
			},
			sound_events_duration = {
				3.7589790821075,
				4.4659790992737,
				2.379979133606,
				2.9879791736603
			}
		},
		pdr_portals_map_second_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_map_second_clue_01",
				"pdr_portals_map_second_clue_02",
				"pdr_portals_map_second_clue_03",
				"pdr_portals_map_second_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_map_second_clue_01",
				"pdr_portals_map_second_clue_02",
				"pdr_portals_map_second_clue_03",
				"pdr_portals_map_second_clue_04"
			},
			sound_events_duration = {
				4.1399793624878,
				3.937979221344,
				7.1679792404175,
				4.4979791641235
			}
		},
		pdr_portals_memory_path = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_memory_path_01",
				"pdr_portals_memory_path_02",
				"pdr_portals_memory_path_03",
				"pdr_portals_memory_path_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_memory_path_01",
				"pdr_portals_memory_path_02",
				"pdr_portals_memory_path_03",
				"pdr_portals_memory_path_04"
			},
			sound_events_duration = {
				1.9519791603088,
				5.8849792480469,
				3.9589791297913,
				3.8609790802002
			}
		},
		pdr_portals_memory_portals = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_memory_portals_01",
				"pdr_portals_memory_portals_02",
				"pdr_portals_memory_portals_03",
				"pdr_portals_memory_portals_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_memory_portals_01",
				"pdr_portals_memory_portals_02",
				"pdr_portals_memory_portals_03",
				"pdr_portals_memory_portals_04"
			},
			sound_events_duration = {
				1.936979174614,
				4.2989792823792,
				3.7199790477753,
				3.7739791870117
			}
		},
		pdr_portals_objective_recap = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_objective_recap_01",
				"pdr_portals_objective_recap_02",
				"pdr_portals_objective_recap_03",
				"pdr_portals_objective_recap_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_objective_recap_01",
				"pdr_portals_objective_recap_02",
				"pdr_portals_objective_recap_03",
				"pdr_portals_objective_recap_04"
			},
			sound_events_duration = {
				3.1639790534973,
				3.7479791641235,
				7.2039790153503,
				5.3689789772034
			}
		},
		pdr_portals_pdr_castle_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_pdr_castle_vista_01",
				"pdr_portals_pdr_castle_vista_02",
				"pdr_portals_pdr_castle_vista_03",
				"pdr_portals_pdr_castle_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_pdr_castle_vista_01",
				"pdr_portals_pdr_castle_vista_02",
				"pdr_portals_pdr_castle_vista_03",
				"pdr_portals_pdr_castle_vista_04"
			},
			sound_events_duration = {
				3.8939790725708,
				8.1129789352417,
				4.5709791183472,
				6.8999791145325
			}
		},
		pdr_portals_portal_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_portal_event_01",
				"pdr_portals_portal_event_02",
				"pdr_portals_portal_event_03",
				"pdr_portals_portal_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_portal_event_01",
				"pdr_portals_portal_event_02",
				"pdr_portals_portal_event_03",
				"pdr_portals_portal_event_04"
			},
			sound_events_duration = {
				2.4659790992737,
				2.0350000858307,
				1.7469791173935,
				1.0099791288376
			}
		},
		pdr_portals_portal_interact_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_portal_interact_one_01",
				"pdr_portals_portal_interact_one_02",
				"pdr_portals_portal_interact_one_03",
				"pdr_portals_portal_interact_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_portal_interact_one_01",
				"pdr_portals_portal_interact_one_02",
				"pdr_portals_portal_interact_one_03",
				"pdr_portals_portal_interact_one_04"
			},
			sound_events_duration = {
				1.8879791498184,
				1.699979186058,
				1.9399791955948,
				2.0269792079926
			}
		},
		pdr_portals_portal_interact_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_portal_interact_three_01",
				"pdr_portals_portal_interact_three_02",
				"pdr_portals_portal_interact_three_03",
				"pdr_portals_portal_interact_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_portal_interact_three_01",
				"pdr_portals_portal_interact_three_02",
				"pdr_portals_portal_interact_three_03",
				"pdr_portals_portal_interact_three_04"
			},
			sound_events_duration = {
				2.1379792690277,
				3.4569792747498,
				3.5149791240692,
				4.5099792480469
			}
		},
		pdr_portals_portal_interact_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_portal_interact_two_01",
				"pdr_portals_portal_interact_two_02",
				"pdr_portals_portal_interact_two_03",
				"pdr_portals_portal_interact_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_portal_interact_two_01",
				"pdr_portals_portal_interact_two_02",
				"pdr_portals_portal_interact_two_03",
				"pdr_portals_portal_interact_two_04"
			},
			sound_events_duration = {
				2.3619792461395,
				2.7989792823791,
				3.227979183197,
				2.2879791259766
			}
		},
		pdr_portals_raid_trace = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_raid_trace_01",
				"pdr_portals_raid_trace_02",
				"pdr_portals_raid_trace_03",
				"pdr_portals_raid_trace_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_raid_trace_01",
				"pdr_portals_raid_trace_02",
				"pdr_portals_raid_trace_03",
				"pdr_portals_raid_trace_04"
			},
			sound_events_duration = {
				3.2919790744781,
				4.3679790496826,
				5.0479793548584,
				2.834979057312
			}
		},
		pdr_portals_secret_entrance_gate_opens = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_secret_entrance_gate_opens_01",
				"pdr_portals_secret_entrance_gate_opens_02",
				"pdr_portals_secret_entrance_gate_opens_03",
				"pdr_portals_secret_entrance_gate_opens_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_secret_entrance_gate_opens_01",
				"pdr_portals_secret_entrance_gate_opens_02",
				"pdr_portals_secret_entrance_gate_opens_03",
				"pdr_portals_secret_entrance_gate_opens_04"
			},
			sound_events_duration = {
				2.5499792098999,
				2.9700000286102,
				2.6079790592194,
				3.4359791278839
			}
		},
		pdr_portals_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_stairs_01",
				"pdr_portals_stairs_02",
				"pdr_portals_stairs_03",
				"pdr_portals_stairs_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_stairs_01",
				"pdr_portals_stairs_02",
				"pdr_portals_stairs_03",
				"pdr_portals_stairs_04"
			},
			sound_events_duration = {
				2.6759791374206,
				3.2159790992737,
				2.0669791698456,
				2.1889791488648
			}
		},
		pdr_portals_temple_bell_tower = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_temple_bell_tower_01",
				"pdr_portals_temple_bell_tower_02",
				"pdr_portals_temple_bell_tower_03",
				"pdr_portals_temple_bell_tower_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_temple_bell_tower_01",
				"pdr_portals_temple_bell_tower_02",
				"pdr_portals_temple_bell_tower_03",
				"pdr_portals_temple_bell_tower_04"
			},
			sound_events_duration = {
				2.3729791641235,
				2.2149791717529,
				2.2979791164398,
				2.504979133606
			}
		},
		pdr_portals_temple_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_temple_event_01",
				"pdr_portals_temple_event_02",
				"pdr_portals_temple_event_03",
				"pdr_portals_temple_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_temple_event_01",
				"pdr_portals_temple_event_02",
				"pdr_portals_temple_event_03",
				"pdr_portals_temple_event_04"
			},
			sound_events_duration = {
				3.4649791717529,
				4.3849792480469,
				3.4259791374206,
				3.9999792575836
			}
		},
		pdr_portals_temple_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_temple_locked_01",
				"pdr_portals_temple_locked_02",
				"pdr_portals_temple_locked_03",
				"pdr_portals_temple_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_temple_locked_01",
				"pdr_portals_temple_locked_02",
				"pdr_portals_temple_locked_03",
				"pdr_portals_temple_locked_04"
			},
			sound_events_duration = {
				1.379979133606,
				3.2599792480469,
				4.5149793624878,
				2.5199792385101
			}
		},
		pdr_portals_the_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_the_map_01",
				"pdr_portals_the_map_02",
				"pdr_portals_the_map_03",
				"pdr_portals_the_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_the_map_01",
				"pdr_portals_the_map_02",
				"pdr_portals_the_map_03",
				"pdr_portals_the_map_04"
			},
			sound_events_duration = {
				1.7599999904633,
				3.0929791927338,
				3.5679790973663,
				5.0579791069031
			}
		},
		pdr_portals_the_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_the_temple_01",
				"pdr_portals_the_temple_02",
				"pdr_portals_the_temple_03",
				"pdr_portals_the_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_the_temple_01",
				"pdr_portals_the_temple_02",
				"pdr_portals_the_temple_03",
				"pdr_portals_the_temple_04"
			},
			sound_events_duration = {
				1.9979791641235,
				1.2689791917801,
				2.1069791316986,
				1.6969791650772
			}
		},
		pdr_portals_trail_found = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_trail_found_01",
				"pdr_portals_trail_found_02",
				"pdr_portals_trail_found_03",
				"pdr_portals_trail_found_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_trail_found_01",
				"pdr_portals_trail_found_02",
				"pdr_portals_trail_found_03",
				"pdr_portals_trail_found_04"
			},
			sound_events_duration = {
				2.1999790668488,
				2.2049791812897,
				5.1889791488647,
				3.9319791793823
			}
		},
		pdr_portals_village_raided = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_village_raided_01",
				"pdr_portals_village_raided_02",
				"pdr_portals_village_raided_03",
				"pdr_portals_village_raided_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_village_raided_01",
				"pdr_portals_village_raided_02",
				"pdr_portals_village_raided_03",
				"pdr_portals_village_raided_04"
			},
			sound_events_duration = {
				3.158979177475,
				2.720999956131,
				2.89097905159,
				4.4969792366028
			}
		},
		pdr_portals_waystone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "dwarf_ranger_dlc_drachenfels_portals",
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
				"pdr_portals_waystone_01",
				"pdr_portals_waystone_02",
				"pdr_portals_waystone_03",
				"pdr_portals_waystone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pdr_portals_waystone_01",
				"pdr_portals_waystone_02",
				"pdr_portals_waystone_03",
				"pdr_portals_waystone_04"
			},
			sound_events_duration = {
				2.1939792633057,
				3.5259792804718,
				4.2329792976379,
				5.955979347229
			}
		}
	})
end