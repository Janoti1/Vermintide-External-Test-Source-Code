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
	small_level_image = "carousel_hub_small_image",
	skip_generate_spawns = true,
	dlc_name = "carousel",
	hub_level = true,
	ambient_sound_event = "silent_default_world_sound",
	load_no_enemies = false,
	level_image = "level_image_carousel_hub",
	act_presentation_order = 1,
	knocked_down_setting = "knocked_down",
	game_mode = "inn_vs",
	default_surface_material = "dirt",
	conflict_settings = "inn_level",
	has_multiple_loading_images = true,
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
LevelSettings.farmlands_pvp = {
	ambient_sound_event = "silent_default_world_sound",
	level_name = "levels/honduras_dlcs/carousel/farmlands_pvp/world",
	player_aux_bus_name = "environment_reverb_outside",
	display_name = "level_name_farmlands",
	environment_state = "exterior",
	mechanism = "versus",
	knocked_down_setting = "knocked_down",
	act = "act_versus",
	small_level_image = "farmlands_small_image",
	main_game_level = false,
	boss_spawning_method = "hand_placed",
	description_text = "nik_loading_screen_farmland_01",
	unlockable = true,
	use_mini_patrols = false,
	loading_ui_package_name = "loading_screen_7",
	act_presentation_order = 5,
	default_surface_material = "dirt",
	game_mode = "versus",
	level_image = "level_icon_09",
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
	small_level_image = "bell_small_image",
	main_game_level = false,
	boss_spawning_method = "hand_placed",
	description_text = "nik_loading_screen_bell_01",
	unlockable = true,
	use_mini_patrols = false,
	loading_ui_package_name = "loading_screen_1",
	act_presentation_order = 3,
	default_surface_material = "stone_wet",
	game_mode = "versus",
	level_image = "level_icon_07",
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
	small_level_image = "military_small_image",
	main_game_level = false,
	use_mini_patrols = false,
	description_text = "nik_loading_screen_helmgart_military_01",
	unlockable = true,
	boss_spawning_method = "hand_placed",
	act_presentation_order = 1,
	loading_ui_package_name = "loading_screen_13",
	display_name = "level_name_military",
	default_surface_material = "stone",
	game_mode = "versus",
	knocked_down_setting = "knocked_down",
	level_image = "level_icon_01",
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
LevelSettings.fort_pvp = {
	description_text = "nik_loading_screen_fort_01",
	level_image = "level_icon_06",
	display_name = "level_name_forest_fort",
	player_aux_bus_name = "environment_reverb_outside",
	environment_state = "exterior",
	mechanism = "versus",
	act = "act_versus",
	dlc_name = "carousel",
	small_level_image = "fort_small_image",
	main_game_level = false,
	game_mode = "versus",
	boss_spawning_method = "hand_placed",
	act_presentation_order = 4,
	unlockable = true,
	ambient_sound_event = "silent_default_world_sound",
	loading_ui_package_name = "loading_screen_8",
	default_surface_material = "stone_wet",
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
	small_level_image = "forest_ambush_small_image",
	waystone_type = 2,
	act_presentation_order = 8,
	display_name = "level_name_forest_ambush",
	boss_spawning_method = "hand_placed",
	unlockable = true,
	default_surface_material = "stone",
	game_mode = "versus",
	knocked_down_setting = "knocked_down",
	loading_ui_package_name = "loading_screen_18",
	level_name = "levels/honduras_dlcs/carousel/forest_ambush_pvp/world",
	dlc_name = "carousel",
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
