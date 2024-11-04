local RETAINED_MODE = false
local slider_length = 1600
local hero_group_width = 318
local hero_group_spacing = 60
local player_name_box_size = {
	474,
	46
}
local hero_portrait_size = {
	70,
	80
}
local scenegraph_position = {
	screen = {
		0,
		0,
		UILayer.default
	},
	player_name_box_1 = {
		-720,
		250,
		20
	},
	player_name_box_2 = {
		-240,
		250,
		20
	},
	player_name_box_3 = {
		240,
		250,
		20
	},
	player_name_box_4 = {
		720,
		250,
		20
	},
	bottom_bar = {
		0,
		0,
		10
	},
	menu_root = {
		0,
		0,
		0
	},
	hero_roster = {
		0,
		150,
		2
	},
	hero_group_1 = {
		-(hero_group_width + hero_group_spacing) * 2,
		0,
		1
	},
	hero_group_2 = {
		-(hero_group_width + hero_group_spacing),
		0,
		1
	},
	hero_group_3 = {
		0,
		0,
		1
	},
	hero_group_4 = {
		hero_group_width + hero_group_spacing,
		0,
		1
	},
	hero_group_5 = {
		(hero_group_width + hero_group_spacing) * 2,
		0,
		1
	},
	background = {
		0,
		0,
		1
	},
	progress_bar_edge_bottom = {
		0,
		-2,
		15
	},
	progress_bar_edge_top = {
		0,
		10,
		15
	},
	progress_bar = {
		0,
		0,
		1
	},
	progress_bar_anchor = {
		0,
		234,
		18
	},
	progress_bar_end_glow = {
		28,
		0,
		0
	},
	progress_bar_passive = {
		0,
		0,
		4
	},
	progress_bar_rect = {
		0,
		0,
		-1
	},
	progress_point = {
		0,
		0,
		100
	},
	countdown_timer = {
		0,
		130,
		3
	},
	selected_career_title = {
		50,
		-50,
		3
	},
	selected_hero_title = {
		70,
		-190,
		3
	},
	player_info_text = {
		0,
		-15,
		10
	},
	player_info_text_background = {
		0,
		200,
		10
	},
	local_player_picking_frame = {
		0,
		0,
		200
	},
	hero_name_text_anchor = {
		50,
		-75,
		10
	},
	parading_info = {
		0,
		-200,
		10
	}
}
local scenegraph_size = {
	screen = {
		1920,
		1080
	},
	player_name_box_1 = player_name_box_size,
	player_name_box_2 = player_name_box_size,
	player_name_box_3 = player_name_box_size,
	player_name_box_4 = player_name_box_size,
	bottom_bar = {
		1920,
		250
	},
	menu_root = {
		1920,
		1080
	},
	hero_roster = {
		1920,
		0
	},
	hero_group_1 = {
		hero_group_width,
		91
	},
	hero_group_2 = {
		hero_group_width,
		91
	},
	hero_group_3 = {
		hero_group_width,
		91
	},
	hero_group_4 = {
		hero_group_width,
		91
	},
	hero_group_5 = {
		hero_group_width,
		91
	},
	background = {
		1920,
		1080
	},
	progress_bar_edge_bottom = {
		1920,
		2
	},
	progress_bar_edge_top = {
		1920,
		2
	},
	progress_bar = {
		1920,
		10
	},
	progress_bar_end_glow = {
		100,
		10
	},
	progress_bar_passive = {
		1920,
		10
	},
	progress_bar_rect = {
		1920,
		10
	},
	progress_point = {
		0,
		0
	},
	countdown_timer = {
		1900,
		300
	},
	selected_career_title = {
		1900,
		180
	},
	selected_hero_title = {
		1900,
		180
	},
	player_info_text = {
		800,
		88
	},
	player_info_text_background = {
		1920,
		88
	},
	local_player_picking_frame = {
		1920,
		1080
	},
	hero_name_text_anchor = {
		0,
		0
	},
	background_image_heroes = {
		892.8000000000001,
		1231.2
	},
	background_image_dark_pact = {
		873,
		927
	},
	parading_info = {
		640,
		120
	}
}
local scenegraph_definition = {
	screen = {
		scale = "fit",
		size = scenegraph_size.screen,
		position = scenegraph_position.screen
	},
	menu_root = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = scenegraph_size.menu_root,
		position = scenegraph_position.menu_root
	},
	bottom_bar = {
		vertical_alignment = "bottom",
		scale = "fit_width",
		horizontal_alignment = "center",
		size = scenegraph_size.bottom_bar,
		position = scenegraph_position.bottom_bar
	},
	player_name_box_1 = {
		vertical_alignment = "bottom",
		parent = "bottom_bar",
		horizontal_alignment = "center",
		size = scenegraph_size.player_name_box_1,
		position = scenegraph_position.player_name_box_1
	},
	player_name_box_2 = {
		vertical_alignment = "bottom",
		parent = "bottom_bar",
		horizontal_alignment = "center",
		size = scenegraph_size.player_name_box_2,
		position = scenegraph_position.player_name_box_2
	},
	player_name_box_3 = {
		vertical_alignment = "bottom",
		parent = "bottom_bar",
		horizontal_alignment = "center",
		size = scenegraph_size.player_name_box_3,
		position = scenegraph_position.player_name_box_3
	},
	player_name_box_4 = {
		vertical_alignment = "bottom",
		parent = "bottom_bar",
		horizontal_alignment = "center",
		size = scenegraph_size.player_name_box_4,
		position = scenegraph_position.player_name_box_4
	},
	hero_roster = {
		vertical_alignment = "bottom",
		parent = "bottom_bar",
		horizontal_alignment = "center",
		size = scenegraph_size.hero_roster,
		position = scenegraph_position.hero_roster
	},
	hero_group_1 = {
		vertical_alignment = "center",
		parent = "hero_roster",
		horizontal_alignment = "center",
		size = scenegraph_size.hero_group_1,
		position = scenegraph_position.hero_group_1
	},
	hero_group_2 = {
		vertical_alignment = "center",
		parent = "hero_roster",
		horizontal_alignment = "center",
		size = scenegraph_size.hero_group_2,
		position = scenegraph_position.hero_group_2
	},
	hero_group_3 = {
		vertical_alignment = "center",
		parent = "hero_roster",
		horizontal_alignment = "center",
		size = scenegraph_size.hero_group_3,
		position = scenegraph_position.hero_group_3
	},
	hero_group_4 = {
		vertical_alignment = "center",
		parent = "hero_roster",
		horizontal_alignment = "center",
		size = scenegraph_size.hero_group_4,
		position = scenegraph_position.hero_group_4
	},
	hero_group_5 = {
		vertical_alignment = "center",
		parent = "hero_roster",
		horizontal_alignment = "center",
		size = scenegraph_size.hero_group_5,
		position = scenegraph_position.hero_group_5
	},
	background = {
		vertical_alignment = "bottom",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = scenegraph_size.background,
		position = scenegraph_position.background
	},
	progress_bar_anchor = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		size = scenegraph_size.progress_bar,
		position = scenegraph_position.progress_bar_anchor
	},
	progress_bar = {
		vertical_alignment = "bottom",
		parent = "progress_bar_anchor",
		size = scenegraph_size.progress_bar,
		position = scenegraph_position.progress_bar
	},
	progress_bar_edge_bottom = {
		vertical_alignment = "bottom",
		parent = "progress_bar_anchor",
		size = scenegraph_size.progress_bar_edge_bottom,
		position = scenegraph_position.progress_bar_edge_bottom
	},
	progress_bar_edge_top = {
		vertical_alignment = "bottom",
		parent = "progress_bar_anchor",
		size = scenegraph_size.progress_bar_edge_top,
		position = scenegraph_position.progress_bar_edge_top
	},
	progress_bar_end_glow = {
		vertical_alignment = "center",
		parent = "progress_bar",
		horizontal_alignment = "right",
		size = scenegraph_size.progress_bar_end_glow,
		position = scenegraph_position.progress_bar_end_glow
	},
	progress_bar_passive = {
		vertical_alignment = "bottom",
		parent = "progress_bar",
		size = scenegraph_size.progress_bar_passive,
		position = scenegraph_position.progress_bar_passive
	},
	progress_bar_rect = {
		vertical_alignment = "bottom",
		parent = "progress_bar",
		size = scenegraph_size.progress_bar_rect,
		position = scenegraph_position.progress_bar_rect
	},
	progress_point = {
		vertical_alignment = "center",
		parent = "progress_bar_rect",
		horizontal_alignment = "left",
		size = scenegraph_size.progress_point,
		position = scenegraph_position.progress_point
	},
	countdown_timer = {
		vertical_alignment = "center",
		parent = "screen",
		horizontal_alignment = "center",
		size = scenegraph_size.countdown_timer,
		position = scenegraph_position.countdown_timer
	},
	selected_career_title = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = scenegraph_size.selected_career_title,
		position = scenegraph_position.selected_career_title
	},
	selected_hero_title = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = scenegraph_size.selected_hero_title,
		position = scenegraph_position.selected_hero_title
	},
	player_info_text_background = {
		vertical_alignment = "bottom",
		scale = "fit_width",
		horizontal_alignment = "center",
		size = scenegraph_size.player_info_text_background,
		position = scenegraph_position.player_info_text_background
	},
	player_info_text = {
		vertical_alignment = "bottom",
		parent = "player_info_text_background",
		horizontal_alignment = "center",
		size = scenegraph_size.player_info_text,
		position = scenegraph_position.player_info_text
	},
	local_player_picking_frame = {
		vertical_alignment = "bottom",
		scale = "fit",
		horizontal_alignment = "center",
		size = scenegraph_size.local_player_picking_frame,
		position = scenegraph_position.local_player_picking_frame
	},
	hero_name_text_anchor = {
		vertical_alignment = "top",
		parent = "screen",
		horizontal_alignment = "left",
		size = scenegraph_size.hero_name_text_anchor,
		position = scenegraph_position.hero_name_text_anchor
	},
	parading_info = {
		vertical_alignment = "center",
		parent = "menu_root",
		horizontal_alignment = "center",
		size = scenegraph_size.parading_info,
		position = scenegraph_position.parading_info
	}
}

local function create_progress_marker(scenegraph_id)
	return {
		element = {
			passes = {
				{
					texture_id = "background",
					style_id = "background",
					pass_type = "texture"
				},
				{
					texture_id = "glow",
					style_id = "glow",
					pass_type = "texture",
					content_check_function = function (content)
						return content.highlight and content.is_local_player and not content.done
					end
				},
				{
					texture_id = "glow_done",
					style_id = "glow_done",
					pass_type = "texture",
					content_check_function = function (content)
						return content.done
					end
				},
				{
					style_id = "glow_done_animation",
					pass_type = "texture",
					texture_id = "glow_done",
					content_check_function = function (content)
						return content.done
					end,
					content_change_function = function (content, style, ui_animations, dt)
						local done = content.done
						local anim_progress = style.anim_progress

						if done then
							anim_progress = style.anim_progress or 0

							local texture_size = style.texture_size
							local default_size = style.default_size
							local size_multiplier = 2
							local ease_progress = math.easeOutCubic(anim_progress)

							texture_size[1] = default_size[1] + default_size[1] * size_multiplier * ease_progress
							texture_size[2] = default_size[2] + default_size[2] * size_multiplier * ease_progress

							local color = style.color

							color[1] = 255 * (1 - ease_progress)
							style.anim_progress = math.min(anim_progress + dt, 1)
						elseif anim_progress then
							style.anim_progress = nil
						end
					end
				}
			}
		},
		content = {
			is_local_player = false,
			background = "versus_hero_selection_skull",
			glow = "versus_hero_selection_skull_eyes_glow",
			highlight = false,
			glow_done = "versus_hero_selection_skull_eyes_glow"
		},
		style = {
			background = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					36,
					50
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-1,
					0,
					1
				}
			},
			glow = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					48,
					55
				},
				color = {
					255,
					0,
					136,
					255
				},
				offset = {
					-1,
					5,
					2
				}
			},
			glow_done = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					48,
					55
				},
				color = {
					255,
					255,
					123,
					0
				},
				offset = {
					-1,
					5,
					3
				}
			},
			glow_done_animation = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				texture_size = {
					48,
					55
				},
				default_size = {
					48,
					55
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					-1,
					0,
					3
				}
			}
		},
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

local function create_roster_hero_widget(scenegraph_id, size)
	local frame_style = "versus_hero_selection_hero_portrait_frame"
	local frame_settings = UIFrameSettings[frame_style]
	local frame_width = frame_settings.texture_sizes.horizontal[2]
	local shadow_frame_style = "shadow_frame_02"
	local shadow_frame_settings = UIFrameSettings[shadow_frame_style]
	local shadow_frame_width = shadow_frame_settings.texture_sizes.horizontal[2]

	return {
		alpha_multiplier = 1,
		element = {
			passes = {
				{
					pass_type = "hotspot",
					content_id = "button_hotspot"
				},
				{
					texture_id = "portrait",
					style_id = "portrait",
					pass_type = "texture"
				},
				{
					texture_id = "lock_texture",
					style_id = "lock_texture",
					pass_type = "texture",
					content_check_function = function (content)
						return content.locked
					end
				},
				{
					texture_id = "lock_texture",
					style_id = "lock_texture_shadow",
					pass_type = "texture",
					content_check_function = function (content)
						return content.locked
					end
				},
				{
					texture_id = "selected_texture",
					style_id = "local_player_selected_texture",
					pass_type = "texture"
				},
				{
					texture_id = "selected_texture",
					style_id = "other_player_selected_texture",
					pass_type = "texture"
				},
				{
					pass_type = "texture_frame",
					style_id = "frame_passive",
					texture_id = "frame_passive",
					content_check_function = function (content)
						return content.locked or content.taken or content.other_picking
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "frame_passive",
					texture_id = "frame_passive",
					content_check_function = function (content)
						return content.locked or content.taken or content.other_picking
					end
				},
				{
					pass_type = "texture_frame",
					style_id = "local_player_frame",
					texture_id = "local_player_frame",
					content_check_function = function (content)
						return not content.locked and not content.taken and not content.other_picking
					end
				},
				{
					pass_type = "texture",
					style_id = "other_hover",
					texture_id = "other_hover",
					content_check_function = function (content)
						return content.hovered_by_other and not content.button_hotspot.is_hover
					end
				},
				{
					pass_type = "texture",
					style_id = "local_player_select_frame",
					texture_id = "local_player_select_frame",
					content_check_function = function (content)
						return content.button_hotspot.is_hover or content.gamepad_selected
					end
				}
			}
		},
		content = {
			portrait = "icons_placeholder",
			hovered_by_other = false,
			selected_texture = "versus_hero_selection_hero_selected_effect",
			lock_texture = "hero_icon_locked_gold",
			other_hover = "versus_hero_selection_frame",
			taken_id = 1,
			other_picking = true,
			gamepad_selected = false,
			taken = false,
			local_player_select_frame = "versus_hero_selection_frame",
			button_hotspot = {},
			local_player_frame = frame_settings.texture,
			frame_passive = shadow_frame_settings.texture,
			size = size
		},
		style = {
			portrait = {
				size = size,
				default_size = size,
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					1
				},
				default_offset = {
					0,
					0,
					1
				}
			},
			lock_texture = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					50,
					57
				},
				default_size = {
					50,
					57
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					(size[1] - 50) / 2,
					(size[2] - 57) / 2,
					5
				},
				default_offset = {
					(size[1] - 50) / 2,
					(size[2] - 57) / 2,
					5
				}
			},
			lock_texture_shadow = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					50,
					57
				},
				default_size = {
					50,
					57
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					(size[1] - 50) / 2 + 2,
					(size[2] - 57) / 2 - 2,
					4
				},
				default_offset = {
					(size[1] - 50) / 2 + 2,
					(size[2] - 57) / 2 - 2,
					4
				}
			},
			local_player_selected_texture = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					size[1],
					size[2] - 2
				},
				default_size = {
					size[1],
					size[2] - 2
				},
				color = Colors.get_color_table_with_alpha("local_player_picking", 255),
				offset = {
					0,
					0,
					2
				},
				default_offset = {
					0,
					0,
					2
				}
			},
			other_player_selected_texture = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					size[1],
					size[2] - 2
				},
				default_size = {
					size[1],
					size[2] - 2
				},
				color = Colors.get_color_table_with_alpha("other_player_picking", 255),
				offset = {
					0,
					0,
					2
				},
				default_offset = {
					0,
					0,
					2
				}
			},
			local_player_frame = {
				size = {
					size[1] - 2,
					size[2] - 2
				},
				default_size = {
					size[1] - 2,
					size[2] - 2
				},
				texture_size = frame_settings.texture_size,
				texture_sizes = frame_settings.texture_sizes,
				frame_margins = {
					-frame_width,
					-frame_width
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					4
				},
				default_offset = {
					0,
					0,
					4
				}
			},
			frame_passive = {
				size = size,
				default_size = size,
				texture_size = shadow_frame_settings.texture_size,
				texture_sizes = shadow_frame_settings.texture_sizes,
				frame_margins = {
					-shadow_frame_width,
					-shadow_frame_width
				},
				color = {
					255,
					0,
					0,
					0
				},
				offset = {
					0,
					0,
					4
				},
				default_offset = {
					0,
					0,
					4
				}
			},
			local_player_select_frame = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					size[1] + 16,
					size[2] + 20
				},
				default_size = {
					size[1] + 16,
					size[2] + 20
				},
				color = Colors.get_color_table_with_alpha("local_player_picking", 255),
				offset = {
					-9,
					-10,
					21
				},
				default_offset = {
					-10,
					-10,
					21
				}
			},
			other_hover = {
				vertical_alignment = "bottom",
				horizontal_alignment = "left",
				texture_size = {
					size[1] + 16,
					size[2] + 20
				},
				default_size = {
					size[1] + 16,
					size[2] + 20
				},
				color = Colors.get_color_table_with_alpha("other_player_picking", 255),
				offset = {
					-9,
					-10,
					21
				},
				default_offset = {
					-10,
					-10,
					21
				}
			}
		},
		offset = {
			0,
			0,
			0
		},
		scenegraph_id = scenegraph_id
	}
end

local function create_hero_roster_detail_widget(scenegraph_id)
	local widget = {
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "detail_texture",
					texture_id = "detail_texture"
				},
				{
					style_id = "hero_name",
					pass_type = "text",
					text_id = "hero_name",
					content_change_function = function (content, style)
						if content.taken then
							style.text_color = {
								255,
								76,
								35,
								14
							}
						end
					end
				},
				{
					style_id = "available_text",
					pass_type = "text",
					text_id = "available_text",
					content_check_function = function (content)
						return content.side == "dark_pact"
					end
				}
			}
		},
		content = {
			available_text = "-/-",
			side = "heroes",
			detail_texture = "versus_hero_selection_divider",
			hero_name = "HERO",
			taken = false,
			enemy_role = "-"
		},
		style = {
			detail_texture = {
				vertical_alignment = "bottom",
				horizontal_alignment = "center",
				texture_size = {
					256,
					28.8
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					1
				}
			},
			hero_name = {
				word_wrap = true,
				upper_case = true,
				localize = false,
				dynamic_font_size_word_wrap = true,
				font_size = 25,
				horizontal_alignment = "center",
				vertical_alignment = "bottom",
				use_shadow = true,
				font_type = "hell_shark_header",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					-30,
					2
				},
				shadow_offset = {
					1,
					1,
					0
				}
			},
			available_text = {
				word_wrap = true,
				upper_case = true,
				localize = false,
				dynamic_font_size_word_wrap = true,
				font_size = 25,
				horizontal_alignment = "center",
				vertical_alignment = "bottom",
				use_shadow = true,
				font_type = "hell_shark_header",
				text_color = Colors.get_color_table_with_alpha("green", 255),
				offset = {
					100,
					-30,
					3
				},
				shadow_offset = {
					1,
					1,
					0
				}
			}
		},
		offset = {
			0,
			-25,
			100
		},
		scenegraph_id = scenegraph_id
	}

	return widget
end

local function create_hero_roster_widget_defitions()
	local roster_hero_widgets = {}
	local hero_groups = {
		4,
		4,
		4,
		4,
		4
	}
	local hero_roster_detail_widgets = {}

	for i = 1, #hero_groups do
		local num_careers = hero_groups[i]
		local parent_group = "hero_group_" .. i
		local parent = scenegraph_definition[parent_group]
		local border_wid = 10
		local group_wid = parent.size[1] - border_wid / 2

		roster_hero_widgets[i] = {}

		local detail_widget = create_hero_roster_detail_widget("hero_group_" .. i)

		hero_roster_detail_widgets[i] = detail_widget

		for j = 1, num_careers do
			local name = "hero_root_" .. i .. "_" .. j

			scenegraph_definition[name] = {
				vertical_alignment = "center",
				horizontal_alignment = "left",
				parent = parent_group,
				size = {
					70,
					80
				},
				position = {
					0 + (j - 1) * 77,
					0,
					1
				}
			}
			roster_hero_widgets[i][j] = create_roster_hero_widget(name, hero_portrait_size)
		end
	end

	return roster_hero_widgets, hero_roster_detail_widgets
end

local function create_player_box_widget(scenegraph_id, offset, size)
	local size = size or scenegraph_definition[scenegraph_id].size
	local offset = offset or {
		0,
		0,
		11
	}
	local frame_style = "menu_frame_12"
	local frame_settings = UIFrameSettings[frame_style]
	local frame_width = frame_settings.texture_sizes.horizontal[2]
	local mute_button_frame_settings = UIFrameSettings.button_frame_02
	local widget = {
		element = {
			passes = {
				{
					pass_type = "tiled_texture",
					style_id = "background",
					texture_id = "background"
				},
				{
					pass_type = "texture_frame",
					style_id = "frame",
					texture_id = "frame"
				},
				{
					style_id = "player_name",
					pass_type = "text",
					text_id = "player_name"
				},
				{
					pass_type = "texture",
					style_id = "mute_background_fade",
					texture_id = "mute_background_fade",
					content_check_function = function (content)
						local is_player = content.is_player

						return content.is_player and not content.is_local_player
					end
				},
				{
					texture_id = "mute_button_frame",
					style_id = "mute_button_frame",
					pass_type = "texture_frame",
					content_check_function = function (content)
						local is_player = content.is_player

						return content.is_player and not content.is_local_player
					end
				},
				{
					pass_type = "texture",
					style_id = "mute_icon",
					texture_id = "mute_icon",
					content_check_function = function (content)
						local is_player = content.is_player

						return content.is_player and not content.is_local_player
					end
				},
				{
					pass_type = "texture",
					style_id = "mute_icon_hovered",
					texture_id = "mute_icon",
					content_check_function = function (content)
						return content.is_player and not content.is_local_player and content.hotspot.is_hover
					end
				},
				{
					pass_type = "texture",
					style_id = "mute_icon_muted",
					texture_id = "mute_icon_muted",
					content_check_function = function (content)
						return content.is_player and not content.is_local_player and content.muted
					end
				},
				{
					style_id = "mute_icon",
					pass_type = "hotspot",
					content_id = "hotspot",
					content_check_function = function (content)
						return content.parent.is_player and not content.parent.is_local_player
					end
				}
			}
		},
		content = {
			mute_icon_muted = "tab_menu_icon_03",
			player_name = "BOT",
			mute_background_fade = "button_bg_fade",
			is_player = false,
			muted = false,
			is_local_player = false,
			background = "item_tooltip_background",
			mute_icon = "tab_menu_icon_01",
			mute_button_frame = mute_button_frame_settings.texture,
			frame = frame_settings.texture,
			hotspot = {}
		},
		style = {
			background = {
				vertical_alignment = "center",
				masked = true,
				horizontal_alignment = "center",
				texture_size = player_name_box_size,
				texture_tiling_size = {
					256,
					256
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					0,
					0,
					1
				}
			},
			frame = {
				size = {
					size[1] - 6,
					size[2] - 6
				},
				default_size = size,
				texture_size = frame_settings.texture_size,
				texture_sizes = frame_settings.texture_sizes,
				frame_margins = {
					-frame_width - 2,
					-frame_width - 2
				},
				color = {
					255,
					255,
					255,
					255
				},
				offset = {
					3,
					3,
					4
				},
				default_offset = {
					3,
					3,
					4
				}
			},
			player_name = {
				word_wrap = true,
				upper_case = false,
				localize = false,
				dynamic_font_size_word_wrap = true,
				font_size = 25,
				horizontal_alignment = "center",
				vertical_alignment = "center",
				use_shadow = true,
				font_type = "hell_shark",
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					0,
					8
				},
				shadow_offset = {
					1,
					1,
					0
				}
			},
			mute_background_fade = {
				size = {
					42,
					42
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					scenegraph_definition[scenegraph_id].size[1] - 57,
					3,
					8
				}
			},
			mute_button_frame = {
				size = {
					42,
					42
				},
				texture_size = mute_button_frame_settings.texture_size,
				texture_sizes = mute_button_frame_settings.texture_sizes,
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					scenegraph_definition[scenegraph_id].size[1] - 57,
					3,
					8
				}
			},
			mute_icon = {
				size = {
					38,
					38
				},
				color = Colors.get_color_table_with_alpha("white", 200),
				offset = {
					scenegraph_definition[scenegraph_id].size[1] - 55,
					5,
					8
				}
			},
			mute_icon_hovered = {
				size = {
					38,
					38
				},
				color = Colors.get_color_table_with_alpha("white", 250),
				offset = {
					scenegraph_definition[scenegraph_id].size[1] - 55,
					5,
					9
				}
			},
			mute_icon_muted = {
				size = {
					38,
					38
				},
				color = Colors.get_color_table_with_alpha("red", 250),
				offset = {
					scenegraph_definition[scenegraph_id].size[1] - 55,
					5,
					10
				}
			}
		},
		scenegraph_id = scenegraph_id,
		offset = offset
	}

	return widget
end

local box_size = {
	480,
	80
}

local function create_player_name_box_widgets()
	local name_box_widgets = {}
	local num_players = 4

	for i = 1, num_players do
		local name = "player_name_box_" .. i
		local widget_def = create_player_box_widget(name)

		name_box_widgets[#name_box_widgets + 1] = widget_def
	end

	return name_box_widgets
end

local function create_your_turn_text_widget(scenegraph_id)
	local widget = {
		element = {
			passes = {
				{
					style_id = "text",
					pass_type = "text",
					text_id = "text"
				},
				{
					style_id = "arrow_texture",
					texture_id = "arrow_texture",
					pass_type = "texture",
					content_change_function = function (content, style)
						style.color[1] = 165 + 95 * math.sin(Managers.time:time("ui") * 5) * 0.75
					end
				}
			}
		},
		content = {
			text = "versus_hero_selection_view_you",
			arrow_texture = "turn_arrow"
		},
		style = {
			text = {
				font_size = 120,
				upper_case = true,
				localize = true,
				word_wrap = false,
				horizontal_alignment = "center",
				use_shadow = true,
				vertical_alignment = "center",
				font_type = "hell_shark_header",
				size = {
					100,
					100
				},
				text_color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					40,
					2
				},
				shadow_offset = {
					1,
					1,
					0
				}
			},
			arrow_texture = {
				size = {
					83.2,
					26.650000000000002
				},
				color = Colors.get_color_table_with_alpha("local_player_picking", 255),
				offset = {
					0,
					25,
					4
				}
			}
		},
		offset = {
			player_name_box_size[1] * 0.5 - 50,
			30,
			50
		},
		scenegraph_id = scenegraph_id
	}

	return widget
end

local function create_skill_info_widget(scenegraph_id, skill_type, skill_icon, skill_name)
	local skill_icon = skill_icon or "icons_placeholder"
	local skill_type = skill_type or "n/a"
	local skill_name = skill_name or "n/a"
	local widget = {
		element = {
			passes = {
				{
					pass_type = "texture",
					style_id = "skill_icon",
					texture_id = "skill_icon"
				},
				{
					pass_type = "texture",
					style_id = "icon_frame",
					texture_id = "icon_frame"
				},
				{
					style_id = "skill_type",
					pass_type = "text",
					text_id = "skill_type"
				},
				{
					style_id = "skill_name",
					pass_type = "text",
					text_id = "skill_name"
				}
			}
		},
		content = {
			icon_frame = "icon_talent_frame",
			skill_icon = skill_icon,
			skill_type = skill_type,
			skill_name = skill_name
		},
		style = {
			skill_icon = {
				size = {
					64,
					64
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					-32,
					5
				}
			},
			icon_frame = {
				size = {
					64,
					64
				},
				color = Colors.get_color_table_with_alpha("white", 255),
				offset = {
					0,
					-32,
					6
				}
			},
			skill_type = {
				word_wrap = false,
				font_size = 20,
				localize = false,
				use_shadow = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				font_type = "hell_shark",
				size = {
					100,
					25
				},
				text_color = Colors.get_color_table_with_alpha("font_default", 255),
				offset = {
					75,
					0,
					2
				},
				shadow_offset = {
					1,
					1,
					0
				}
			},
			skill_name = {
				word_wrap = false,
				font_size = 24,
				localize = false,
				use_shadow = true,
				horizontal_alignment = "left",
				vertical_alignment = "center",
				font_type = "hell_shark",
				size = {
					100,
					25
				},
				text_color = Colors.get_color_table_with_alpha("font_title", 255),
				offset = {
					75,
					-24,
					2
				},
				shadow_offset = {
					1,
					1,
					0
				}
			}
		},
		offset = {
			0,
			0,
			10
		},
		scenegraph_id = scenegraph_id
	}

	return widget
end

generic_input_actions = {
	default = {
		actions = {
			{
				input_action = "d_horizontal",
				priority = 1,
				description_text = "input_description_navigate",
				ignore_keybinding = true
			},
			{
				input_action = "confirm",
				priority = 2,
				description_text = "input_description_select_character"
			},
			{
				input_action = "cycle_next",
				priority = 3,
				description_text = "input_description_next_hero"
			},
			{
				input_action = "cycle_previous",
				priority = 4,
				description_text = "input_description_previous_hero"
			}
		}
	}
}

local animation_definitions = {
	on_enter = {
		{
			name = "fade_in",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	on_exit = {
		{
			name = "fade_out",
			start_progress = 0,
			end_progress = 1,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = 1 - anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	transition_to_selection = {
		{
			name = "fade_out_startup",
			start_progress = 0,
			end_progress = 0.4,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local self = params.self
				local widgets_by_name = self._widgets_by_name
				local countdown_timer = widgets_by_name.countdown_timer
				local your_turn_indicator = widgets_by_name.your_turn_indicator_text
				local anim_progress = math.easeOutCubic(progress)

				countdown_timer.alpha_multiplier = 1 - anim_progress

				local your_turn_indicator_style = your_turn_indicator.style

				your_turn_indicator_style.text.text_color[1] = 255 * (1 - anim_progress)
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		},
		{
			name = "fade_in_top_details",
			start_progress = 0,
			end_progress = 0.4,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local self = params.self
				local top_detail_widgets = self._top_detail_widgets
				local anim_progress = math.easeOutCubic(progress)

				for _, widget in ipairs(top_detail_widgets) do
					widget.alpha_multiplier = anim_progress
				end
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	transition_to_team_parading = {
		{
			name = "fade_out_hero_selection",
			start_progress = 0,
			end_progress = 0.4,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local self = params.self
				local anim_progress = math.easeOutCubic(progress)

				for _, widget in ipairs(self._other_widgets) do
					if widget.alpha_multiplier ~= 0 then
						widget.alpha_multiplier = 1 - anim_progress
					end
				end

				for _, widget in ipairs(self._hero_group_widgets) do
					widget.alpha_multiplier = 1 - anim_progress
				end

				for _, widget in ipairs(self._hero_group_detail_widgets) do
					widget.alpha_multiplier = 1 - anim_progress
				end

				for _, widget in ipairs(self._player_name_box_widgets) do
					widget.alpha_multiplier = 1 - anim_progress
				end

				for _, widget in ipairs(self._top_detail_widgets) do
					widget.alpha_multiplier = 1 - anim_progress
				end
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end
		}
	},
	name_box_fade_to_black = {
		{
			name = "fade_to_black",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widget, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widget, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local new_value = 155 + 100 * (1 - anim_progress)
				local style = widget.style.background

				style.color = {
					255,
					new_value,
					new_value,
					new_value
				}
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widget, params)
				return
			end
		}
	},
	name_box_fade_to_gray = {
		{
			name = "fade_to_gray",
			start_progress = 0,
			end_progress = 0.3,
			init = function (ui_scenegraph, scenegraph_definition, widget, params)
				return
			end,
			update = function (ui_scenegraph, scenegraph_definition, widget, progress, params)
				local anim_progress = math.easeOutCubic(progress)
				local new_value = 255 * anim_progress
				local style = widget.style.background

				style.color = {
					255,
					new_value,
					new_value,
					new_value
				}
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widget, params)
				return
			end
		}
	}
}
local selected_career_title_style = {
	word_wrap = true,
	upper_case = true,
	localize = false,
	dynamic_font_size_word_wrap = true,
	font_size = 160,
	horizontal_alignment = "left",
	vertical_alignment = "top",
	use_shadow = true,
	font_type = "hell_shark_header",
	text_color = {
		50,
		255,
		255,
		255
	},
	offset = {
		0,
		0,
		2
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local countdown_timer_style = {
	word_wrap = true,
	upper_case = true,
	localize = false,
	font_size = 400,
	use_shadow = true,
	horizontal_alignment = "center",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		0,
		0,
		2
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local selected_hero_title_style = {
	word_wrap = true,
	font_size = 70,
	localize = false,
	dynamic_font_size_word_wrap = true,
	use_shadow = true,
	horizontal_alignment = "left",
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = {
		50,
		180,
		180,
		180
	},
	offset = {
		0,
		0,
		2
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local team_text_style = {
	word_wrap = true,
	horizontal_alignment = "center",
	localize = false,
	font_size = 45,
	use_shadow = true,
	vertical_alignment = "top",
	font_type = "hell_shark_header",
	text_color = Colors.get_color_table_with_alpha("local_player_team_lighter", 255),
	offset = {
		0,
		0,
		1
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local objective_text_style = {
	word_wrap = true,
	horizontal_alignment = "center",
	localize = false,
	font_size = 30,
	use_shadow = true,
	vertical_alignment = "bottom",
	font_type = "hell_shark",
	text_color = {
		255,
		255,
		255,
		255
	},
	offset = {
		0,
		0,
		1
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local player_picking_text_style = {
	word_wrap = false,
	font_size = 20,
	localize = false,
	use_shadow = true,
	horizontal_alignment = "left",
	vertical_alignment = "top",
	font_type = "hell_shark",
	size = {
		200,
		25
	},
	text_color = {
		255,
		255,
		255,
		255
	},
	offset = {
		0,
		15,
		1
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local hero_career_name_text_style = {
	word_wrap = false,
	font_size = 48,
	localize = false,
	use_shadow = true,
	horizontal_alignment = "left",
	vertical_alignment = "center",
	font_type = "hell_shark_header",
	size = {
		600,
		60
	},
	text_color = {
		255,
		255,
		255,
		255
	},
	offset = {
		0,
		-45,
		1
	},
	shadow_offset = {
		1,
		1,
		0
	}
}
local other_definitions = {
	local_player_picking_frame = UIWidgets.create_frame("local_player_picking_frame", scenegraph_definition.local_player_picking_frame.size, "frame_inner_glow_02", nil, nil, nil, true),
	local_player_picking_frame_write_mask = UIWidgets.create_simple_texture("mask_rect_edge_fade", "local_player_picking_frame"),
	progress_bar_edge_top = UIWidgets.create_simple_texture("menu_frame_09_divider", "progress_bar_edge_top"),
	progress_bar_edge_bottom = UIWidgets.create_simple_texture("menu_frame_09_divider", "progress_bar_edge_bottom"),
	progress_bar = UIWidgets.create_simple_uv_texture("picking_bar_fill_orange", {
		{
			0,
			0
		},
		{
			1,
			1
		}
	}, "progress_bar"),
	progress_bar_end_glow = UIWidgets.create_simple_texture("picking_bar_fill_highlight", "progress_bar_end_glow"),
	progress_bar_rect = UIWidgets.create_simple_rect("progress_bar_rect", {
		255,
		0,
		0,
		0
	}),
	your_turn_indicator_text = create_your_turn_text_widget("player_name_box_1"),
	countdown_timer = UIWidgets.create_simple_text("", "countdown_timer", nil, nil, countdown_timer_style)
}
local widget_definitions = {
	selected_career_title = UIWidgets.create_simple_text("", "selected_career_title", nil, nil, selected_career_title_style),
	selected_hero_title = UIWidgets.create_simple_text("", "selected_hero_title", nil, nil, selected_hero_title_style),
	character_selection_bg = UIWidgets.create_simple_texture("versus_hero_selection_bottom_frame_background", "bottom_bar", nil, nil, {
		255,
		136,
		136,
		136
	}, {
		0,
		0,
		1
	}),
	character_selection_bg_fade = UIWidgets.create_simple_texture("loot_presentation_fg_02_fade", "bottom_bar", nil, nil, {
		255,
		255,
		255,
		255
	}, {
		0,
		0,
		1
	})
}
local parading_info_size = scenegraph_size.parading_info
local detail_offset = {
	parading_info_size[1] / 2 - 227,
	parading_info_size[2] / 2 - 25,
	1
}
local top_detail_widgets_definitions = {
	player_picking_text = UIWidgets.create_simple_text(Localize("versus_hero_selection_view_local_player_picking"), "hero_name_text_anchor", nil, nil, player_picking_text_style),
	hero_career_name_text = UIWidgets.create_simple_text("", "hero_name_text_anchor", nil, nil, hero_career_name_text_style),
	passive_skill = create_skill_info_widget("hero_name_text_anchor"),
	career_skill = create_skill_info_widget("hero_name_text_anchor")
}

return {
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions,
	retained_mode = RETAINED_MODE,
	create_player_name_box_widgets = create_player_name_box_widgets,
	create_hero_roster_widget_defitions = create_hero_roster_widget_defitions,
	create_skill_info_widget = create_skill_info_widget,
	other_definitions = other_definitions,
	animation_definitions = animation_definitions,
	create_progress_marker = create_progress_marker,
	intro_view_settings = intro_view_settings,
	top_detail_widgets_definitions = top_detail_widgets_definitions,
	generic_input_actions = generic_input_actions
}
