local definitions = local_require("scripts/ui/dlc_versus/views/start_game_view/windows/definitions/start_game_window_versus_custom_game_definitions")
local scenegraph_definition = definitions.scenegraph_definition
local widget_definitions = definitions.widgets
local animation_definitions = definitions.animation_definitions
local selector_input_definition = definitions.selector_input_definition
local START_GAME_INPUT = "refresh_press"
local SELECTION_INPUT = "confirm_press"

StartGameWindowVersusCustomGame = class(StartGameWindowVersusCustomGame)
StartGameWindowVersusCustomGame.NAME = "StartGameWindowVersusCustomGame"

StartGameWindowVersusCustomGame.on_enter = function (self, params, offset)
	print("[StartGameViewWindow] Enter Substate StartGameWindowVersusCustomGame")

	self._parent = params.parent

	local ingame_ui_context = params.ingame_ui_context

	self._ingame_ui_context = ingame_ui_context
	self._ui_renderer = ingame_ui_context.ui_renderer
	self._ui_top_renderer = ingame_ui_context.ui_top_renderer
	self._input_manager = ingame_ui_context.input_manager
	self._statistics_db = ingame_ui_context.statistics_db
	self._mechanism_name = Managers.mechanism:current_mechanism_name()

	local local_player = Managers.player:local_player()

	self._stats_id = local_player:stats_id()
	self._render_settings = {
		snap_pixel_positions = true
	}
	self._animations = {}

	self:_create_ui_elements(params, offset)

	self._input_index = params.input_index or 1

	self:_handle_new_selection(self._input_index)
	self:_update_mission_option()

	self._is_focused = false
	self._play_button_pressed = false
	self._previous_can_play = nil

	local is_online = not Managers.account:offline_mode()

	self._is_online = is_online

	if is_online then
		self._parent:change_generic_actions("default_custom_game")
	else
		self._parent:change_generic_actions("offline_custom_game")
	end

	self:_start_transition_animation("on_enter")
end

StartGameWindowVersusCustomGame._start_transition_animation = function (self, animation_name)
	local params = {
		render_settings = self._render_settings
	}
	local widgets = {}
	local anim_id = self._ui_animator:start_animation(animation_name, widgets, scenegraph_definition, params)

	self._animations[animation_name] = anim_id
end

StartGameWindowVersusCustomGame._create_ui_elements = function (self, params, offset)
	local ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)

	self._ui_scenegraph = ui_scenegraph

	local widgets = {}
	local widgets_by_name = {}

	for name, widget_definition in pairs(widget_definitions) do
		local widget = UIWidget.init(widget_definition)

		widgets[#widgets + 1] = widget
		widgets_by_name[name] = widget
	end

	self._widgets = widgets
	self._widgets_by_name = widgets_by_name

	UIRenderer.clear_scenegraph_queue(self._ui_renderer)

	self._ui_animator = UIAnimator:new(ui_scenegraph, animation_definitions)

	if offset then
		local window_position = self._ui_scenegraph.window.local_position

		window_position[1] = window_position[1] + offset[1]
		window_position[2] = window_position[2] + offset[2]
		window_position[3] = window_position[3] + offset[3]
	end
end

StartGameWindowVersusCustomGame.on_exit = function (self, params)
	print("[StartGameViewWindow] Exit Substate StartGameWindowVersusCustomGame")

	self._ui_animator = nil

	if self._play_button_pressed then
		params.input_index = nil
	else
		params.input_index = self._input_index
	end
end

StartGameWindowVersusCustomGame.set_focus = function (self, focused)
	self._is_focused = focused
end

StartGameWindowVersusCustomGame.update = function (self, dt, t)
	self:_update_can_play()
	self:_update_animations(dt)

	if self._is_focused then
		self:_handle_input(dt, t)
	end

	self:_draw(dt)
end

StartGameWindowVersusCustomGame.post_update = function (self, dt, t)
	return
end

StartGameWindowVersusCustomGame._update_can_play = function (self)
	local can_play = self:_can_play()

	if self._previous_can_play ~= can_play then
		self._previous_can_play = can_play

		local play_button = self._widgets_by_name.play_button

		play_button.content.button_hotspot.disable_button = not can_play
		play_button.content.disabled = not can_play

		if can_play then
			self._parent:set_input_description("play_available")
		else
			self._parent:set_input_description(nil)
		end
	end
end

StartGameWindowVersusCustomGame._handle_input = function (self, dt, t)
	local parent = self._parent
	local input_service = parent:window_input_service()

	if input_service:get(SELECTION_INPUT, true) then
		self:_option_selected(self._input_index, t)
	end

	local input_index = self._input_index

	if input_service:get("move_down") then
		input_index = input_index + 1
	elseif input_service:get("move_up") then
		input_index = input_index - 1
	end

	if input_index ~= self._input_index then
		self:_handle_new_selection(input_index)
	end

	local widgets_by_name = self._widgets_by_name

	for i = 1, #selector_input_definition do
		local widget_name = selector_input_definition[i]
		local widget = widgets_by_name[widget_name]
		local is_selected = widget.content.is_selected

		if not is_selected and UIUtils.is_button_hover_enter(widget) then
			self:_handle_new_selection(i)
		end

		if UIUtils.is_button_pressed(widget) then
			self:_option_selected(self._input_index, t)
		end
	end

	if self:_can_play() then
		if UIUtils.is_button_hover_enter(widgets_by_name.play_button) then
			self._parent:play_sound("Play_hud_hover")
		end

		if input_service:get(START_GAME_INPUT) or UIUtils.is_button_pressed(widgets_by_name.play_button) then
			self._play_button_pressed = true

			self:_play()
		end
	end

	local consume = true

	if input_service:get("right_stick_press", consume) and self._is_online then
		parent:set_window_input_focus("versus_additional_custom_settings")
	end
end

StartGameWindowVersusCustomGame._can_play = function (self)
	local local_player_peer_id = Managers.player:local_player():network_id()
	local is_player_alone_in_party, is_party_leader
	local party = Managers.party:get_local_player_party()
	local is_player_alone_in_party = party and party.num_used_slots == 1

	if DEDICATED_SERVER then
		is_party_leader = Managers.party:client_is_friend_party_leader(local_player_peer_id) or Managers.party:is_leader(local_player_peer_id)
	else
		is_party_leader = Managers.party:is_leader(local_player_peer_id) or self._ingame_ui_context.is_server
	end

	local can_play = is_player_alone_in_party or is_party_leader

	return can_play
end

StartGameWindowVersusCustomGame._update_mission_option = function (self)
	local parent = self._parent
	local selected_level_id = parent:get_selected_level_id()
	local mission_widget = self._widgets_by_name.mission_setting
	local completed_difficulty_index = 0

	if selected_level_id then
		local level_settings = LevelSettings[selected_level_id]
		local display_name = level_settings.display_name
		local icon_texture = level_settings.level_image

		mission_widget.content.input_text = Localize(display_name)
		mission_widget.content.icon_texture = icon_texture
		mission_widget.content.icon_frame_texture = UIWidgetUtils.get_level_frame_by_difficulty_index(completed_difficulty_index)
	else
		mission_widget.content.input_text = Localize("map_screen_quickplay_button")
		mission_widget.content.icon_texture = "level_image_any"
		mission_widget.content.icon_frame_texture = UIWidgetUtils.get_level_frame_by_difficulty_index(completed_difficulty_index)
	end
end

StartGameWindowVersusCustomGame._update_difficulty_option = function (self)
	local selected_difficulty_key = self._parent:get_difficulty_option()

	if selected_difficulty_key then
		local difficulty_settings = DifficultySettings[selected_difficulty_key]
		local difficulty_widget = self._widgets_by_name.difficulty_setting

		difficulty_widget.content.input_text = Localize(difficulty_settings.display_name)

		local display_image = difficulty_settings.display_image

		difficulty_widget.content.icon_texture = display_image

		local completed_frame_texture = difficulty_settings.completed_frame_texture

		difficulty_widget.content.icon_frame_texture = completed_frame_texture
	end
end

StartGameWindowVersusCustomGame._play = function (self)
	self._parent:play_sound("Play_vs_hud_play_menu_host_lobby")
	self._parent:set_layout_by_name("versus_player_hosted_lobby")

	local mission_id = self._parent:get_selected_level_id() or "any"
	local is_private = self._parent:is_private_option_enabled()
	local lobby = Managers.state.network:lobby()
	local search_config = {
		player_hosted = true,
		matchmaking_start_state = "MatchmakingStatePlayerHostedGame",
		dedicated_server = false,
		matchmaking_type = "custom",
		mechanism = "versus",
		quick_game = false,
		difficulty = "versus_base",
		mission_id = mission_id,
		any_level = mission_id == "any",
		private_game = is_private or false,
		party_lobby_host = lobby,
		max_num_players = GameModeSettings.versus.max_num_players
	}

	Managers.matchmaking:find_game(search_config)
end

StartGameWindowVersusCustomGame._option_selected = function (self, input_index, t)
	local parent = self._parent
	local custom_game_settings = parent:get_custom_game_settings(self._mechanism_name) or parent:get_custom_game_settings("adventure")
	local selected_widget_name = selector_input_definition[input_index]

	if selected_widget_name == "mission_setting" then
		self._parent:set_layout_by_name(custom_game_settings.layout_name)
	elseif selected_widget_name == "difficulty_setting" then
		self._parent:set_layout_by_name("difficulty_selection_custom")
	elseif selected_widget_name == "play_button" then
		self._play_button_pressed = true

		self:_play()
	else
		ferror("Unknown selector_input_definition: %s", selected_widget_name)
	end
end

StartGameWindowVersusCustomGame._handle_new_selection = function (self, input_index)
	local widgets_by_name = self._widgets_by_name
	local num_inputs = #selector_input_definition

	input_index = math.clamp(input_index, 1, num_inputs)

	local widget_name = selector_input_definition[input_index]
	local widget = widgets_by_name[widget_name]
	local widget_content = widget.content

	if widget_content.disabled then
		return
	end

	for i = 1, #selector_input_definition do
		local widget_name = selector_input_definition[i]
		local widget = widgets_by_name[widget_name]
		local is_selected = i == input_index

		widget.content.is_selected = is_selected
	end

	if self._input_index ~= input_index then
		self._parent:play_sound("play_gui_lobby_button_02_mission_act_click")
	end

	self._input_index = input_index
end

StartGameWindowVersusCustomGame._update_animations = function (self, dt)
	local ui_animator = self._ui_animator

	ui_animator:update(dt)

	local animations = self._animations

	for animation_name, animation_id in pairs(animations) do
		if ui_animator:is_animation_completed(animation_id) then
			ui_animator:stop_animation(animation_id)

			animations[animation_name] = nil
		end
	end

	local widgets_by_name = self._widgets_by_name

	UIWidgetUtils.animate_play_button(widgets_by_name.play_button, dt)
end

StartGameWindowVersusCustomGame._draw = function (self, dt)
	local ui_top_renderer = self._ui_top_renderer
	local ui_scenegraph = self._ui_scenegraph
	local input_service = self._parent:window_input_service()
	local render_settings = self._render_settings
	local parent_scenegraph_id

	UIRenderer.begin_pass(ui_top_renderer, ui_scenegraph, input_service, dt, parent_scenegraph_id, render_settings)

	local widgets = self._widgets

	for i = 1, #widgets do
		local widget = widgets[i]

		UIRenderer.draw_widget(ui_top_renderer, widget)
	end

	UIRenderer.end_pass(ui_top_renderer)
end
