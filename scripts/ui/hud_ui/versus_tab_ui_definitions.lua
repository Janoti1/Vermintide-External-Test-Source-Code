local SIZE_X, SIZE_Y = 1920, 1080
local PLAYER_PANEL_SIZE = {
	620,
	160
}
local scenegraph_definition = {
	screen = {
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		},
		scale = not IS_WINDOWS and "hud_fit" or "fit"
	},
	level_name = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			400,
			60
		},
		position = {
			0,
			-200,
			10
		}
	},
	title_divider = {
		vertical_alignment = "center",
		parent = "level_name",
		horizontal_alignment = "center",
		size = {
			264,
			21
		},
		position = {
			0,
			-40,
			0
		}
	},
	sub_title = {
		vertical_alignment = "center",
		parent = "title_divider",
		horizontal_alignment = "center",
		size = {
			1600,
			60
		},
		position = {
			0,
			-40,
			0
		}
	},
	privacy_text = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "right",
		size = {
			1900,
			30
		},
		position = {
			-10,
			-10,
			10
		}
	},
	player_list_input_description = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			1900,
			60
		},
		position = {
			0,
			60,
			10
		}
	},
	vs_text = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			500,
			50
		},
		position = {
			0,
			0,
			10
		}
	},
	talent_tooltip = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			400,
			0
		},
		position = {
			0,
			0,
			20
		}
	},
	item_tooltip = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			400,
			0
		},
		position = {
			0,
			0,
			20
		}
	},
	objective = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			544,
			55
		},
		position = {
			0,
			-4,
			2
		}
	},
	score = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			302.4,
			117.6
		},
		position = {
			0,
			-60,
			10
		}
	},
	console_cursor = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			1920,
			1080
		},
		position = {
			0,
			0,
			-10
		}
	},
	team_1 = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			20,
			210,
			10
		}
	},
	team_1_icon = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			232,
			196
		},
		position = {
			-320,
			0,
			20
		}
	},
	team_1_name = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = {
			500,
			50
		},
		position = {
			28,
			105,
			3
		}
	},
	team_1_text = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = {
			500,
			40
		},
		position = {
			28,
			160,
			3
		}
	},
	team_1_side_text = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = {
			500,
			40
		},
		position = {
			28,
			40,
			3
		}
	},
	team_1_score = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			200,
			120
		},
		position = {
			-320,
			-60,
			3
		}
	},
	team_1_player_panel_1 = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			0,
			10
		}
	},
	team_1_player_panel_2 = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			-170,
			10
		}
	},
	team_1_player_panel_3 = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			-340,
			10
		}
	},
	team_1_player_panel_4 = {
		vertical_alignment = "top",
		parent = "team_1",
		horizontal_alignment = "left",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			-510,
			10
		}
	},
	team_1_player_frame_1 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_1",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_1_player_frame_2 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_2",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_1_player_frame_3 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_3",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_1_player_frame_4 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_4",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_1_player_insignia_1 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_1",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_1_player_insignia_2 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_2",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_1_player_insignia_3 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_3",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_1_player_insignia_4 = {
		vertical_alignment = "bottom",
		parent = "team_1_player_panel_4",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_1_player_ready_1 = {
		vertical_alignment = "center",
		parent = "team_1_player_panel_1",
		horizontal_alignment = "left",
		size = {
			50,
			55
		},
		position = {
			-80,
			0,
			1
		}
	},
	team_1_player_ready_2 = {
		vertical_alignment = "center",
		parent = "team_1_player_panel_2",
		horizontal_alignment = "left",
		size = {
			50,
			55
		},
		position = {
			-80,
			0,
			1
		}
	},
	team_1_player_ready_3 = {
		vertical_alignment = "center",
		parent = "team_1_player_panel_3",
		horizontal_alignment = "left",
		size = {
			50,
			55
		},
		position = {
			-80,
			0,
			1
		}
	},
	team_1_player_ready_4 = {
		vertical_alignment = "center",
		parent = "team_1_player_panel_4",
		horizontal_alignment = "left",
		size = {
			50,
			55
		},
		position = {
			-80,
			0,
			1
		}
	},
	team_2 = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "right",
		size = {
			0,
			0
		},
		position = {
			-20,
			210,
			10
		}
	},
	team_2_icon = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			232,
			196
		},
		position = {
			320,
			0,
			20
		}
	},
	team_2_name = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = {
			500,
			50
		},
		position = {
			-28,
			105,
			3
		}
	},
	team_2_text = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = {
			500,
			40
		},
		position = {
			-28,
			160,
			3
		}
	},
	team_2_side_text = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = {
			500,
			40
		},
		position = {
			-28,
			40,
			3
		}
	},
	team_2_score = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "center",
		size = {
			200,
			120
		},
		position = {
			320,
			-60,
			3
		}
	},
	team_2_player_panel_1 = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			0,
			10
		}
	},
	team_2_player_panel_2 = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			-170,
			10
		}
	},
	team_2_player_panel_3 = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			-340,
			10
		}
	},
	team_2_player_panel_4 = {
		vertical_alignment = "top",
		parent = "team_2",
		horizontal_alignment = "right",
		size = PLAYER_PANEL_SIZE,
		position = {
			0,
			-510,
			10
		}
	},
	team_2_player_frame_1 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_1",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_2_player_frame_2 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_2",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_2_player_frame_3 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_3",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_2_player_frame_4 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_4",
		horizontal_alignment = "left",
		size = {
			0,
			0
		},
		position = {
			128,
			69,
			3
		}
	},
	team_2_player_insignia_1 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_1",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_2_player_insignia_2 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_2",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_2_player_insignia_3 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_3",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_2_player_insignia_4 = {
		vertical_alignment = "bottom",
		parent = "team_2_player_panel_4",
		horizontal_alignment = "left",
		position = {
			-275,
			0,
			3
		}
	},
	team_2_player_ready_1 = {
		vertical_alignment = "center",
		parent = "team_2_player_panel_1",
		horizontal_alignment = "right",
		size = {
			50,
			55
		},
		position = {
			80,
			0,
			1
		}
	},
	team_2_player_ready_2 = {
		vertical_alignment = "center",
		parent = "team_2_player_panel_2",
		horizontal_alignment = "right",
		size = {
			50,
			55
		},
		position = {
			80,
			0,
			1
		}
	},
	team_2_player_ready_3 = {
		vertical_alignment = "center",
		parent = "team_2_player_panel_3",
		horizontal_alignment = "right",
		size = {
			50,
			55
		},
		position = {
			80,
			0,
			1
		}
	},
	team_2_player_ready_4 = {
		vertical_alignment = "center",
		parent = "team_2_player_panel_4",
		horizontal_alignment = "right",
		size = {
			50,
			55
		},
		position = {
			80,
			0,
			1
		}
	}
}
local level_name_style = {
	word_wrap = false,
	upper_case = false,
	localize = false,
	use_shadow = true,
	font_size = 50,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	dynamic_font_size = false,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2
	}
}
local sub_title_style = {
	word_wrap = true,
	upper_case = false,
	localize = false,
	use_shadow = true,
	font_size = 36,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	dynamic_font_size = false,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local team_name_1_style = {
	word_wrap = true,
	upper_case = true,
	localize = false,
	font_size = 98,
	use_shadow = true,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("local_player_team_lighter", 255),
	offset = {
		0,
		0,
		0
	}
}
local team_name_2_style = table.clone(team_name_1_style)

team_name_2_style.horizontal_alignment = "right"
team_name_2_style.text_color = Colors.get_color_table_with_alpha("opponent_team_lighter", 255)

local input_description_style = {
	font_size = 24,
	upper_case = true,
	localize = true,
	use_shadow = true,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark",
	text_color = Colors.get_table("white"),
	offset = {
		0,
		0,
		1
	}
}
local vs_text_style = {
	word_wrap = true,
	font_size = 82,
	localize = false,
	vertical_alignment = "center",
	horizontal_alignment = "center",
	use_shadow = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local team_1_text_style = {
	word_wrap = true,
	font_size = 32,
	localize = false,
	vertical_alignment = "center",
	horizontal_alignment = "left",
	use_shadow = true,
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("local_player_picking", 255),
	offset = {
		0,
		0,
		2
	}
}
local team_2_text_style = table.clone(team_1_text_style)

team_2_text_style.horizontal_alignment = "right"
team_2_text_style.text_color = Colors.get_color_table_with_alpha("opponent_team", 255)

local team_1_side_text_style = {
	word_wrap = false,
	upper_case = true,
	localize = false,
	font_size = 38,
	use_shadow = true,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		0,
		2
	}
}
local team_2_side_text_style = table.clone(team_1_side_text_style)

team_2_side_text_style.horizontal_alignment = "right"

function create_empty_frame_widget(scenegraph_id)
	local shadow_frame_style = "shadow_frame_02"
	local shadow_frame_settings = UIFrameSettings[shadow_frame_style]
	local hover_frame_style = "frame_outer_glow_04"
	local hover_frame_settings = UIFrameSettings[hover_frame_style]
	local empty_hover_frame_style = "frame_outer_glow_01"
	local empty_hover_frame_settings = UIFrameSettings[empty_hover_frame_style]
	local empty_frame_style = "frame_bevel_01"
	local empty_frame_settings = UIFrameSettings[empty_frame_style]

	return {
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "hotspot"
				},
				{
					pass_type = "texture_frame",
					style_id = "shadow_frame",
					texture_id = "shadow_frame",
					content_check_function = function (content)
						return content.empty
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "hover_frame",
					texture_id = "hover_frame",
					content_check_function = function (content)
						return not content.empty and content.hotspot.is_hover
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "empty_hover",
					texture_id = "empty_hover",
					content_check_function = function (content)
						return content.empty and content.hotspot.is_hover
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "empty_frame",
					texture_id = "empty_frame",
					content_check_function = function (content)
						return content.empty
					end
				}
			}
		},
		content = {
			empty = false,
			hotspot = {
				allow_multi_hover = true
			},
			shadow_frame = shadow_frame_settings.texture,
			hover_frame = hover_frame_settings.texture,
			empty_hover = empty_hover_frame_settings.texture,
			empty_frame = empty_frame_settings.texture
		},
		style = {
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
					255,
					255,
					255
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
			empty_hover = {
				frame_margins = {
					-14,
					-14
				},
				texture_size = empty_hover_frame_settings.texture_size,
				texture_sizes = empty_hover_frame_settings.texture_sizes,
				color = {
					255,
					151,
					151,
					151
				},
				offset = {
					0,
					0,
					3
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0
		}
	}
end

local widget_definitions = {
	level_name = UIWidgets.create_simple_text("level_name", "level_name", nil, nil, level_name_style),
	sub_title = UIWidgets.create_simple_text("sub_title", "sub_title", nil, nil, sub_title_style),
	background = UIWidgets.create_simple_rect("screen", {
		176,
		0,
		0,
		0
	}),
	title_divider = UIWidgets.create_simple_texture("divider_01_top", "title_divider"),
	objective_text = UIWidgets.create_mission_objective_text_widget_still("objective"),
	score = UIWidgets.create_objective_score_widget("score", scenegraph_definition.score.size),
	team_1_name = UIWidgets.create_simple_text("", "team_1_name", nil, nil, team_name_1_style),
	team_1_icon = UIWidgets.create_simple_texture("banner_hammers_local", "team_1_icon"),
	team_1_text = UIWidgets.create_simple_text(Localize("vs_lobby_your_team"), "team_1_text", nil, nil, team_1_text_style),
	team_1_side_text = UIWidgets.create_simple_text("", "team_1_side_text", nil, nil, team_1_side_text_style),
	team_2_name = UIWidgets.create_simple_text("", "team_2_name", nil, nil, team_name_2_style),
	team_2_icon = UIWidgets.create_simple_texture("banner_skulls_opponent", "team_2_icon"),
	team_2_text = UIWidgets.create_simple_text(Localize("vs_lobby_enemy_team"), "team_2_text", nil, nil, team_2_text_style),
	team_2_side_text = UIWidgets.create_simple_text("", "team_2_side_text", nil, nil, team_2_side_text_style),
	input_description_text = UIWidgets.create_simple_text("player_list_show_mouse_description", "player_list_input_description", nil, nil, input_description_style)
}
local animation_definitions = {
	on_enter = {
		{
			name = "entry",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_fraction = math.easeCubic(progress)

				params.render_settings.alpha_multiplier = anim_fraction
				ui_scenegraph.team_1.position[1] = scenegraph_definition.team_1.position[1] - (1 - anim_fraction) * 100
				ui_scenegraph.team_2.position[1] = scenegraph_definition.team_2.position[1] + (1 - anim_fraction) * 100
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	}
}

return {
	create_empty_frame_widget = create_empty_frame_widget,
	animation_definitions = animation_definitions,
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	console_cursor_definition = UIWidgets.create_console_cursor("console_cursor"),
	item_tooltip = UIWidgets.create_simple_item_presentation("item_tooltip", UISettings.console_tooltip_pass_definitions)
}