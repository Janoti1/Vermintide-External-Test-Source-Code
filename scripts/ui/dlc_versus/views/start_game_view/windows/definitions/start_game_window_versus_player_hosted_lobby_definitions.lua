local MENU_BUTTON_FONT_SIZE = 24
local game_option_size = {
	520,
	194
}
local team_panel_size = {
	480,
	80
}
local player_panel_size = {
	480,
	100
}
local team_area = {
	player_panel_size[1],
	30 + 4 * player_panel_size[2]
}
local scenegraph_definition = {
	root = {
		is_root = true,
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.default
		}
	},
	root_fit = {
		scale = "fit",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			UILayer.default
		}
	},
	menu_root = {
		vertical_alignment = "center",
		parent = "root",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			0
		}
	},
	settings_container = {
		vertical_alignment = "top",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = {
			600,
			250
		},
		position = {
			0,
			-600,
			1
		}
	},
	game_option_1 = {
		vertical_alignment = "top",
		parent = "settings_container",
		horizontal_alignment = "center",
		size = game_option_size,
		position = {
			0,
			game_option_size[2] + 50,
			1
		}
	},
	button_controls = {
		vertical_alignment = "bottom",
		parent = "settings_container",
		horizontal_alignment = "center",
		size = {
			490,
			140
		},
		position = {
			0,
			0,
			1
		}
	},
	force_start_button = {
		vertical_alignment = "top",
		parent = "button_controls",
		horizontal_alignment = "left",
		size = {
			490,
			70
		},
		position = {
			0,
			80,
			1
		}
	},
	leave_game_button = {
		vertical_alignment = "top",
		parent = "button_controls",
		horizontal_alignment = "left",
		size = {
			490,
			70
		},
		position = {
			0,
			0,
			1
		}
	},
	team_1 = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "left",
		size = team_area,
		position = {
			100,
			0,
			10
		}
	},
	team_1_panel = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = team_panel_size,
		position = {
			0,
			90,
			3
		}
	},
	team_1_player_panel = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = player_panel_size,
		position = {
			0,
			-150 * 0,
			10
		}
	},
	team_2 = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "right",
		size = team_area,
		position = {
			-100,
			0,
			10
		}
	},
	team_2_panel = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = team_panel_size,
		position = {
			0,
			90,
			3
		}
	},
	team_2_player_panel = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = player_panel_size,
		position = {
			0,
			-150 * 0,
			10
		}
	}
}

local function create_team_widget(scenegraph_id, team_definition, team_color)
	return {
		scenegraph_id = scenegraph_id,
		element = {
			passes = {
				{
					style_id = "team_name",
					pass_type = "text",
					text_id = "team_name"
				},
				{
					style_id = "team_name_shadow",
					pass_type = "text",
					text_id = "team_name"
				},
				{
					style_id = "player_count",
					pass_type = "text",
					text_id = "player_count"
				},
				{
					pass_type = "texture",
					style_id = "team_icon_bg",
					texture_id = "team_icon_bg"
				},
				{
					pass_type = "texture",
					style_id = "team_icon",
					texture_id = "team_icon"
				}
			}
		},
		content = {
			player_count = "n/a",
			team_name = Localize(team_definition.display_name),
			team_icon_bg = team_definition.background_texture,
			team_icon = team_definition.team_icon
		},
		style = {
			team_name = {
				use_shadow = true,
				upper_case = true,
				localize = false,
				vertical_alignment = "top",
				font_size = 48,
				font_type = "hell_shark_header",
				text_color = team_color,
				offset = {
					90,
					0,
					1
				}
			},
			team_name_shadow = {
				use_shadow = true,
				upper_case = true,
				vertical_alignment = "top",
				font_size = 48,
				font_type = "hell_shark_header",
				text_color = {
					255,
					0,
					0,
					0
				},
				offset = {
					94,
					-4,
					0
				}
			},
			player_count = {
				vertical_alignment = "top",
				use_shadow = true,
				font_size = 24,
				font_type = "hell_shark",
				text_color = {
					255,
					255,
					255,
					255
				},
				offset = {
					94,
					-48,
					1
				}
			},
			team_icon_bg = {
				vertical_alignment = "top",
				texture_size = {
					80,
					80
				},
				color = team_color
			},
			team_icon = {
				vertical_alignment = "top",
				texture_size = {
					80,
					80
				},
				color = team_color,
				offset = {
					0,
					0,
					1
				}
			}
		}
	}
end

local settings_container_widget, create_setting_widget

settings_container_widget = {
	scenegraph_id = "settings_container",
	element = {
		passes = {
			{
				pass_type = "texture",
				style_id = "divider",
				texture_id = "divider"
			}
		}
	},
	content = {
		divider = "popup_divider"
	},
	style = {
		divider = {
			vertical_alignment = "top",
			horizontal_alignment = "center",
			texture_size = {
				379,
				8
			},
			offset = {
				0,
				0,
				0
			}
		}
	}
}

local disable_with_gamepad = true
local widget_definitions = {
	mission_setting = UIWidgets.create_start_game_console_setting_button("game_option_1", Localize("start_game_window_mission"), nil, nil, nil, scenegraph_definition.game_option_1.size),
	settings_container = settings_container_widget,
	team_1 = create_team_widget("team_1_panel", UISettings.teams_ui_assets.team_hammers, Colors.get_color_table_with_alpha("local_player_team_lighter", 255)),
	team_2 = create_team_widget("team_2_panel", UISettings.teams_ui_assets.team_skulls, Colors.get_color_table_with_alpha("opponent_team_lighter", 255)),
	leave_game_button = UIWidgets.create_default_button("leave_game_button", scenegraph_definition.leave_game_button.size, nil, nil, Localize("exit"), MENU_BUTTON_FONT_SIZE, nil, nil, nil, disable_with_gamepad)
}
local host_widget_definitions = {
	force_start_button = UIWidgets.create_default_button("force_start_button", scenegraph_definition.force_start_button.size, nil, nil, Localize("vs_ui_force_start_button"), MENU_BUTTON_FONT_SIZE, nil, nil, nil, disable_with_gamepad)
}

local function is_empty(content)
	return content.empty
end

local function is_not_empty(content)
	return not content.empty
end

local function create_player_panel_widget(team_index, player_index)
	local scenegraph_id = "team_" .. team_index .. "_player_panel"
	local size = scenegraph_definition[scenegraph_id].size
	local frame_settings = UIFrameSettings.button_frame_02
	local shadow_frame_settings = UIFrameSettings.shadow_frame_02
	local hover_frame_settings = UIFrameSettings.frame_outer_glow_04
	local empty_hover_frame_settings = UIFrameSettings.frame_outer_glow_01
	local empty_frame_settings = UIFrameSettings.frame_bevel_01
	local team_color = team_index == 1 and Colors.get_color_table_with_alpha("local_player_team_lighter", 255) or Colors.get_color_table_with_alpha("opponent_team_lighter", 255)
	local insignia_scale_factor = size[2] / 138
	local insignia_texture_size = {
		50 * insignia_scale_factor,
		138 * insignia_scale_factor
	}

	return {
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			-120 * (player_index - 1),
			0
		},
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					style_id = "empty_background",
					pass_type = "rect",
					content_check_function = is_empty
				},
				{
					pass_type = "texture_frame",
					style_id = "empty_hover_frame",
					texture_id = "empty_hover_frame",
					content_check_function = function (content)
						return content.empty and content.button_hotspot.is_hover
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "empty_frame",
					texture_id = "empty_frame",
					content_check_function = is_empty
				},
				{
					style_id = "open_slot_text",
					pass_type = "text",
					text_id = "open_slot_text",
					content_check_function = is_empty
				},
				{
					style_id = "open_slot_text_shadow",
					pass_type = "text",
					text_id = "open_slot_text",
					content_check_function = is_empty
				},
				{
					style_id = "background",
					pass_type = "rect",
					content_check_function = is_not_empty
				},
				{
					pass_type = "texture_frame",
					style_id = "hover_frame",
					texture_id = "hover_frame",
					content_check_function = function (content)
						return not content.empty and content.is_local_player and content.button_hotspot.is_hover
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "frame",
					texture_id = "frame",
					content_check_function = is_not_empty
				},
				{
					pass_type = "texture_frame",
					style_id = "shadow_frame",
					texture_id = "shadow_frame",
					content_check_function = is_not_empty
				},
				{
					pass_type = "texture",
					style_id = "player_avatar",
					texture_id = "player_avatar",
					content_check_function = function (content)
						return not content.empty and content.player_avatar
					end
				},
				{
					pass_type = "texture",
					style_id = "host_texture",
					texture_id = "host_texture",
					content_check_function = function (content)
						return not content.empty and content.show_host
					end
				},
				{
					style_id = "player_name",
					pass_type = "text",
					text_id = "player_name",
					content_check_function = is_not_empty
				},
				{
					style_id = "player_level",
					pass_type = "text",
					text_id = "player_level",
					content_check_function = is_not_empty
				},
				{
					style_id = "insignia_main",
					pass_type = "texture_uv",
					content_id = "insignia_main",
					content_check_function = function (content)
						return not content.parent.empty
					end
				},
				{
					style_id = "insignia_addon",
					pass_type = "texture_uv",
					content_id = "insignia_addon",
					content_check_function = function (content)
						return not content.parent.empty and content.uvs
					end
				},
				{
					style_id = "party_color",
					pass_type = "rect",
					content_check_function = is_not_empty
				},
				{
					style_id = "kick_button_background",
					pass_type = "rect",
					content_check_function = function (content, style)
						return content.show_kick_button
					end
				},
				{
					texture_id = "button_frame",
					style_id = "kick_button_frame",
					pass_type = "texture",
					content_check_function = function (content, style)
						return content.show_kick_button
					end
				},
				{
					pass_type = "texture",
					style_id = "kick_button_hotspot",
					texture_id = "kick_button_texture",
					content_check_function = function (content, style)
						return content.show_kick_button
					end
				},
				{
					style_id = "kick_button_hotspot",
					pass_type = "hotspot",
					content_id = "kick_button_hotspot",
					content_check_function = function (content)
						return content.parent.show_kick_button and not content.disable_button
					end
				},
				{
					style_id = "tooltip_text",
					pass_type = "tooltip_text",
					text_id = "kick_tooltip_text",
					content_check_function = function (content)
						return content.show_kick_button and content.kick_button_hotspot.is_hover
					end
				},
				{
					pass_type = "rect",
					style_id = "chat_button_background",
					texture_id = "chat_button_texture",
					content_check_function = function (content)
						return content.show_chat_button
					end
				},
				{
					texture_id = "button_frame",
					style_id = "chat_button_frame",
					pass_type = "texture",
					content_check_function = function (content)
						return content.show_chat_button
					end
				},
				{
					pass_type = "texture",
					style_id = "chat_button_hotspot",
					texture_id = "chat_button_texture",
					content_check_function = function (content)
						return content.show_chat_button
					end
				},
				{
					pass_type = "texture",
					style_id = "chat_button_disabled",
					texture_id = "disabled_texture",
					content_check_function = function (content)
						return content.show_chat_button and content.chat_button_hotspot.is_selected
					end
				},
				{
					style_id = "chat_button_hotspot",
					pass_type = "hotspot",
					content_id = "chat_button_hotspot",
					content_check_function = function (content)
						return content.parent.show_chat_button and not content.disable_button
					end
				},
				{
					style_id = "tooltip_text",
					pass_type = "tooltip_text",
					text_id = "chat_tooltip_text_mute",
					content_check_function = function (content)
						return content.show_chat_button and not content.chat_button_hotspot.is_selected and content.chat_button_hotspot.is_hover
					end
				},
				{
					style_id = "tooltip_text",
					pass_type = "tooltip_text",
					text_id = "chat_tooltip_text_unmute",
					content_check_function = function (content)
						return content.show_chat_button and content.chat_button_hotspot.is_selected and content.chat_button_hotspot.is_hover
					end
				},
				{
					style_id = "profile_button_background",
					pass_type = "rect",
					content_check_function = function (content)
						return content.show_profile_button
					end
				},
				{
					texture_id = "button_frame",
					style_id = "profile_button_frame",
					pass_type = "texture",
					content_check_function = function (content)
						return content.show_profile_button
					end
				},
				{
					pass_type = "texture",
					style_id = "profile_button_hotspot",
					texture_id = "profile_button_texture",
					content_check_function = function (content)
						return content.show_profile_button
					end
				},
				{
					style_id = "profile_button_hotspot",
					pass_type = "hotspot",
					content_id = "profile_button_hotspot",
					content_check_function = function (content)
						return content.parent.show_profile_button and not content.disable_button
					end
				},
				{
					style_id = "tooltip_text",
					pass_type = "tooltip_text",
					text_id = "profile_tooltip_text",
					content_check_function = function (content)
						return content.show_profile_button and content.profile_button_hotspot.is_hover
					end
				}
			}
		},
		content = {
			kick_tooltip_text = "input_description_vote_kick_player",
			chat_tooltip_text_unmute = "input_description_unmute_chat",
			show_chat_button = false,
			show_profile_button = false,
			player_level = "*Level 0",
			profile_button_texture = "tab_menu_icon_05",
			host_texture = "host_icon",
			profile_tooltip_text = "input_description_show_profile",
			show_kick_button = false,
			player_name = "*Missing Name",
			is_local_player = false,
			voice_tooltip_text_unmute = "input_description_unmute_voice",
			voice_tooltip_text_mute = "input_description_mute_voice",
			chat_button_texture = "tab_menu_icon_02",
			voice_button_texture = "tab_menu_icon_01",
			button_frame = "reward_pop_up_item_frame",
			empty = true,
			chat_tooltip_text_mute = "input_description_mute_chat",
			show_ping = false,
			kick_button_texture = "tab_menu_icon_04",
			button_hotspot = {},
			frame = frame_settings.texture,
			shadow_frame = shadow_frame_settings.texture,
			hover_frame = hover_frame_settings.texture,
			empty_hover_frame = empty_hover_frame_settings.texture,
			empty_frame = empty_frame_settings.texture,
			open_slot_text = Localize("vs_lobby_slot_available"),
			chat_button_hotspot = {},
			kick_button_hotspot = {},
			voice_button_hotspot = {},
			profile_button_hotspot = {},
			insignia_main = {
				texture_id = "insignias_main_small",
				uvs = {
					{
						0,
						0
					},
					{
						1,
						1
					}
				}
			},
			insignia_addon = {
				texture_id = "insignias_addon_small",
				uvs = {
					{
						0,
						0
					},
					{
						1,
						1
					}
				}
			}
		},
		style = {
			empty_background = {
				color = {
					80,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					0
				}
			},
			frame = {
				texture_size = frame_settings.texture_size,
				texture_sizes = frame_settings.texture_sizes,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					3
				}
			},
			empty_frame = {
				texture_size = empty_frame_settings.texture_size,
				texture_sizes = empty_frame_settings.texture_sizes,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					2
				}
			},
			shadow_frame = {
				frame_margins = {
					-14,
					-14
				},
				texture_size = shadow_frame_settings.texture_size,
				texture_sizes = shadow_frame_settings.texture_sizes,
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					0
				}
			},
			hover_frame = {
				frame_margins = {
					-14,
					-14
				},
				texture_size = hover_frame_settings.texture_size,
				texture_sizes = hover_frame_settings.texture_sizes,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					2
				}
			},
			empty_hover_frame = {
				frame_margins = {
					-14,
					-14
				},
				texture_size = empty_hover_frame_settings.texture_size,
				texture_sizes = empty_hover_frame_settings.texture_sizes,
				color = {
					255,
					100,
					100,
					100
				},
				offset = {
					0,
					0,
					2
				}
			},
			background = {
				color = {
					127,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					0
				}
			},
			open_slot_text = {
				vertical_alignment = "center",
				upper_case = true,
				font_size = 24,
				horizontal_alignment = "center",
				word_wrap = true,
				font_type = "hell_shark_header",
				text_color = {
					255,
					60,
					60,
					60
				},
				offset = {
					0,
					0,
					2
				}
			},
			open_slot_text_shadow = {
				vertical_alignment = "center",
				upper_case = true,
				font_size = 24,
				horizontal_alignment = "center",
				word_wrap = true,
				font_type = "hell_shark_header",
				text_color = {
					255,
					0,
					0,
					0
				},
				offset = {
					2,
					-2,
					1
				}
			},
			player_avatar = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				texture_size = {
					size[2] - 6,
					size[2] - 6
				},
				offset = {
					20 + insignia_texture_size[1],
					0,
					1
				}
			},
			host_texture = {
				vertical_alignment = "top",
				horizontal_alignment = "right",
				offset = {
					-15,
					-5,
					2
				},
				texture_size = {
					40,
					40
				}
			},
			player_name = {
				vertical_alignment = "top",
				font_type = "arial",
				font_size = 22,
				horizontal_alignment = "left",
				text_color = team_color,
				offset = {
					120 + insignia_texture_size[1],
					-20,
					2
				}
			},
			player_level = {
				vertical_alignment = "top",
				font_type = "hell_shark",
				font_size = 22,
				horizontal_alignment = "left",
				text_color = Colors.get_color_table_with_alpha("font_default", 255),
				offset = {
					120 + insignia_texture_size[1],
					-50,
					2
				}
			},
			insignia_main = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				texture_size = insignia_texture_size,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					10,
					0,
					1
				}
			},
			insignia_addon = {
				vertical_alignment = "top",
				horizontal_alignment = "left",
				texture_size = insignia_texture_size,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					10,
					0,
					2
				}
			},
			party_color = {
				vertical_alignment = "center",
				horizontal_alignment = "right",
				texture_size = {
					5,
					size[2] - 10
				},
				color = {
					255,
					255,
					0,
					255
				},
				offset = {
					-5,
					0,
					5
				}
			},
			tooltip_text = {
				vertical_alignment = "top",
				max_width = 500,
				localize = true,
				horizontal_alignment = "left",
				font_size = 18,
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					0,
					20
				}
			},
			profile_button_background = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					-20 + 0 * -50,
					10,
					11
				}
			},
			profile_button_frame = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					128,
					128,
					128
				},
				offset = {
					-20 + 0 * -50,
					10,
					13
				}
			},
			profile_button_hotspot = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				area_size = {
					40,
					40
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-20 + 0 * -50,
					10,
					12
				}
			},
			voice_button_background = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					-120,
					10,
					13
				}
			},
			voice_chat_button_frame = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					128,
					128,
					128
				},
				offset = {
					-120,
					10,
					16
				}
			},
			voice_button_hotspot = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				area_size = {
					40,
					40
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-120,
					10,
					14
				}
			},
			voice_button_disabled = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					255,
					0,
					0
				},
				offset = {
					-120,
					10,
					15
				}
			},
			chat_button_background = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					-70,
					10,
					11
				}
			},
			chat_button_frame = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					128,
					128,
					128
				},
				offset = {
					-70,
					10,
					16
				}
			},
			chat_button_hotspot = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				area_size = {
					40,
					40
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-70,
					10,
					14
				}
			},
			chat_button_disabled = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					255,
					0,
					0
				},
				offset = {
					-70,
					10,
					15
				}
			},
			kick_button_background = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					-120,
					10,
					13
				}
			},
			kick_button_frame = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				color = {
					255,
					128,
					128,
					128
				},
				offset = {
					-120,
					10,
					16
				}
			},
			kick_button_hotspot = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					40,
					40
				},
				area_size = {
					40,
					40
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-120,
					10,
					14
				}
			},
			ping_texture = {
				vertical_alignment = "bottom",
				horizontal_alignment = "right",
				texture_size = {
					54,
					50
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-210,
					5,
					15
				}
			},
			ping_text = {
				horizontal_alignment = "right",
				font_size = 20,
				vertical_alignment = "bottom",
				dynamic_font_size = true,
				font_type = "arial",
				offset = {
					-255,
					13,
					3
				},
				text_color = Colors.get_table("font_default"),
				high_ping_color = Colors.get_table("crimson"),
				medium_ping_color = Colors.get_table("gold"),
				low_ping_color = Colors.get_table("lime_green")
			}
		}
	}
end

local animation_definitions = {
	on_enter = {
		{
			name = "entry",
			start_progress = 0,
			end_progress = 0.5,
			init = function (ui_scenegraph, scenegraph_def, widgets, params)
				local roll = math.random() < 0.01

				params.ease = roll and math.ease_out_elastic or math.easeOutCubic
				params.offset = roll and 100 or 200

				local s = params.offset

				ui_scenegraph.team_1.position[1] = scenegraph_def.team_1.position[1] - s
				ui_scenegraph.team_2.position[1] = scenegraph_def.team_2.position[1] + s
			end,
			update = function (ui_scenegraph, scenegraph_def, widgets, progress, params)
				local t = params.ease(progress)
				local s = (1 - t) * params.offset

				ui_scenegraph.team_1.position[1] = scenegraph_def.team_1.position[1] - s
				ui_scenegraph.team_2.position[1] = scenegraph_def.team_2.position[1] + s
			end,
			on_complete = function (ui_scenegraph, scenegraph_def, widgets, params)
				return
			end
		}
	}
}
local generic_input_actions = {
	default = {
		{
			input_action = "back",
			priority = 3,
			description_text = "input_description_back"
		}
	},
	switch_team = {
		actions = {
			{
				input_action = "switch_team",
				priority = 2,
				description_text = "Request Team Change",
				ignore_localization = true
			}
		}
	},
	force_start = {
		actions = {
			{
				input_action = "force_start",
				priority = 1,
				description_text = "Force Start Game",
				ignore_localization = true
			}
		}
	},
	force_start_switch_team = {
		actions = {
			{
				input_action = "force_start",
				priority = 1,
				description_text = "Force Start Game",
				ignore_localization = true
			},
			{
				input_action = "switch_team",
				priority = 2,
				description_text = "Switch Team",
				ignore_localization = true
			}
		}
	}
}

return {
	create_player_panel_widget = create_player_panel_widget,
	loading_spinner_definition = UIWidgets.create_loading_spinner("menu_root"),
	animation_definitions = animation_definitions,
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	host_widget_definitions = host_widget_definitions,
	generic_input_actions = generic_input_actions
}
