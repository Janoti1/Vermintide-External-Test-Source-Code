local definitions = local_require("scripts/ui/dlc_versus/views/start_game_view/windows/definitions/start_game_window_versus_panel_definitions")

StartGameWindowVersusPanel = class(StartGameWindowVersusPanel, StartGameWindowPanelConsole)

StartGameWindowVersusPanel._create_ui_elements = function (self, _, params, offset)
	return StartGameWindowVersusPanel.super._create_ui_elements(self, definitions, params, offset)
end

StartGameWindowVersusPanel.update = function (self, dt, t)
	if self._versus_player_hosted_lobby_ui_is_active then
		return
	end

	StartGameWindowVersusPanel.super.update(self, dt, t)
end
