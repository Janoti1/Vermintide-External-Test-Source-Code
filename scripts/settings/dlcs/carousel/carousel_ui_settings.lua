local settings = DLCSettings.carousel
local UNASSIGNED_KEY = UNASSIGNED_KEY or "unassigned_keymap"

settings.ui_views = {
	{
		file = "scripts/ui/views/versus_menu/base_view"
	},
	{
		name = "versus_party_char_selection_view",
		class_name = "VersusPartyCharSelectionView",
		file = "scripts/ui/views/versus_menu/versus_party_char_selection_view",
		only_in_game = true,
		only_in_inn = false,
		mechanism_filter = {
			versus = true
		},
		transitions = {
			versus_party_char_selection_view = function (self)
				self.current_view = "versus_party_char_selection_view"
			end,
			versus_party_char_view_from_character_selection = function (self)
				self.current_view = "versus_party_char_selection_view"
				self.views[self.current_view].new_character = true
			end
		}
	},
	{
		name = "versus_team_parading_view",
		class_name = "VersusTeamParadingViewV2",
		file = "scripts/ui/views/versus_menu/versus_team_parading_view_v2",
		only_in_game = true,
		only_in_inn = false,
		mechanism_filter = {
			versus = true
		},
		transitions = {
			versus_team_parading_view = function (self)
				self.current_view = "versus_team_parading_view"
			end
		}
	}
}
settings.ui_world_marker_templates = {
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_hero_status",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_objective",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_climbing",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_crawl_tunneling",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_crawl_spawning",
	"scripts/ui/hud_ui/world_marker_templates/world_marker_template_versus_pactsworn_ghostmode"
}
settings.ui_end_screens = {
	carousel_round_end = {
		file_name = "scripts/ui/views/end_screens/versus_round_end_screen_ui",
		class_name = "VersusRoundEndScreenUI"
	},
	carousel_draw = {
		file_name = "scripts/ui/views/end_screens/versus_draw_end_screen_ui",
		class_name = "VersusDrawEndScreenUI"
	}
}
settings.ui_materials = {
	"materials/ui/ui_1080p_carousel_atlas"
}
settings.ui_texture_settings = {
	filenames = {
		"scripts/ui/atlas_settings/gui_carousel_atlas"
	},
	atlas_settings = {
		carousel_atlas = {
			offscreen_material_name = "gui_carousel_atlas_offscreen",
			masked_point_sample_material_name = "gui_carousel_atlas_point_sample_masked",
			masked_offscreen_material_name = "gui_carousel_atlas_masked_offscreen",
			point_sample_offscreen_material_name = "gui_carousel_atlas_point_sample_offscreen",
			saturated_material_name = "gui_carousel_atlas_saturated",
			masked_material_name = "gui_carousel_atlas_masked",
			point_sample_material_name = "gui_carousel_atlas_point_sample",
			masked_saturated_material_name = "gui_carousel_atlas_masked_saturated",
			saturated_offscreen_material_name = "gui_carousel_atlas_saturated",
			masked_point_sample_offscreen_material_name = "gui_carousel_atlas_point_sample_masked_offscreen",
			material_name = "gui_carousel_atlas"
		}
	},
	single_textures = {
		"unit_frame_portrait_vs_corruptor",
		"unit_frame_portrait_vs_corruptor_twitch",
		"unit_frame_portrait_vs_corruptor_masked",
		"unit_frame_portrait_vs_corruptor_twitch_icon",
		"unit_frame_portrait_vs_corruptor_saturated",
		"unit_frame_portrait_vs_packmaster",
		"unit_frame_portrait_vs_packmaster_twitch",
		"unit_frame_portrait_vs_packmaster_masked",
		"unit_frame_portrait_vs_packmaster_twitch_icon",
		"unit_frame_portrait_vs_packmaster_saturated",
		"unit_frame_portrait_vs_gutter_runner",
		"unit_frame_portrait_vs_gutter_runner_twitch",
		"unit_frame_portrait_vs_gutter_runner_masked",
		"unit_frame_portrait_vs_gutter_runner_twitch_icon",
		"unit_frame_portrait_vs_gutter_runner_saturated",
		"unit_frame_portrait_vs_poison_wind_globadier",
		"unit_frame_portrait_vs_poison_wind_globadier_twitch",
		"unit_frame_portrait_vs_poison_wind_globadier_masked",
		"unit_frame_portrait_vs_poison_wind_globadier_twitch_icon",
		"unit_frame_portrait_vs_poison_wind_globadier_saturated",
		"unit_frame_portrait_vs_warpfire_thrower",
		"unit_frame_portrait_vs_warpfire_thrower_twitch",
		"unit_frame_portrait_vs_warpfire_thrower_masked",
		"unit_frame_portrait_vs_warpfire_thrower_twitch_icon",
		"unit_frame_portrait_vs_warpfire_thrower_saturated",
		"unit_frame_portrait_vs_vortex_sorcerer",
		"unit_frame_portrait_vs_vortex_sorcerer_twitch",
		"unit_frame_portrait_vs_vortex_sorcerer_masked",
		"unit_frame_portrait_vs_vortex_sorcerer_twitch_icon",
		"unit_frame_portrait_vs_vortex_sorcerer_saturated",
		"unit_frame_portrait_vs_ratling_gunner",
		"unit_frame_portrait_vs_ratling_gunner_twitch",
		"unit_frame_portrait_vs_ratling_gunner_masked",
		"unit_frame_portrait_vs_ratling_gunner_twitch_icon",
		"unit_frame_portrait_vs_ratling_gunner_saturated",
		"unit_frame_portrait_vs_chaos_troll",
		"unit_frame_portrait_vs_chaos_troll_twitch",
		"unit_frame_portrait_vs_chaos_troll_masked",
		"unit_frame_portrait_vs_chaos_troll_twitch_icon",
		"unit_frame_portrait_vs_chaos_troll_saturated",
		"vs_info_ghost_spawn",
		"vs_info_ghost_cantspawn",
		"vs_info_ghost_catchup"
	}
}
settings.start_game_windows = {
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_panel",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_background",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_quickplay",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_custom_game",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_additional_settings",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_host_versus_additional_settings",
	"scripts/ui/dlc_versus/views/start_game_view/windows/start_game_window_versus_lobby_browser"
}
settings.start_game_layout_console_generic_inputs = {
	versus_default = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "back",
				priority = 3,
				description_text = "input_description_close"
			}
		}
	},
	versus_default_play = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "refresh",
				priority = 2,
				description_text = "input_description_play"
			},
			{
				input_action = "back",
				priority = 3,
				description_text = "input_description_close"
			}
		}
	},
	versus_quickplay_default = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_pad",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "back",
				priority = 3,
				description_text = "input_description_close"
			}
		}
	},
	versus_quickplay_play = {
		ignore_generic_actions = true,
		actions = {
			{
				input_action = "d_vertical",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_select"
			},
			{
				input_action = "refresh",
				priority = 3,
				description_text = "input_description_play"
			},
			{
				input_action = "back",
				priority = 4,
				description_text = "input_description_close"
			}
		}
	}
}
settings.start_game_save_data_table_map = {
	versus = {
		custom = "versus_custom",
		quickplay = "versus_quickplay"
	}
}

local versus_save_data_table_map = settings.start_game_save_data_table_map.versus

settings.start_game_save_data_table_map_console = table.clone(settings.start_game_save_data_table_map)

local versus_save_data_table_map_console = settings.start_game_save_data_table_map_console.versus

settings.start_game_window_layout_console = {
	windows = {
		versus_panel = {
			ignore_alignment = true,
			name = "versus_panel",
			class_name = "StartGameWindowVersusPanel"
		},
		versus_background = {
			ignore_alignment = true,
			name = "versus_background",
			class_name = "StartGameWindowVersusBackground"
		},
		versus_quickplay = {
			ignore_alignment = true,
			name = "versus_quickplay",
			class_name = "StartGameWindowVersusQuickplay"
		},
		versus_custom_game = {
			ignore_alignment = true,
			name = "versus_custom_game",
			class_name = "StartGameWindowVersusCustomGame"
		},
		versus_additional_quickplay_settings = {
			parent_window_name = "versus_quickplay",
			name = "versus_additional_quickplay_settings",
			class_name = "StartGameWindowVersusAdditionalSettings",
			ignore_alignment = true
		},
		versus_additional_custom_settings = {
			parent_window_name = "versus_custom_game",
			name = "versus_additional_custom_settings",
			class_name = "StartGameWindowHostVersusAdditionalSettings",
			ignore_alignment = true
		},
		versus_lobby_browser = {
			ignore_alignment = true,
			name = "versus_lobby_browser",
			class_name = "StartGameWindowVersusLobbyBrowser"
		}
	},
	window_layouts = {
		{
			sound_event_enter = "hud_morris_start_menu_category",
			display_name = "start_game_window_adventure_title",
			game_mode_option = true,
			name = "versus_quickplay",
			disable_function_name = "_versus_quickplay_disable_function",
			panel_sorting = 10,
			background_object_set = "quick_play_chaos_wastes",
			input_focus_window = "versus_quickplay",
			close_on_exit = true,
			background_flow_event = "quick_play_chaos_wastes",
			windows = {
				versus_panel = 1,
				versus_quickplay = 3,
				versus_background = 2
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus")
			end,
			save_data_table = versus_save_data_table_map_console.quickplay
		},
		{
			sound_event_enter = "hud_morris_start_menu_category",
			display_name = "start_game_window_other_options_always_host",
			game_mode_option = true,
			name = "versus_custom_game",
			disable_function_name = "_versus_custom_disable_function",
			panel_sorting = 20,
			background_object_set = "quick_play_chaos_wastes",
			input_focus_window = "versus_custom_game",
			close_on_exit = true,
			background_flow_event = "quick_play_chaos_wastes",
			windows = {
				versus_additional_custom_settings = 4,
				versus_panel = 1,
				versus_background = 2,
				versus_custom_game = 3
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus")
			end,
			save_data_table = versus_save_data_table_map_console.custom
		},
		{
			sound_event_enter = "hud_morris_start_menu_category",
			display_name = "start_game_window_lobby_browser",
			disable_function_name = "_versus_lobby_browser_disable_function",
			name = "versus_lobby_browser",
			panel_sorting = 100,
			background_object_set = "lobby_browser_chaos_wastes",
			close_on_exit = true,
			background_flow_event = "lobby_browser_chaos_wastes",
			windows = {
				versus_panel = 1,
				versus_background = 2,
				versus_lobby_browser = 3
			},
			can_add_function = function (overview)
				return overview:is_in_mechanism("versus") and not IS_XB1
			end,
			save_data_table = versus_save_data_table_map_console.lobby_browser
		}
	},
	mechanism_quickplay_settings = {
		mechanism_name = "versus",
		game_mode_type = "versus_quickplay",
		layout_name = "area_selection"
	},
	mechanism_custom_game = {
		mechanism_name = "versus",
		game_mode_type = "versus_custom",
		difficulty_index_getter_name = "completed_level_difficulty_index",
		layout_name = "area_selection"
	}
}
settings.controller_settings = {
	PlayerControllerKeymaps = {
		win32 = {
			ping_only_enemy = {
				"keyboard",
				UNASSIGNED_KEY,
				"pressed"
			},
			ping_only_movement = {
				"keyboard",
				UNASSIGNED_KEY,
				"pressed"
			},
			ping_only_item = {
				"keyboard",
				UNASSIGNED_KEY,
				"pressed"
			}
		}
	}
}
settings.hud_component_list_path = "scripts/ui/hud_ui/component_list_definitions/hud_component_list_versus"
settings.teams_ui_assets = {
	undecided = {
		display_name = "versus_team_name_undecided",
		team_icon = "icons_placeholder",
		background_frame = "team_icon_bg_frame",
		icon = "icons_placeholder",
		background_texture = "team_icon_background"
	},
	team_hammers = {
		opponent_flag_texture = "banner_hammers_opponent",
		local_flag_long_texture = "banner_hammers_local_long",
		display_name = "versus_team_name_hammers",
		background_frame = "team_icon_bg_frame",
		team_icon = "team_icon_hammers",
		local_flag_texture = "banner_hammers_local",
		opponent_flag_long_texture = "banner_hammers_opponent_long",
		icon = "team_one_banner",
		background_texture = "team_icon_background"
	},
	team_skulls = {
		opponent_flag_texture = "banner_skulls_opponent",
		local_flag_long_texture = "banner_skulls_local_long",
		display_name = "versus_team_name_skulls",
		background_frame = "team_icon_bg_frame",
		team_icon = "team_icon_skulls",
		local_flag_texture = "banner_skulls_local",
		opponent_flag_long_texture = "banner_skulls_opponent_long",
		icon = "team_two_banner",
		background_texture = "team_icon_background"
	}
}
settings.ui_settings = {
	teams_ui_assets = settings.teams_ui_assets
}
settings.sides_localization_lookup = {
	heroes = "vs_lobby_hero_team_name",
	spectator = "not_assigned",
	dark_pact = "vs_lobby_dark_pact_team_name"
}
settings.hero_window_mood_settings = {
	default = "default",
	pactsworn = "menu_versus"
}
settings.hero_window_pactsworn_stats_by_name = {
	vs_chaos_troll = {
		"vs_chaos_troll_eliminations",
		"vs_chaos_troll_damage"
	},
	vs_gutter_runner = {
		"vs_gutter_runner_eliminations",
		"vs_gutter_runner_damage"
	},
	vs_packmaster = {
		"vs_packmaster_eliminations",
		"vs_packmaster_damage"
	},
	vs_ratling_gunner = {
		"vs_ratling_gunner_eliminations",
		"vs_ratling_gunner_damage"
	},
	vs_warpfire_thrower = {
		"vs_warpfire_thrower_eliminations",
		"vs_warpfire_thrower_damage"
	},
	vs_poison_wind_globadier = {
		"vs_poison_wind_globadier_eliminations",
		"vs_poison_wind_globadier_damage"
	},
	default = {
		"vs_game_won",
		"vs_hero_monster_kill"
	}
}
settings.stats_string_lookup = {
	vs_ratling_gunner_eliminations = "vs_scoreboard_eliminations",
	vs_warpfire_thrower_eliminations = "vs_scoreboard_eliminations",
	vs_warpfire_thrower_damage = "inventory_screen_compare_damage_tooltip",
	vs_game_won = "not_assigned",
	vs_gutter_runner_eliminations = "vs_scoreboard_eliminations",
	vs_ratling_gunner_damage = "inventory_screen_compare_damage_tooltip",
	vs_hero_monster_kill = "not_assigned",
	vs_packmaster_eliminations = "vs_scoreboard_eliminations",
	vs_gutter_runner_damage = "inventory_screen_compare_damage_tooltip",
	vs_chaos_troll_damage = "inventory_screen_compare_damage_tooltip",
	vs_poison_wind_globadier_damage = "inventory_screen_compare_damage_tooltip",
	vs_poison_wind_globadier_eliminations = "vs_scoreboard_eliminations",
	vs_packmaster_damage = "inventory_screen_compare_damage_tooltip",
	vs_chaos_troll_eliminations = "vs_scoreboard_eliminations"
}
settings.stats_icons_lookup = {
	vs_ratling_gunner_eliminations = "killfeed_icon_12",
	vs_warpfire_thrower_eliminations = "killfeed_icon_12",
	vs_warpfire_thrower_damage = "icon_damage",
	vs_game_won = "icons_placeholder",
	vs_gutter_runner_eliminations = "killfeed_icon_12",
	vs_ratling_gunner_damage = "icon_damage",
	vs_hero_monster_kill = "icons_placeholder",
	vs_packmaster_eliminations = "killfeed_icon_12",
	vs_gutter_runner_damage = "icon_damage",
	vs_chaos_troll_damage = "icon_damage",
	vs_poison_wind_globadier_damage = "icon_damage",
	vs_poison_wind_globadier_eliminations = "killfeed_icon_12",
	vs_packmaster_damage = "icon_damage",
	vs_chaos_troll_eliminations = "killfeed_icon_12"
}
