return function ()
	define_rule({
		name = "pwe_portals_castle_gate",
		response = "pwe_portals_castle_gate",
		criterias = {
			{
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
		name = "pwe_portals_castle_road",
		response = "pwe_portals_castle_road",
		criterias = {
			{
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
		name = "pwe_portals_crypt_event_blood",
		response = "pwe_portals_crypt_event_blood",
		criterias = {
			{
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
		name = "pwe_portals_crypt_event_entering_crypt",
		response = "pwe_portals_crypt_event_entering_crypt",
		criterias = {
			{
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
		name = "pwe_portals_crypt_event_hole",
		response = "pwe_portals_crypt_event_hole",
		criterias = {
			{
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
		name = "pwe_portals_crypt_exit",
		response = "pwe_portals_crypt_exit",
		criterias = {
			{
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
		name = "pwe_portals_enter_village",
		response = "pwe_portals_enter_village",
		criterias = {
			{
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
		name = "pwe_portals_event_missing_gargoyle_heads",
		response = "pwe_portals_event_missing_gargoyle_heads",
		criterias = {
			{
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
		name = "pwe_portals_everyone_gone",
		response = "pwe_portals_everyone_gone",
		criterias = {
			{
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
		name = "pwe_portals_find_map",
		response = "pwe_portals_find_map",
		criterias = {
			{
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
		name = "pwe_portals_find_survivors",
		response = "pwe_portals_find_survivors",
		criterias = {
			{
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
		name = "pwe_portals_follow_trail",
		response = "pwe_portals_follow_trail",
		criterias = {
			{
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
		name = "pwe_portals_get_to_temple",
		response = "pwe_portals_get_to_temple",
		criterias = {
			{
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
		name = "pwe_portals_help_search",
		response = "pwe_portals_help_search",
		criterias = {
			{
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
		name = "pwe_portals_intro_line_a",
		response = "pwe_portals_intro_line_a",
		criterias = {
			{
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
		name = "pwe_portals_intro_line_b",
		response = "pwe_portals_intro_line_b",
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
		name = "pwe_portals_intro_line_c",
		response = "pwe_portals_intro_line_c",
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
		name = "pwe_portals_kidnapped_traces",
		response = "pwe_portals_kidnapped_traces",
		criterias = {
			{
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
		name = "pwe_portals_map_first_clue",
		response = "pwe_portals_map_first_clue",
		criterias = {
			{
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
		name = "pwe_portals_map_second_clue",
		response = "pwe_portals_map_second_clue",
		criterias = {
			{
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
		name = "pwe_portals_memory_portals",
		response = "pwe_portals_memory_portals",
		criterias = {
			{
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
		name = "pwe_portals_objective_recap",
		response = "pwe_portals_objective_recap",
		criterias = {
			{
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
		name = "pwe_portals_portal_event",
		response = "pwe_portals_portal_event",
		criterias = {
			{
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
		name = "pwe_portals_portal_interact_one",
		response = "pwe_portals_portal_interact_one",
		criterias = {
			{
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
		name = "pwe_portals_portal_interact_three",
		response = "pwe_portals_portal_interact_three",
		criterias = {
			{
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
		name = "pwe_portals_portal_interact_two",
		response = "pwe_portals_portal_interact_two",
		criterias = {
			{
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
		name = "pwe_portals_pwe_castle_vista",
		response = "pwe_portals_pwe_castle_vista",
		criterias = {
			{
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
		name = "pwe_portals_raid_trace",
		response = "pwe_portals_raid_trace",
		criterias = {
			{
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
		name = "pwe_portals_secret_entrance_gate_opens",
		response = "pwe_portals_secret_entrance_gate_opens",
		criterias = {
			{
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
		name = "pwe_portals_stairs",
		response = "pwe_portals_stairs",
		criterias = {
			{
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
		name = "pwe_portals_temple_bell_tower",
		response = "pwe_portals_temple_bell_tower",
		criterias = {
			{
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
		name = "pwe_portals_temple_event",
		response = "pwe_portals_temple_event",
		criterias = {
			{
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
		name = "pwe_portals_temple_locked",
		response = "pwe_portals_temple_locked",
		criterias = {
			{
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
		name = "pwe_portals_the_map",
		response = "pwe_portals_the_map",
		criterias = {
			{
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
		name = "pwe_portals_waystone",
		response = "pwe_portals_waystone",
		criterias = {
			{
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
		pwe_portals_castle_gate = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_pwe_castle_gate_01",
				"pwe_portals_pwe_castle_gate_02",
				"pwe_portals_pwe_castle_gate_03",
				"pwe_portals_pwe_castle_gate_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_pwe_castle_gate_01",
				"pwe_portals_pwe_castle_gate_02",
				"pwe_portals_pwe_castle_gate_03",
				"pwe_portals_pwe_castle_gate_04"
			},
			sound_events_duration = {
				2.7789790630341,
				2.129979133606,
				3.5689792633057,
				5.0789790153503
			}
		},
		pwe_portals_castle_road = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_pwe_castle_road_01",
				"pwe_portals_pwe_castle_road_02",
				"pwe_portals_pwe_castle_road_03",
				"pwe_portals_pwe_castle_road_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_pwe_castle_road_01",
				"pwe_portals_pwe_castle_road_02",
				"pwe_portals_pwe_castle_road_03",
				"pwe_portals_pwe_castle_road_04"
			},
			sound_events_duration = {
				2.006979227066,
				5.6489791870117,
				5.7319793701172,
				3.6539790630341
			}
		},
		pwe_portals_crypt_event_blood = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_crypt_event_blood_01",
				"pwe_portals_crypt_event_blood_02",
				"pwe_portals_crypt_event_blood_03",
				"pwe_portals_crypt_event_blood_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_crypt_event_blood_01",
				"pwe_portals_crypt_event_blood_02",
				"pwe_portals_crypt_event_blood_03",
				"pwe_portals_crypt_event_blood_04"
			},
			sound_events_duration = {
				1.4980000257492,
				3.1209790706634,
				2.8749792575836,
				2.4579999446869
			}
		},
		pwe_portals_crypt_event_entering_crypt = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_crypt_event_entering_crypt_01",
				"pwe_portals_crypt_event_entering_crypt_02",
				"pwe_portals_crypt_event_entering_crypt_03",
				"pwe_portals_crypt_event_entering_crypt_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_crypt_event_entering_crypt_01",
				"pwe_portals_crypt_event_entering_crypt_02",
				"pwe_portals_crypt_event_entering_crypt_03",
				"pwe_portals_crypt_event_entering_crypt_04"
			},
			sound_events_duration = {
				2.3849792480469,
				2.5749790668488,
				4.7469792366028,
				2.8841667175293
			}
		},
		pwe_portals_crypt_event_hole = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_crypt_event_hole_01",
				"pwe_portals_crypt_event_hole_02",
				"pwe_portals_crypt_event_hole_03",
				"pwe_portals_crypt_event_hole_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_crypt_event_hole_01",
				"pwe_portals_crypt_event_hole_02",
				"pwe_portals_crypt_event_hole_03",
				"pwe_portals_crypt_event_hole_04"
			},
			sound_events_duration = {
				2.3659791946411,
				1.9140000343323,
				1.1970000267029,
				1.8159791231155
			}
		},
		pwe_portals_crypt_exit = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_crypt_exit_01",
				"pwe_portals_crypt_exit_02",
				"pwe_portals_crypt_exit_03",
				"pwe_portals_crypt_exit_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_crypt_exit_01",
				"pwe_portals_crypt_exit_02",
				"pwe_portals_crypt_exit_03",
				"pwe_portals_crypt_exit_04"
			},
			sound_events_duration = {
				2.2629792690277,
				1.9359791278839,
				3.1799790859222,
				4.4769792556763
			}
		},
		pwe_portals_enter_village = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_enter_village_01",
				"pwe_portals_enter_village_02",
				"pwe_portals_enter_village_03",
				"pwe_portals_enter_village_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_enter_village_01",
				"pwe_portals_enter_village_02",
				"pwe_portals_enter_village_03",
				"pwe_portals_enter_village_04"
			},
			sound_events_duration = {
				3.1809792518616,
				2.6539790630341,
				3.3399791717529,
				4.2259793281555
			}
		},
		pwe_portals_event_missing_gargoyle_heads = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_event_missing_gargoyle_heads_01",
				"pwe_portals_event_missing_gargoyle_heads_02",
				"pwe_portals_event_missing_gargoyle_heads_03",
				"pwe_portals_event_missing_gargoyle_heads_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_event_missing_gargoyle_heads_01",
				"pwe_portals_event_missing_gargoyle_heads_02",
				"pwe_portals_event_missing_gargoyle_heads_03",
				"pwe_portals_event_missing_gargoyle_heads_04"
			},
			sound_events_duration = {
				4.8179793357849,
				3.2070000171661,
				2.5949790477753,
				2.1369791030884
			}
		},
		pwe_portals_everyone_gone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_everyone_gone_01",
				"pwe_portals_everyone_gone_02",
				"pwe_portals_everyone_gone_03",
				"pwe_portals_everyone_gone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_everyone_gone_01",
				"pwe_portals_everyone_gone_02",
				"pwe_portals_everyone_gone_03",
				"pwe_portals_everyone_gone_04"
			},
			sound_events_duration = {
				3.9189791679382,
				2.5969791412353,
				1.8479791879654,
				3.0529792308807
			}
		},
		pwe_portals_find_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_find_map_01",
				"pwe_portals_find_map_02",
				"pwe_portals_find_map_03",
				"pwe_portals_find_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_find_map_01",
				"pwe_portals_find_map_02",
				"pwe_portals_find_map_03",
				"pwe_portals_find_map_04"
			},
			sound_events_duration = {
				1.9179791212082,
				3.129979133606,
				1.0479791164398,
				2.8459792137146
			}
		},
		pwe_portals_find_survivors = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_find_survivors_01",
				"pwe_portals_find_survivors_02",
				"pwe_portals_find_survivors_03",
				"pwe_portals_find_survivors_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_find_survivors_01",
				"pwe_portals_find_survivors_02",
				"pwe_portals_find_survivors_03",
				"pwe_portals_find_survivors_04"
			},
			sound_events_duration = {
				2.0009791851044,
				2.2409791946411,
				1.5229791402817,
				1.3209791183472
			}
		},
		pwe_portals_follow_trail = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_follow_trail_01",
				"pwe_portals_follow_trail_02",
				"pwe_portals_follow_trail_03",
				"pwe_portals_follow_trail_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_follow_trail_01",
				"pwe_portals_follow_trail_02",
				"pwe_portals_follow_trail_03",
				"pwe_portals_follow_trail_04"
			},
			sound_events_duration = {
				1.3089791536331,
				3.3269791603088,
				3.1909792423248,
				2.4010000228882
			}
		},
		pwe_portals_get_to_temple = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_get_to_temple_01",
				"pwe_portals_get_to_temple_02",
				"pwe_portals_get_to_temple_03",
				"pwe_portals_get_to_temple_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_get_to_temple_01",
				"pwe_portals_get_to_temple_02",
				"pwe_portals_get_to_temple_03",
				"pwe_portals_get_to_temple_04"
			},
			sound_events_duration = {
				3.1549792289734,
				4.3499794006348,
				2.7899792194366,
				3.2780208587647
			}
		},
		pwe_portals_help_search = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_help_search_01",
				"pwe_portals_help_search_02",
				"pwe_portals_help_search_03",
				"pwe_portals_help_search_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_help_search_01",
				"pwe_portals_help_search_02",
				"pwe_portals_help_search_03",
				"pwe_portals_help_search_04"
			},
			sound_events_duration = {
				2.6239790916443,
				1.8919792175293,
				3.0139999389648,
				3.756979227066
			}
		},
		pwe_portals_intro_line_a = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_portals",
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
				[1] = "pwe_portals_intro_line_a_01",
				[2] = "pwe_portals_intro_line_a_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_portals_intro_line_a_01",
				[2] = "pwe_portals_intro_line_a_02"
			},
			sound_events_duration = {
				[1] = 4.3449997901917,
				[2] = 4.191978931427
			}
		},
		pwe_portals_intro_line_b = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_portals",
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
				[1] = "pwe_portals_intro_line_b_01",
				[2] = "pwe_portals_intro_line_b_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_portals_intro_line_b_01",
				[2] = "pwe_portals_intro_line_b_02"
			},
			sound_events_duration = {
				[1] = 3.5059790611267,
				[2] = 3.8079791069031
			}
		},
		pwe_portals_intro_line_c = {
			randomize_indexes_n = 0,
			face_animations_n = 2,
			database = "wood_elf_dlc_drachenfels_portals",
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
				[1] = "pwe_portals_intro_line_c_01",
				[2] = "pwe_portals_intro_line_c_02"
			},
			randomize_indexes = {},
			sound_events = {
				[1] = "pwe_portals_intro_line_c_01",
				[2] = "pwe_portals_intro_line_c_02"
			},
			sound_events_duration = {
				[1] = 3.14097905159,
				[2] = 5.7309789657593
			}
		},
		pwe_portals_kidnapped_traces = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_kidnapped_traces_01",
				"pwe_portals_kidnapped_traces_02",
				"pwe_portals_kidnapped_traces_03",
				"pwe_portals_kidnapped_traces_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_kidnapped_traces_01",
				"pwe_portals_kidnapped_traces_02",
				"pwe_portals_kidnapped_traces_03",
				"pwe_portals_kidnapped_traces_04"
			},
			sound_events_duration = {
				3.9039790630341,
				2.6129791736603,
				3.8999791145325,
				5.651978969574
			}
		},
		pwe_portals_map_first_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_map_first_clue_01",
				"pwe_portals_map_first_clue_02",
				"pwe_portals_map_first_clue_03",
				"pwe_portals_map_first_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_map_first_clue_01",
				"pwe_portals_map_first_clue_02",
				"pwe_portals_map_first_clue_03",
				"pwe_portals_map_first_clue_04"
			},
			sound_events_duration = {
				4.1309790611267,
				3.9909791946411,
				2.8699791431427,
				3.2759792804718
			}
		},
		pwe_portals_map_second_clue = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_map_second_clue_01",
				"pwe_portals_map_second_clue_02",
				"pwe_portals_map_second_clue_03",
				"pwe_portals_map_second_clue_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_map_second_clue_01",
				"pwe_portals_map_second_clue_02",
				"pwe_portals_map_second_clue_03",
				"pwe_portals_map_second_clue_04"
			},
			sound_events_duration = {
				2.863979101181,
				5.151978969574,
				3.9529790878296,
				2.9079792499542
			}
		},
		pwe_portals_memory_portals = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_memory_portals_01",
				"pwe_portals_memory_portals_02",
				"pwe_portals_memory_portals_03",
				"pwe_portals_memory_portals_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_memory_portals_01",
				"pwe_portals_memory_portals_02",
				"pwe_portals_memory_portals_03",
				"pwe_portals_memory_portals_04"
			},
			sound_events_duration = {
				2.7449791431427,
				3.8779792785645,
				4.8819789886475,
				5.8059792518616
			}
		},
		pwe_portals_objective_recap = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_objective_recap_01",
				"pwe_portals_objective_recap_02",
				"pwe_portals_objective_recap_03",
				"pwe_portals_objective_recap_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_objective_recap_01",
				"pwe_portals_objective_recap_02",
				"pwe_portals_objective_recap_03",
				"pwe_portals_objective_recap_04"
			},
			sound_events_duration = {
				3.4849791526794,
				2.7859792709351,
				5.2399792671204,
				4.4389791488647
			}
		},
		pwe_portals_portal_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_portal_event_01",
				"pwe_portals_portal_event_02",
				"pwe_portals_portal_event_03",
				"pwe_portals_portal_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_portal_event_01",
				"pwe_portals_portal_event_02",
				"pwe_portals_portal_event_03",
				"pwe_portals_portal_event_04"
			},
			sound_events_duration = {
				1.5930000543594,
				1.5949791669846,
				1.8940000534058,
				2.0320000648499
			}
		},
		pwe_portals_portal_interact_one = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_portal_interact_one_01",
				"pwe_portals_portal_interact_one_02",
				"pwe_portals_portal_interact_one_03",
				"pwe_portals_portal_interact_one_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_portal_interact_one_01",
				"pwe_portals_portal_interact_one_02",
				"pwe_portals_portal_interact_one_03",
				"pwe_portals_portal_interact_one_04"
			},
			sound_events_duration = {
				2.2219791412353,
				1.2019791603088,
				1.3349791765213,
				3.5439791679382
			}
		},
		pwe_portals_portal_interact_three = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_portal_interact_three_01",
				"pwe_portals_portal_interact_three_02",
				"pwe_portals_portal_interact_three_03",
				"pwe_portals_portal_interact_three_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_portal_interact_three_01",
				"pwe_portals_portal_interact_three_02",
				"pwe_portals_portal_interact_three_03",
				"pwe_portals_portal_interact_three_04"
			},
			sound_events_duration = {
				2.0239791870117,
				2.3589792251587,
				1.8839999437332,
				3.6309790611267
			}
		},
		pwe_portals_portal_interact_two = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_portal_interact_two_01",
				"pwe_portals_portal_interact_two_02",
				"pwe_portals_portal_interact_two_03",
				"pwe_portals_portal_interact_two_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_portal_interact_two_01",
				"pwe_portals_portal_interact_two_02",
				"pwe_portals_portal_interact_two_03",
				"pwe_portals_portal_interact_two_04"
			},
			sound_events_duration = {
				1.9879791736603,
				3.3109791278839,
				2.7109792232513,
				1.6919791698456
			}
		},
		pwe_portals_pwe_castle_vista = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_pwe_castle_vista_01",
				"pwe_portals_pwe_castle_vista_02",
				"pwe_portals_pwe_castle_vista_03",
				"pwe_portals_pwe_castle_vista_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_pwe_castle_vista_01",
				"pwe_portals_pwe_castle_vista_02",
				"pwe_portals_pwe_castle_vista_03",
				"pwe_portals_pwe_castle_vista_04"
			},
			sound_events_duration = {
				4.9329791069031,
				3.7339792251587,
				4.4289793968201,
				6.5649790763855
			}
		},
		pwe_portals_raid_trace = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_raid_trace_01",
				"pwe_portals_raid_trace_02",
				"pwe_portals_raid_trace_03",
				"pwe_portals_raid_trace_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_raid_trace_01",
				"pwe_portals_raid_trace_02",
				"pwe_portals_raid_trace_03",
				"pwe_portals_raid_trace_04"
			},
			sound_events_duration = {
				1.1719791889191,
				2.7030000686645,
				3.9029791355133,
				3.8669791221619
			}
		},
		pwe_portals_secret_entrance_gate_opens = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_secret_entrance_gate_opens_01",
				"pwe_portals_secret_entrance_gate_opens_02",
				"pwe_portals_secret_entrance_gate_opens_03",
				"pwe_portals_secret_entrance_gate_opens_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_secret_entrance_gate_opens_01",
				"pwe_portals_secret_entrance_gate_opens_02",
				"pwe_portals_secret_entrance_gate_opens_03",
				"pwe_portals_secret_entrance_gate_opens_04"
			},
			sound_events_duration = {
				3.2119791507721,
				0.90299999713898,
				3.2129790782928,
				2.7649791240692
			}
		},
		pwe_portals_stairs = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_stairs_01",
				"pwe_portals_stairs_02",
				"pwe_portals_stairs_03",
				"pwe_portals_stairs_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_stairs_01",
				"pwe_portals_stairs_02",
				"pwe_portals_stairs_03",
				"pwe_portals_stairs_04"
			},
			sound_events_duration = {
				1.9649791717529,
				2.783979177475,
				3.4739792346954,
				2.4760000705719
			}
		},
		pwe_portals_temple_bell_tower = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_temple_bell_tower_01",
				"pwe_portals_temple_bell_tower_02",
				"pwe_portals_temple_bell_tower_03",
				"pwe_portals_temple_bell_tower_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_temple_bell_tower_01",
				"pwe_portals_temple_bell_tower_02",
				"pwe_portals_temple_bell_tower_03",
				"pwe_portals_temple_bell_tower_04"
			},
			sound_events_duration = {
				3.4567,
				3.4567,
				3.4567,
				3.4567
			}
		},
		pwe_portals_temple_event = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_temple_event_01",
				"pwe_portals_temple_event_02",
				"pwe_portals_temple_event_03",
				"pwe_portals_temple_event_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_temple_event_01",
				"pwe_portals_temple_event_02",
				"pwe_portals_temple_event_03",
				"pwe_portals_temple_event_04"
			},
			sound_events_duration = {
				1.7469791173935,
				1.9400000572205,
				1.7629791498184,
				2.2199790477753
			}
		},
		pwe_portals_temple_locked = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_temple_locked_01",
				"pwe_portals_temple_locked_02",
				"pwe_portals_temple_locked_03",
				"pwe_portals_temple_locked_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_temple_locked_01",
				"pwe_portals_temple_locked_02",
				"pwe_portals_temple_locked_03",
				"pwe_portals_temple_locked_04"
			},
			sound_events_duration = {
				2.1779792308807,
				2.2459790706634,
				2.9789791107178,
				2.419979095459
			}
		},
		pwe_portals_the_map = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_the_map_01",
				"pwe_portals_the_map_02",
				"pwe_portals_the_map_03",
				"pwe_portals_the_map_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_the_map_01",
				"pwe_portals_the_map_02",
				"pwe_portals_the_map_03",
				"pwe_portals_the_map_04"
			},
			sound_events_duration = {
				2.2029790878296,
				3.8299791812897,
				4.1239790916443,
				2.243979215622
			}
		},
		pwe_portals_waystone = {
			randomize_indexes_n = 0,
			face_animations_n = 4,
			database = "wood_elf_dlc_drachenfels_portals",
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
				"pwe_portals_waystone_01",
				"pwe_portals_waystone_02",
				"pwe_portals_waystone_03",
				"pwe_portals_waystone_04"
			},
			randomize_indexes = {},
			sound_events = {
				"pwe_portals_waystone_01",
				"pwe_portals_waystone_02",
				"pwe_portals_waystone_03",
				"pwe_portals_waystone_04"
			},
			sound_events_duration = {
				3.1949791908264,
				3.2589790821075,
				3.4969792366028,
				2.6539790630341
			}
		}
	})
end