return function ()
	define_rule({
		name = "pes_portals_castle_gate",
		response = "pes_portals_castle_gate",
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
		name = "pes_portals_castle_road",
		response = "pes_portals_castle_road",
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
		name = "pes_portals_crypt_event_blood",
		response = "pes_portals_crypt_event_blood",
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
		name = "pes_portals_crypt_event_entering_crypt",
		response = "pes_portals_crypt_event_entering_crypt",
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
		name = "pes_portals_crypt_event_hole",
		response = "pes_portals_crypt_event_hole",
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
		name = "pes_portals_crypt_exit",
		response = "pes_portals_crypt_exit",
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
		name = "pes_portals_enter_village",
		response = "pes_portals_enter_village",
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
		name = "pes_portals_event_missing_gargoyle_heads",
		response = "pes_portals_event_missing_gargoyle_heads",
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
		name = "pes_portals_everyone_gone",
		response = "pes_portals_everyone_gone",
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
		name = "pes_portals_find_map",
		response = "pes_portals_find_map",
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
		name = "pes_portals_find_survivors",
		response = "pes_portals_find_survivors",
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
		name = "pes_portals_follow_trail",
		response = "pes_portals_follow_trail",
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
		name = "pes_portals_get_out",
		response = "pes_portals_get_out",
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
		name = "pes_portals_get_to_temple",
		response = "pes_portals_get_to_temple",
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
		name = "pes_portals_help_search",
		response = "pes_portals_help_search",
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
		name = "pes_portals_intro_line_a",
		response = "pes_portals_intro_line_a",
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
		name = "pes_portals_intro_line_b",
		response = "pes_portals_intro_line_b",
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
		name = "pes_portals_intro_line_c",
		response = "pes_portals_intro_line_c",
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
		name = "pes_portals_kidnapped_traces",
		response = "pes_portals_kidnapped_traces",
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
		name = "pes_portals_map_first_clue",
		response = "pes_portals_map_first_clue",
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
		name = "pes_portals_map_second_clue",
		response = "pes_portals_map_second_clue",
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
		name = "pes_portals_memory_path",
		response = "pes_portals_memory_path",
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
		name = "pes_portals_memory_portals",
		response = "pes_portals_memory_portals",
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
		name = "pes_portals_objective_recap",
		response = "pes_portals_objective_recap",
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
		name = "pes_portals_pes_castle_vista",
		response = "pes_portals_pes_castle_vista",
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
		name = "pes_portals_portal_event",
		response = "pes_portals_portal_event",
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
		name = "pes_portals_portal_interact_one",
		response = "pes_portals_portal_interact_one",
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
		name = "pes_portals_portal_interact_three",
		response = "pes_portals_portal_interact_three",
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
		name = "pes_portals_portal_interact_two",
		response = "pes_portals_portal_interact_two",
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
		name = "pes_portals_raid_trace",
		response = "pes_portals_raid_trace",
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
		name = "pes_portals_secret_entrance_gate_opens",
		response = "pes_portals_secret_entrance_gate_opens",
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
		name = "pes_portals_stairs",
		response = "pes_portals_stairs",
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
		name = "pes_portals_temple_bell_tower",
		response = "pes_portals_temple_bell_tower",
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
		name = "pes_portals_temple_event",
		response = "pes_portals_temple_event",
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
		name = "pes_portals_temple_locked",
		response = "pes_portals_temple_locked",
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
		name = "pes_portals_the_map",
		response = "pes_portals_the_map",
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
		name = "pes_portals_the_temple",
		response = "pes_portals_the_temple",
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
		name = "pes_portals_trail_found",
		response = "pes_portals_trail_found",
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
		name = "pes_portals_village_raided",
		response = "pes_portals_village_raided",
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
		name = "pes_portals_waystone",
		response = "pes_portals_waystone",
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
		pes_portals_castle_gate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_pes_castle_gate_01",
				"pes_portals_pes_castle_gate_02",
				"pes_portals_pes_castle_gate_03",
				"pes_portals_pes_castle_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_pes_castle_gate_01",
				"pes_portals_pes_castle_gate_02",
				"pes_portals_pes_castle_gate_03",
				"pes_portals_pes_castle_gate_04"
			},
			sound_events_duration = {
				3.6129791736603,
				2.9419791698456,
				2.7599792480469,
				2.1519792079926
			}
		},
		pes_portals_castle_road = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_pes_castle_road_01",
				"pes_portals_pes_castle_road_02",
				"pes_portals_pes_castle_road_03",
				"pes_portals_pes_castle_road_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_pes_castle_road_01",
				"pes_portals_pes_castle_road_02",
				"pes_portals_pes_castle_road_03",
				"pes_portals_pes_castle_road_04"
			},
			sound_events_duration = {
				2.3879792690277,
				2.7679998874664,
				1.7299791574478,
				3.7449791431427
			}
		},
		pes_portals_crypt_event_blood = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_crypt_event_blood_01",
				"pes_portals_crypt_event_blood_02",
				"pes_portals_crypt_event_blood_03",
				"pes_portals_crypt_event_blood_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_crypt_event_blood_01",
				"pes_portals_crypt_event_blood_02",
				"pes_portals_crypt_event_blood_03",
				"pes_portals_crypt_event_blood_04"
			},
			sound_events_duration = {
				2.3929791450501,
				2.8149790763855,
				1.8679791688919,
				4.0609793663025
			}
		},
		pes_portals_crypt_event_entering_crypt = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_crypt_event_entering_crypt_01",
				"pes_portals_crypt_event_entering_crypt_02",
				"pes_portals_crypt_event_entering_crypt_03",
				"pes_portals_crypt_event_entering_crypt_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_crypt_event_entering_crypt_01",
				"pes_portals_crypt_event_entering_crypt_02",
				"pes_portals_crypt_event_entering_crypt_03",
				"pes_portals_crypt_event_entering_crypt_04"
			},
			sound_events_duration = {
				2.5029792785645,
				2.1349792480469,
				2.2379791736603,
				3.1649792194366
			}
		},
		pes_portals_crypt_event_hole = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_crypt_event_hole_01",
				"pes_portals_crypt_event_hole_02",
				"pes_portals_crypt_event_hole_03",
				"pes_portals_crypt_event_hole_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_crypt_event_hole_01",
				"pes_portals_crypt_event_hole_02",
				"pes_portals_crypt_event_hole_03",
				"pes_portals_crypt_event_hole_04"
			},
			sound_events_duration = {
				1.5859999656677,
				1.2459791898727,
				1.227979183197,
				2.0269792079926
			}
		},
		pes_portals_crypt_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_crypt_exit_01",
				"pes_portals_crypt_exit_02",
				"pes_portals_crypt_exit_03",
				"pes_portals_crypt_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_crypt_exit_01",
				"pes_portals_crypt_exit_02",
				"pes_portals_crypt_exit_03",
				"pes_portals_crypt_exit_04"
			},
			sound_events_duration = {
				4.5369791984558,
				2.3389999866486,
				4.709979057312,
				3.9460000991821
			}
		},
		pes_portals_enter_village = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_enter_village_01",
				"pes_portals_enter_village_02",
				"pes_portals_enter_village_03",
				"pes_portals_enter_village_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_enter_village_01",
				"pes_portals_enter_village_02",
				"pes_portals_enter_village_03",
				"pes_portals_enter_village_04"
			},
			sound_events_duration = {
				1.812979221344,
				2.8769791126251,
				5.0989789962769,
				2.5939791202545
			}
		},
		pes_portals_event_missing_gargoyle_heads = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_event_missing_gargoyle_heads_01",
				"pes_portals_event_missing_gargoyle_heads_02",
				"pes_portals_event_missing_gargoyle_heads_03",
				"pes_portals_event_missing_gargoyle_heads_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_event_missing_gargoyle_heads_01",
				"pes_portals_event_missing_gargoyle_heads_02",
				"pes_portals_event_missing_gargoyle_heads_03",
				"pes_portals_event_missing_gargoyle_heads_04"
			},
			sound_events_duration = {
				2.658979177475,
				1.8549791574478,
				6.7749791145325,
				2.3809790611267
			}
		},
		pes_portals_everyone_gone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_everyone_gone_01",
				"pes_portals_everyone_gone_02",
				"pes_portals_everyone_gone_03",
				"pes_portals_everyone_gone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_everyone_gone_01",
				"pes_portals_everyone_gone_02",
				"pes_portals_everyone_gone_03",
				"pes_portals_everyone_gone_04"
			},
			sound_events_duration = {
				4.3849792480469,
				3.3019790649414,
				4.0299792289734,
				1.89297914505
			}
		},
		pes_portals_find_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_find_map_01",
				"pes_portals_find_map_02",
				"pes_portals_find_map_03",
				"pes_portals_find_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_find_map_01",
				"pes_portals_find_map_02",
				"pes_portals_find_map_03",
				"pes_portals_find_map_04"
			},
			sound_events_duration = {
				1.824979186058,
				1.602979183197,
				2.1419792175293,
				2.3179790973663
			}
		},
		pes_portals_find_survivors = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_find_survivors_01",
				"pes_portals_find_survivors_02",
				"pes_portals_find_survivors_03",
				"pes_portals_find_survivors_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_find_survivors_01",
				"pes_portals_find_survivors_02",
				"pes_portals_find_survivors_03",
				"pes_portals_find_survivors_04"
			},
			sound_events_duration = {
				1.1019999980927,
				1.1790000200272,
				2.368979215622,
				1.1160000562668
			}
		},
		pes_portals_follow_trail = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_follow_trail_01",
				"pes_portals_follow_trail_02",
				"pes_portals_follow_trail_03",
				"pes_portals_follow_trail_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_follow_trail_01",
				"pes_portals_follow_trail_02",
				"pes_portals_follow_trail_03",
				"pes_portals_follow_trail_04"
			},
			sound_events_duration = {
				1.3609791994095,
				1.4359791278839,
				1.8639792203903,
				3.4299790859222
			}
		},
		pes_portals_get_out = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_get_out_01",
				"pes_portals_get_out_02",
				"pes_portals_get_out_03",
				"pes_portals_get_out_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_get_out_01",
				"pes_portals_get_out_02",
				"pes_portals_get_out_03",
				"pes_portals_get_out_04"
			},
			sound_events_duration = {
				2.3209791183472,
				1.8889791965485,
				1.5859999656677,
				3.3999791145325
			}
		},
		pes_portals_get_to_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_get_to_temple_01",
				"pes_portals_get_to_temple_02",
				"pes_portals_get_to_temple_03",
				"pes_portals_get_to_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_get_to_temple_01",
				"pes_portals_get_to_temple_02",
				"pes_portals_get_to_temple_03",
				"pes_portals_get_to_temple_04"
			},
			sound_events_duration = {
				3.5819792747498,
				3.2539792060852,
				4.2049789428711,
				2.709979057312
			}
		},
		pes_portals_help_search = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_help_search_01",
				"pes_portals_help_search_02",
				"pes_portals_help_search_03",
				"pes_portals_help_search_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_help_search_01",
				"pes_portals_help_search_02",
				"pes_portals_help_search_03",
				"pes_portals_help_search_04"
			},
			sound_events_duration = {
				1.8269791603088,
				1.5689791440964,
				3.0619790554047,
				4.2179789543152
			}
		},
		pes_portals_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				[1] = "pes_portals_intro_line_a_01",
				[2] = "pes_portals_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_portals_intro_line_a_01",
				[2] = "pes_portals_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 2.3199791908264,
				[2] = 3.8549792766571
			}
		},
		pes_portals_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				[1] = "pes_portals_intro_line_b_01",
				[2] = "pes_portals_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_portals_intro_line_b_01",
				[2] = "pes_portals_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 2.7999792098999,
				[2] = 1.7989791631699
			}
		},
		pes_portals_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				[1] = "pes_portals_intro_line_c_01",
				[2] = "pes_portals_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pes_portals_intro_line_c_01",
				[2] = "pes_portals_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 4.9579792022705,
				[2] = 4.9969792366028
			}
		},
		pes_portals_kidnapped_traces = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_kidnapped_traces_01",
				"pes_portals_kidnapped_traces_02",
				"pes_portals_kidnapped_traces_03",
				"pes_portals_kidnapped_traces_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_kidnapped_traces_01",
				"pes_portals_kidnapped_traces_02",
				"pes_portals_kidnapped_traces_03",
				"pes_portals_kidnapped_traces_04"
			},
			sound_events_duration = {
				3.6059792041779,
				3.1069791316986,
				5.2529792785644,
				6.022979259491
			}
		},
		pes_portals_map_first_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_map_first_clue_01",
				"pes_portals_map_first_clue_02",
				"pes_portals_map_first_clue_03",
				"pes_portals_map_first_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_map_first_clue_01",
				"pes_portals_map_first_clue_02",
				"pes_portals_map_first_clue_03",
				"pes_portals_map_first_clue_04"
			},
			sound_events_duration = {
				2.3159792423248,
				2.7539792060852,
				2.7599792480469,
				4.1269793510437
			}
		},
		pes_portals_map_second_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_map_second_clue_01",
				"pes_portals_map_second_clue_02",
				"pes_portals_map_second_clue_03",
				"pes_portals_map_second_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_map_second_clue_01",
				"pes_portals_map_second_clue_02",
				"pes_portals_map_second_clue_03",
				"pes_portals_map_second_clue_04"
			},
			sound_events_duration = {
				4.1349792480469,
				3.9459791183472,
				2.7649791240692,
				4.6009793281555
			}
		},
		pes_portals_memory_path = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_memory_path_01",
				"pes_portals_memory_path_02",
				"pes_portals_memory_path_03",
				"pes_portals_memory_path_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_memory_path_01",
				"pes_portals_memory_path_02",
				"pes_portals_memory_path_03",
				"pes_portals_memory_path_04"
			},
			sound_events_duration = {
				2.3339791297913,
				2.0349791049957,
				3.3869791030884,
				1.3860000371933
			}
		},
		pes_portals_memory_portals = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_memory_portals_01",
				"pes_portals_memory_portals_02",
				"pes_portals_memory_portals_03",
				"pes_portals_memory_portals_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_memory_portals_01",
				"pes_portals_memory_portals_02",
				"pes_portals_memory_portals_03",
				"pes_portals_memory_portals_04"
			},
			sound_events_duration = {
				2.4109792709351,
				1.851979136467,
				4.0029792785644,
				3.1999790668488
			}
		},
		pes_portals_objective_recap = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_objective_recap_01",
				"pes_portals_objective_recap_02",
				"pes_portals_objective_recap_03",
				"pes_portals_objective_recap_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_objective_recap_01",
				"pes_portals_objective_recap_02",
				"pes_portals_objective_recap_03",
				"pes_portals_objective_recap_04"
			},
			sound_events_duration = {
				3.2059791088104,
				3.6049792766571,
				3.4819791316986,
				4.3539791107178
			}
		},
		pes_portals_pes_castle_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_pes_castle_vista_01",
				"pes_portals_pes_castle_vista_02",
				"pes_portals_pes_castle_vista_03",
				"pes_portals_pes_castle_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_pes_castle_vista_01",
				"pes_portals_pes_castle_vista_02",
				"pes_portals_pes_castle_vista_03",
				"pes_portals_pes_castle_vista_04"
			},
			sound_events_duration = {
				4.6529793739319,
				3.8439791202545,
				4.3019790649414,
				5.2269792556763
			}
		},
		pes_portals_portal_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_portal_event_01",
				"pes_portals_portal_event_02",
				"pes_portals_portal_event_03",
				"pes_portals_portal_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_portal_event_01",
				"pes_portals_portal_event_02",
				"pes_portals_portal_event_03",
				"pes_portals_portal_event_04"
			},
			sound_events_duration = {
				1.3679791688919,
				2.7429790496826,
				1.8569791316986,
				2.3889791965485
			}
		},
		pes_portals_portal_interact_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_portal_interact_one_01",
				"pes_portals_portal_interact_one_02",
				"pes_portals_portal_interact_one_03",
				"pes_portals_portal_interact_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_portal_interact_one_01",
				"pes_portals_portal_interact_one_02",
				"pes_portals_portal_interact_one_03",
				"pes_portals_portal_interact_one_04"
			},
			sound_events_duration = {
				1.8349791765213,
				1.7479791641235,
				0.94697916507721,
				1.2809791564941
			}
		},
		pes_portals_portal_interact_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_portal_interact_three_01",
				"pes_portals_portal_interact_three_02",
				"pes_portals_portal_interact_three_03",
				"pes_portals_portal_interact_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_portal_interact_three_01",
				"pes_portals_portal_interact_three_02",
				"pes_portals_portal_interact_three_03",
				"pes_portals_portal_interact_three_04"
			},
			sound_events_duration = {
				2.0219790935516,
				3.3069791793823,
				2.8089792728424,
				2.8179790973663
			}
		},
		pes_portals_portal_interact_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_portal_interact_two_01",
				"pes_portals_portal_interact_two_02",
				"pes_portals_portal_interact_two_03",
				"pes_portals_portal_interact_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_portal_interact_two_01",
				"pes_portals_portal_interact_two_02",
				"pes_portals_portal_interact_two_03",
				"pes_portals_portal_interact_two_04"
			},
			sound_events_duration = {
				1.6759791374207,
				2.0269792079926,
				2.6109790802002,
				1.8359792232513
			}
		},
		pes_portals_raid_trace = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_raid_trace_01",
				"pes_portals_raid_trace_02",
				"pes_portals_raid_trace_03",
				"pes_portals_raid_trace_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_raid_trace_01",
				"pes_portals_raid_trace_02",
				"pes_portals_raid_trace_03",
				"pes_portals_raid_trace_04"
			},
			sound_events_duration = {
				2.022979259491,
				3.062979221344,
				3.522979259491,
				5.0479793548584
			}
		},
		pes_portals_secret_entrance_gate_opens = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_secret_entrance_gate_opens_01",
				"pes_portals_secret_entrance_gate_opens_02",
				"pes_portals_secret_entrance_gate_opens_03",
				"pes_portals_secret_entrance_gate_opens_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_secret_entrance_gate_opens_01",
				"pes_portals_secret_entrance_gate_opens_02",
				"pes_portals_secret_entrance_gate_opens_03",
				"pes_portals_secret_entrance_gate_opens_04"
			},
			sound_events_duration = {
				1.5829792022705,
				2.7939791679382,
				4.7789793014526,
				3.3179790973663
			}
		},
		pes_portals_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_stairs_01",
				"pes_portals_stairs_02",
				"pes_portals_stairs_03",
				"pes_portals_stairs_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_stairs_01",
				"pes_portals_stairs_02",
				"pes_portals_stairs_03",
				"pes_portals_stairs_04"
			},
			sound_events_duration = {
				5.0139789581299,
				4.5189790725708,
				5.2019791603088,
				1.9459791183472
			}
		},
		pes_portals_temple_bell_tower = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_temple_bell_tower_01",
				"pes_portals_temple_bell_tower_02",
				"pes_portals_temple_bell_tower_03",
				"pes_portals_temple_bell_tower_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_temple_bell_tower_01",
				"pes_portals_temple_bell_tower_02",
				"pes_portals_temple_bell_tower_03",
				"pes_portals_temple_bell_tower_04"
			},
			sound_events_duration = {
				1.1929792165756,
				1.5759791135788,
				1.812979221344,
				1.7609791755676
			}
		},
		pes_portals_temple_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_temple_event_01",
				"pes_portals_temple_event_02",
				"pes_portals_temple_event_03",
				"pes_portals_temple_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_temple_event_01",
				"pes_portals_temple_event_02",
				"pes_portals_temple_event_03",
				"pes_portals_temple_event_04"
			},
			sound_events_duration = {
				1.2539792060852,
				1.5109791755676,
				1.283979177475,
				2.0669791698456
			}
		},
		pes_portals_temple_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_temple_locked_01",
				"pes_portals_temple_locked_02",
				"pes_portals_temple_locked_03",
				"pes_portals_temple_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_temple_locked_01",
				"pes_portals_temple_locked_02",
				"pes_portals_temple_locked_03",
				"pes_portals_temple_locked_04"
			},
			sound_events_duration = {
				3.841979265213,
				2.1349792480469,
				1.5649791955948,
				3.2519791126251
			}
		},
		pes_portals_the_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_the_map_01",
				"pes_portals_the_map_02",
				"pes_portals_the_map_03",
				"pes_portals_the_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_the_map_01",
				"pes_portals_the_map_02",
				"pes_portals_the_map_03",
				"pes_portals_the_map_04"
			},
			sound_events_duration = {
				1.0470000505447,
				2.3479790687561,
				4.249979019165,
				2.8839790821075
			}
		},
		pes_portals_the_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_the_temple_01",
				"pes_portals_the_temple_02",
				"pes_portals_the_temple_03",
				"pes_portals_the_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_the_temple_01",
				"pes_portals_the_temple_02",
				"pes_portals_the_temple_03",
				"pes_portals_the_temple_04"
			},
			sound_events_duration = {
				1.2399791479111,
				1.2499791383743,
				1.0419791936874,
				1.8459792137146
			}
		},
		pes_portals_trail_found = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_trail_found_01",
				"pes_portals_trail_found_02",
				"pes_portals_trail_found_03",
				"pes_portals_trail_found_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_trail_found_01",
				"pes_portals_trail_found_02",
				"pes_portals_trail_found_03",
				"pes_portals_trail_found_04"
			},
			sound_events_duration = {
				1.7079792022705,
				5.9149789810181,
				3.1059792041779,
				2.4139790534973
			}
		},
		pes_portals_village_raided = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_village_raided_01",
				"pes_portals_village_raided_02",
				"pes_portals_village_raided_03",
				"pes_portals_village_raided_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_village_raided_01",
				"pes_portals_village_raided_02",
				"pes_portals_village_raided_03",
				"pes_portals_village_raided_04"
			},
			sound_events_duration = {
				2.4009792804718,
				2.6689791679382,
				2.1909792423248,
				5.0009789466858
			}
		},
		pes_portals_waystone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "empire_soldier_dlc_drachenfels_portals",
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
				"pes_portals_waystone_01",
				"pes_portals_waystone_02",
				"pes_portals_waystone_03",
				"pes_portals_waystone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pes_portals_waystone_01",
				"pes_portals_waystone_02",
				"pes_portals_waystone_03",
				"pes_portals_waystone_04"
			},
			sound_events_duration = {
				2.7349791526794,
				3.4909791946411,
				3.6679792404175,
				4.2639789581299
			}
		}
	})
end