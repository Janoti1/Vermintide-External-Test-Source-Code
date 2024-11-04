require("scripts/ui/helpers/handbook_logic")

local hero_view_handbook_definitions = local_require("scripts/ui/views/hero_view/states/definitions/hero_view_state_handbook_definitions")
local content_blueprints = hero_view_handbook_definitions.content_blueprints
local definitions = local_require("scripts/ui/dlc_upsell/handbook_popup_definitions")
local generic_input_actions = definitions.generic_input_actions
local achievement_window_size = definitions.achievement_window_size
local ACHIEVEMENT_WINDOW_HEIGHT = achievement_window_size[2]

HandbookPopup = class(HandbookPopup, CommonPopup)

HandbookPopup.init = function (self, ui_context, hint_name, hint_settings)
	HandbookPopup.super.init(self, ui_context, hint_name, hint_settings)

	self._input_manager = ui_context.input_manager
	self._render_settings = {
		alpha_multiplier = 1,
		snap_pixel_positions = true
	}

	local page_name = hint_settings.page

	self._active_pages = {
		page_name
	}
	self._current_page = 1
	self._total_pages = #self._active_pages
	SaveData.seen_handbook_pages = SaveData.seen_handbook_pages or {}
	SaveData.seen_handbook_pages[page_name] = true
	self._has_widget_been_closed = false
end

HandbookPopup.destroy = function (self)
	HandbookPopup.super.destroy(self)
	self._handbook_logic:delete()
end

HandbookPopup.create_ui_elements = function (self)
	HandbookPopup.super.create_ui_elements(self)

	local blueprint_context = {
		scenegraph_id = "achievement_root",
		ui_renderer = self._ui_top_renderer,
		world = self._ui_context.world
	}

	self._handbook_logic = HandbookLogic:new(blueprint_context, content_blueprints)
end

HandbookPopup.show = function (self)
	HandbookPopup.super.show(self)
	self:_start_transition_animation("on_enter")
	self:play_sound("Play_gui_handbook_popup")
	self:set_fullscreen_effect_enable_state(true)
end

HandbookPopup.hide = function (self)
	self:set_fullscreen_effect_enable_state(false)

	self._exit_anim_id = self:_start_transition_animation("on_exit")
end

HandbookPopup._start_transition_animation = function (self, animation_name)
	return self._ui_animator:start_animation(animation_name, nil, definitions.scenegraph_definition, {
		wwise_world = self._wwise_world,
		render_settings = self._render_settings
	})
end

HandbookPopup._update_animations = function (self, dt)
	HandbookPopup.super._update_animations(self, dt)

	if self._exit_anim_id and self._ui_animator:is_animation_completed(self._exit_anim_id) then
		self._is_visible = false
	end

	local exit_button = self._widgets_by_name.exit_button

	UIWidgetUtils.animate_default_button(exit_button, dt)
end

HandbookPopup._handle_input = function (self, dt)
	if self._has_widget_been_closed then
		return
	end

	HandbookPopup.super._handle_input(self, dt)

	local widgets_by_name = self._widgets_by_name
	local input_service = self:_get_input_service()

	if UIUtils.is_button_pressed(widgets_by_name.exit_button) or input_service:get("back", true) or input_service:get("toggle_menu", true) then
		self:hide()
		self:release_input()

		self._has_widget_been_closed = true

		self:play_sound("Play_hud_button_close")

		return
	end
end

HandbookPopup._go_to_page = function (self, page_index)
	local page_name = self._active_pages[page_index]
	local page_settings = HandbookSettings.pages[page_name]

	if not page_settings then
		return
	end

	local entry_widgets, total_height = self._handbook_logic:create_entry_widgets(page_settings)

	self._content_widgets = entry_widgets

	local scrollbar_bottom_inset = 150

	self._total_scroll_height = math.max(total_height + scrollbar_bottom_inset - ACHIEVEMENT_WINDOW_HEIGHT, 0)
	self._scroll_value = nil
	self._current_page = page_index

	self:_update_page_info()
end

HandbookPopup._update_page_info = function (self)
	local widgets_by_name = self._widgets_by_name
	local current_page = self._current_page
	local total_pages = self._total_pages

	widgets_by_name.page_text_left.content.text = tostring(current_page)
	widgets_by_name.page_text_right.content.text = tostring(total_pages)
	widgets_by_name.page_button_next.content.hotspot.disable_button = current_page == total_pages
	widgets_by_name.page_button_previous.content.hotspot.disable_button = current_page == 1

	local has_pages = total_pages > 1

	widgets_by_name.page_button_next.content.visible = has_pages
	widgets_by_name.page_button_previous.content.visible = has_pages
	widgets_by_name.input_icon_next.content.visible = has_pages
	widgets_by_name.input_icon_previous.content.visible = has_pages
	widgets_by_name.input_arrow_next.content.visible = has_pages
	widgets_by_name.input_arrow_previous.content.visible = has_pages
	widgets_by_name.page_text_center.content.visible = has_pages
	widgets_by_name.page_text_left.content.visible = has_pages
	widgets_by_name.page_text_right.content.visible = has_pages
	widgets_by_name.page_text_area.content.visible = has_pages

	self._menu_input_description:set_input_description(has_pages and generic_input_actions.has_pages or nil)
end

HandbookPopup.should_show = function (self)
	return self._ui_context.is_in_inn and not Managers.popup:has_popup() and not self._is_visible
end

HandbookPopup.update = function (self, dt)
	HandbookPopup.super.update(self, dt)

	if self:should_show() and not self._has_widget_been_closed then
		self:show()
		self:_go_to_page(1)
	end
end
