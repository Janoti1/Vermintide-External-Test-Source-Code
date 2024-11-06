local settings = DLCSettings.carousel

settings.missions = {
	bell_pvp_barrels = {
		text = "bell_pvp_barrels",
		mission_template_name = "collect",
		collect_amount = 3
	},
	military_pvp_barrels = {
		text = "military_pvp_barrels",
		mission_template_name = "collect",
		collect_amount = 2
	},
	versus_mission_survive_courtyard_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_courtyard_02 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_courtyard_03 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_courtyard_04 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_05"
	},
	versus_mission_survive_temple_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_02 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_02_B = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_03 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_04 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_05 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_06 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_07 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_survive_temple_08 = {
		mission_template_name = "goal",
		text = "level_objective_description_military_20"
	},
	versus_mission_objective_barricade_sockets = {
		mission_template_name = "goal",
		text = "level_objective_description_military_02"
	},
	versus_mission_farmlands_key = {
		mission_template_name = "goal",
		text = "level_objective_description_farmlands_07"
	},
	versus_mission_objective_barn = {
		mission_template_name = "goal",
		text = "level_objective_description_farmlands_08"
	},
	versus_mission_monster = {
		mission_template_name = "goal",
		text = "level_objective_description_farmlands_09"
	},
	mission_fort_bonfire_001 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_002 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_003 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_004 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_bonfire_005 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_09"
	},
	mission_fort_breach_wall = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_16"
	},
	versus_fort_cannon_balls = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_16"
	},
	versus_fort_secret_elevator = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_17"
	},
	versus_fort_open_portcullis = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_20"
	},
	versus_mission_objective_end_cannon_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_fort_23"
	},
	versus_mission_survive_ferry_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_15"
	},
	versus_mission_survive_ferry_02 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_15"
	},
	versus_mission_survive_ferry_03 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_15"
	},
	versus_mission_survive_ferry_04 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_15"
	},
	versus_mission_watch_tower_01 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_06"
	},
	versus_mission_watch_tower_02 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_06"
	},
	versus_mission_watch_tower_03 = {
		mission_template_name = "goal",
		text = "level_objective_description_forest_ambush_06"
	},
	forest_ambush_pvp_gargoyles = {
		text = "level_objective_description_forest_ambush_11",
		mission_template_name = "collect",
		collect_amount = 2
	}
}
LevelSettings.carousel_hub = {
	no_bots_allowed = true,
	player_aux_bus_name = "environment_reverb_outside",
	display_name = "level_name_carousel_hub",
	environment_state = "exterior",
	mechanism = "versus",
	act = "act_versus",
	loading_ui_package_name = "loading_screen_carousel",
	dlc_name = "carousel",
	skip_generate_spawns = true,
	level_image = "level_icon_inn_level",
	hub_level = true,
	ambient_sound_event = "silent_default_world_sound",
	load_no_enemies = false,
	knocked_down_setting = "knocked_down",
	act_presentation_order = 1,
	game_mode = "inn_vs",
	default_surface_material = "dirt",
	has_multiple_loading_images = true,
	conflict_settings = "inn_level",
	level_name = "levels/honduras_dlcs/carousel/carousel_hub/world",
	no_nav_mesh = false,
	no_terror_events = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/carousel/carousel_hub",
		"resource_packages/levels/inn_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	breed_categories = {
		{
			id = "keep_rats",
			dynamic_loading = false,
			breeds = {
				"critter_rat"
			}
		}
	},
	locations = {},
	loot_objectives = {},
	pickup_settings = {
		{
			primary = {
				grenades = 5,
				ammo = 2,
				level_events = {
					explosive_barrel = 4,
					lamp_oil = 4
				}
			}
		}
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.slum_pvp = {
	description_text = "nik_loading_screen_dlc_pit_01",
	ambient_sound_event = "silent_default_world_sound",
	climate_type = "",
	environment_state = "exterior",
	mechanism = "versus",
	display_name = "level_name_bogenhafen_slum",
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_16",
	unlockable = true,
	main_game_level = false,
	player_aux_bus_name = "environment_reverb_outside",
	level_image = "level_icon_bgh_pit",
	game_mode = "versus",
	use_mini_patrols = false,
	boss_spawning_method = "hand_placed",
	default_surface_material = "dirt",
	level_name = "levels/honduras_dlcs/carousel/slum_pvp/world",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/bogenhafen/slum",
		"resource_packages/levels/dlcs/carousel/slum_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	locations = {
		"location_bogenhafen_slum_backstreets",
		"location_bogenhafen_slum_bridge_road",
		"location_bogenhafen_slum_broken_bridge",
		"location_bogenhafen_slum_broken_wall_interior",
		"location_bogenhafen_slum_dock_area",
		"location_bogenhafen_slum_east_slum",
		"location_bogenhafen_slum_east_wall",
		"location_bogenhafen_slum_event_area",
		"location_bogenhafen_slum_fish_market",
		"location_bogenhafen_slum_hill",
		"location_bogenhafen_slum_north_slum",
		"location_bogenhafen_slum_river",
		"location_bogenhafen_slum_river_gauntlet",
		"location_bogenhafen_slum_south_slum",
		"location_bogenhafen_slum_underpass",
		"location_bogenhafen_slum_west_tower"
	},
	loading_screen_wwise_events = {
		"nik_loading_screen_dlc_pit_01",
		"nik_loading_screen_dlc_pit_02",
		dr_engineer = {
			"pdr_de_loading_screen_dlc_pit_01",
			"pdr_de_loading_screen_dlc_pit_02"
		},
		we_thornsister = {
			"pwe_st_loading_screen_dlc_pit_01",
			"pwe_st_loading_screen_dlc_pit_02"
		},
		es_questingknight = {
			"pes_gk_loading_screen_dlc_pit_01",
			"pes_gk_loading_screen_dlc_pit_02"
		},
		wh_priest = {
			"pwh_wp_loading_screen_dlc_pit_01",
			"pwh_wp_loading_screen_dlc_pit_02"
		},
		bw_necromancer = {
			"pbw_nm_loading_screen_dlc_pit_01",
			"pbw_nm_loading_screen_dlc_pit_02"
		}
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.farmlands_pvp = {
	ambient_sound_event = "silent_default_world_sound",
	level_name = "levels/honduras_dlcs/carousel/farmlands_pvp/world",
	player_aux_bus_name = "environment_reverb_outside",
	display_name = "level_name_farmlands",
	environment_state = "exterior",
	mechanism = "versus",
	knocked_down_setting = "knocked_down",
	act = "act_versus",
	unlockable = true,
	main_game_level = false,
	level_image = "level_icon_09",
	description_text = "nik_loading_screen_farmland_01",
	boss_spawning_method = "hand_placed",
	use_mini_patrols = false,
	act_presentation_order = 1,
	game_mode = "versus",
	default_surface_material = "dirt",
	loading_ui_package_name = "loading_screen_7",
	dlc_name = "carousel",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/farmlands_common",
		"resource_packages/levels/honduras/farmlands",
		"resource_packages/levels/dlcs/carousel/farmlands_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_farmland_01",
		"nik_loading_screen_farmland_02"
	},
	locations = {
		"location_farmlands_pvp_farmlands",
		"location_farmlands_pvp_wet_field",
		"location_farmlands_pvp_oak_hill",
		"location_farmlands_pvp_farmstead_01",
		"location_farmlands_pvp_farmstead_02",
		"location_farmlands_pvp_farmstead_03"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.bell_pvp = {
	ambient_sound_event = "silent_default_world_sound",
	level_name = "levels/honduras_dlcs/carousel/bell_pvp/world",
	player_aux_bus_name = "environment_reverb_outside",
	display_name = "level_name_bell",
	environment_state = "exterior",
	mechanism = "versus",
	knocked_down_setting = "knocked_down",
	act = "act_versus",
	unlockable = true,
	main_game_level = false,
	level_image = "level_icon_07",
	description_text = "nik_loading_screen_bell_01",
	boss_spawning_method = "hand_placed",
	use_mini_patrols = false,
	act_presentation_order = 1,
	game_mode = "versus",
	default_surface_material = "stone_wet",
	loading_ui_package_name = "loading_screen_1",
	dlc_name = "carousel",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/bell_common",
		"resource_packages/levels/honduras/bell",
		"resource_packages/levels/dlcs/carousel/bell_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_bell_01",
		"nik_loading_screen_bell_02"
	},
	locations = {
		"location_bell_pvp_winery",
		"location_bell_pvp_boulevard",
		"location_bell_pvp_south",
		"location_bell_pvp_slums",
		"location_bell_pvp_market_alley",
		"location_bell_pvp_market",
		"location_bell_pvp_hill_street",
		"location_bell_pvp_hill_street_junction",
		"location_bell_pvp_hill_park",
		"location_bell_pvp_serpentine",
		"location_bell_pvp_mountain",
		"location_bell_pvp_northside",
		"location_bell_pvp_platz"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.military_pvp = {
	ambient_sound_event = "silent_default_world_sound",
	level_name = "levels/honduras_dlcs/carousel/military_pvp/world",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	mechanism = "versus",
	act = "act_versus",
	unlockable = true,
	main_game_level = false,
	level_image = "level_icon_01",
	description_text = "nik_loading_screen_helmgart_military_01",
	use_mini_patrols = false,
	boss_spawning_method = "hand_placed",
	act_presentation_order = 1,
	display_name = "level_name_military",
	game_mode = "versus",
	default_surface_material = "stone",
	loading_ui_package_name = "loading_screen_13",
	knocked_down_setting = "knocked_down",
	dlc_name = "carousel",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/military_common",
		"resource_packages/levels/honduras/military",
		"resource_packages/levels/dlcs/carousel/military_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_helmgart_military_01",
		"nik_loading_screen_helmgart_military_02"
	},
	locations = {
		"location_military_pvp_streets_01",
		"location_military_pvp_streets_02",
		"location_military_pvp_streets_03",
		"location_military_pvp_streets_04",
		"location_military_pvp_fort",
		"location_military_pvp_tower",
		"location_military_pvp_interior",
		"location_military_pvp_wall_01",
		"location_military_pvp_wall_event",
		"location_military_pvp_wall_02",
		"location_military_pvp_wall_03",
		"location_military_pvp_road_to_temple",
		"location_military_pvp_temple",
		"location_military_pvp_vs_01",
		"location_military_pvp_vs_02",
		"location_military_pvp_vs_03"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.skaven_training_pvp = {
	description_text = "nik_loading_screen_skaven_stronghold_01",
	ambient_sound_event = "silent_default_world_sound",
	environment_state = "exterior",
	mechanism = "versus",
	display_name = "level_name_skaven_training_pvp",
	loading_ui_package_name = "loading_screen_3",
	use_mini_patrols = false,
	unlockable = true,
	main_game_level = true,
	training_mode = true,
	level_image = "level_icon_08",
	conflict_settings = "tutorial",
	boss_spawning_method = "hand_placed",
	player_aux_bus_name = "environment_reverb_outside",
	game_mode = "versus",
	default_surface_material = "stone",
	dlc_name = "carousel",
	knocked_down_setting = "knocked_down",
	level_name = "levels/honduras_dlcs/carousel/skaven_training_pvp/world",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/carousel/skaven_training_pvp",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	locations = {
		"location_skaven_training_pvp_mountains",
		"location_skaven_training_pvp_dwarf_entrance_hall",
		"location_skaven_training_pvp_dwarf_interiors",
		"location_skaven_training_pvp_dwarf_rail_tracks",
		"location_skaven_training_pvp_dwarf_water_wheels",
		"location_skaven_training_pvp_dwarf_foundry",
		"location_skaven_training_pvp_skaven_city",
		"location_skaven_training_pvp_skaven_transport_area",
		"location_skaven_training_pvp_dwarf_aqueducts",
		"location_skaven_training_pvp_warlord_nest"
	},
	loading_screen_wwise_events = {
		"nik_loading_screen_skaven_stronghold_01",
		"nik_loading_screen_skaven_stronghold_02"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.fort_pvp = {
	level_image = "level_icon_06",
	display_name = "level_name_forest_fort",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	mechanism = "versus",
	act = "act_versus",
	dlc_name = "carousel",
	unlockable = true,
	main_game_level = false,
	description_text = "nik_loading_screen_fort_01",
	default_surface_material = "stone_wet",
	boss_spawning_method = "hand_placed",
	act_presentation_order = 1,
	game_mode = "versus",
	ambient_sound_event = "silent_default_world_sound",
	loading_ui_package_name = "loading_screen_8",
	knocked_down_setting = "knocked_down",
	level_name = "levels/honduras_dlcs/carousel/fort_pvp/world",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/fort_common",
		"resource_packages/levels/honduras/fort",
		"resource_packages/levels/dlcs/carousel/fort_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	locations = {
		"location_fort_pvp_river_road",
		"location_fort_pvp_south_bridge",
		"location_fort_pvp_river_bank",
		"location_fort_pvp_river_crossing",
		"location_fort_pvp_rocky_path",
		"location_fort_pvp_muddy_path",
		"location_fort_pvp_hidden_entrance",
		"location_fort_pvp_inner_yard",
		"location_fort_pvp_north_yard",
		"location_fort_pvp_north_bridge",
		"location_fort_river_overlook"
	},
	loading_screen_wwise_events = {
		"nik_loading_screen_fort_01",
		"nik_loading_screen_fort_02"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.forest_ambush_pvp = {
	description_text = "nfl_forest_ambush_loading_screen_02",
	ambient_sound_event = "silent_default_world_sound",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	mechanism = "versus",
	level_image = "level_icon_ubersreik_forest",
	act = "act_versus",
	use_mini_patrols = false,
	unlockable = true,
	waystone_type = 2,
	display_name = "level_name_forest_ambush",
	game_mode = "versus",
	boss_spawning_method = "hand_placed",
	dlc_name = "carousel",
	default_surface_material = "stone",
	act_presentation_order = 1,
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_18",
	level_name = "levels/honduras_dlcs/carousel/forest_ambush_pvp/world",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/holly/forest_ambush",
		"resource_packages/levels/dlcs/carousel/forest_ambush_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nfl_forest_ambush_loading_screen_01",
		"nfl_forest_ambush_loading_screen_02"
	},
	locations = {
		"location_forest_pvp_reikwald",
		"location_forest_pvp_skaven_camp",
		"location_forest_pvp_mother_black",
		"location_forest_pvp_after_bridge",
		"location_forest_pvp_cave",
		"location_forest_pvp_road",
		"location_forest_pvp_ruins_entrance",
		"location_forest_pvp_ruins_inneryard",
		"location_forest_pvp_swamp",
		"location_forest_ambush_pvp_vs_01",
		"location_forest_ambush_pvp_vs_02",
		"location_forest_ambush_pvp_vs_03"
	},
	mission_selection_offset = {
		184,
		-167,
		0
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.magnus_pvp = {
	description_text = "nfl_magnus_tower_loading_screen_02",
	ambient_sound_event = "silent_default_world_sound",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	mechanism = "versus",
	level_image = "level_icon_ubersreik_magnus",
	act = "act_versus",
	use_mini_patrols = false,
	unlockable = true,
	waystone_type = 2,
	display_name = "level_name_magnus",
	game_mode = "versus",
	boss_spawning_method = "hand_placed",
	dlc_name = "carousel",
	default_surface_material = "stone",
	act_presentation_order = 1,
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_19",
	level_name = "levels/honduras_dlcs/carousel/magnus_pvp/world",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/holly/magnus",
		"resource_packages/levels/dlcs/carousel/magnus_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nfl_magnus_tower_loading_screen_01",
		"nfl_magnus_tower_loading_screen_02"
	},
	locations = {
		"location_magnus_pvp_gate_plaza",
		"location_magnus_pvp_guardhouse",
		"location_magnus_pvp_street",
		"location_magnus_pvp_the_slums",
		"location_magnus_pvp_waterfront",
		"location_magnus_pvp_tavern",
		"location_magnus_pvp_rooftops",
		"location_magnus_pvp_the_tower",
		"location_magnus_pvp_the_plaza",
		"location_magnus_pvp_horn_room",
		"location_magnus_pvp_the_garrison"
	},
	mission_selection_offset = {
		0,
		153,
		0
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.mines_pvp = {
	ambient_sound_event = "silent_default_world_sound",
	display_name = "level_name_mines",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	act = "act_versus",
	loading_ui_package_name = "loading_screen_2",
	main_game_level = true,
	unlockable = true,
	description_text = "nik_loading_screen_mines_01",
	dlc_name = "carousel",
	boss_spawning_method = "hand_placed",
	level_image = "level_icon_02",
	act_presentation_order = 1,
	default_surface_material = "stone",
	mechanism = "versus",
	knocked_down_setting = "knocked_down",
	level_name = "levels/honduras_dlcs/carousel/mines_pvp/world",
	game_mode = "versus",
	override_map_start_section = true,
	use_mini_patrols = false,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/honduras/mines_common",
		"resource_packages/levels/honduras/mines",
		"resource_packages/levels/dlcs/carousel/mines_pvp_meta",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	camera_backlight = COLD_CAMERA_BACKLIGHT,
	boss_events = {
		max_events_of_this_kind = {
			event_boss = 1
		}
	},
	darkness_settings = {
		disable_screen_fx = true,
		player_light_intensity = 0.15,
		volumes = {
			"environment_darkness_01"
		}
	},
	loading_screen_wwise_events = {
		"nik_loading_screen_mines_01",
		"nik_loading_screen_mines_02"
	},
	locations = {
		"location_mines_pvp_mine",
		"location_mines_pvp_tilted_room",
		"location_mines_pvp_loading_dock",
		"location_mines_pvp_double_tracks",
		"location_mines_pvp_middle_troll_cave",
		"location_mines_pvp_middle_mine_cave",
		"location_mines_pvp_tunnel_crossing",
		"location_mines_pvp_dark_payload",
		"location_mines_pvp_dark_payload_loop",
		"location_mines_pvp_dark_payload_bridge",
		"location_mines_pvp_troll_pantry",
		"location_mines_pvp_large_troll_cave",
		"location_mines_pvp_end_event_cave"
	},
	supported_game_modes = {
		versus = true
	}
}
LevelSettings.nurgle_pvp = {
	description_text = "nik_loading_screen_nurgle_01",
	display_name = "level_name_nurgle",
	ambient_sound_event = "silent_default_world_sound",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	mechanism = "versus",
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_5",
	main_game_level = true,
	dlc_name = "carousel",
	level_image = "level_icon_11",
	act = "act_versus",
	use_mini_patrols = false,
	act_presentation_order = 1,
	boss_spawning_method = "hand_placed",
	default_surface_material = "mud",
	unlockable = true,
	game_mode = "versus",
	level_name = "levels/honduras_dlcs/carousel/nurgle_pvp/world",
	override_map_start_section = true,
	source_aux_bus_name = "environment_reverb_outside_source",
	packages = {
		"resource_packages/levels/dlcs/carousel/nurgle_pvp",
		"resource_packages/levels/dlcs/carousel/versus_dependencies"
	},
	environment_variations = {
		"wv_midnight_storm_01"
	},
	level_particle_effects = {},
	level_screen_effects = {},
	loading_screen_wwise_events = {
		"nik_loading_screen_nurgle_01_short",
		"nik_loading_screen_nurgle_02_short"
	},
	locations = {
		"location_nurgle_pvp_start_area",
		"location_nurgle_pvp_bandit_hideout_01",
		"location_nurgle_pvp_twin_bridge_canyon",
		"location_nurgle_pvp_big_cave",
		"location_nurgle_pvp_bandit_hideout_02",
		"location_nurgle_pvp_loading_dock",
		"location_nurgle_pvp_river",
		"location_nurgle_pvp_skaven_cave",
		"location_nurgle_pvp_nurgle_canyon_01",
		"location_nurgle_pvp_nurgle_canyon_02",
		"location_nurgle_pvp_small_plaza",
		"location_nurgle_pvp_vines_corridor",
		"location_nurgle_pvp_ruins",
		"location_nurgle_pvp_swamp",
		"location_nurgle_pvp_end_event"
	},
	darkness_settings = {
		player_light_intensity = 0.1,
		volumes = {
			"environment_darkness"
		}
	},
	supported_game_modes = {
		versus = true
	}
}
