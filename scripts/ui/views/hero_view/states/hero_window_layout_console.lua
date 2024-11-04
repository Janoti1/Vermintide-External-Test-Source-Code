local windows = {
	panel = {
		ignore_alignment = true,
		name = "panel",
		class_name = "HeroWindowPanelConsole"
	},
	background = {
		ignore_alignment = true,
		name = "background",
		class_name = "HeroWindowBackgroundConsole"
	},
	crafting_inventory = {
		ignore_alignment = true,
		name = "crafting_inventory",
		class_name = "HeroWindowCraftingInventoryConsole"
	},
	loadout_inventory = {
		ignore_alignment = true,
		name = "loadout_inventory",
		class_name = "HeroWindowLoadoutInventoryConsole"
	},
	loadout = {
		ignore_alignment = true,
		name = "loadout",
		class_name = "HeroWindowLoadoutConsole"
	},
	talents = {
		ignore_alignment = true,
		name = "talents",
		class_name = "HeroWindowTalentsConsole"
	},
	crafting = {
		ignore_alignment = true,
		name = "crafting",
		class_name = "HeroWindowCraftingConsole"
	},
	prestige = {
		ignore_alignment = true,
		name = "prestige",
		class_name = "HeroWindowPrestige"
	},
	cosmetics_loadout = {
		ignore_alignment = true,
		name = "cosmetics_loadout",
		class_name = "HeroWindowCosmeticsLoadoutConsole"
	},
	cosmetics_inventory = {
		ignore_alignment = true,
		name = "cosmetics_inventory",
		class_name = "HeroWindowCosmeticsLoadoutInventoryConsole"
	},
	pose_inventory = {
		ignore_alignment = true,
		name = "pose_inventory",
		class_name = "HeroWindowCosmeticsLoadoutPoseInventoryConsole"
	},
	character_info = {
		ignore_alignment = true,
		name = "character_info",
		class_name = "HeroWindowCharacterInfo"
	},
	crafting_list = {
		ignore_alignment = true,
		name = "crafting_list",
		class_name = "HeroWindowCraftingListConsole"
	},
	hero_power = {
		ignore_alignment = true,
		name = "hero_power",
		class_name = "HeroWindowHeroPowerConsole"
	},
	loadout_selection = {
		ignore_alignment = true,
		name = "loadout_selection",
		class_name = "HeroWindowLoadoutSelectionConsole"
	},
	ingame_view = {
		ignore_alignment = true,
		name = "ingame_view",
		class_name = "HeroWindowIngameView"
	},
	character_selection = {
		ignore_alignment = true,
		name = "character_selection",
		class_name = "HeroWindowCharacterSelectionConsole"
	},
	item_customization = {
		ignore_alignment = true,
		name = "item_customization",
		class_name = "HeroWindowItemCustomization"
	},
	dark_pact_character_selection = {
		ignore_alignment = true,
		name = "dark_pact_character_selection",
		class_name = "HeroWindowDarkPactCharacterSelectionConsole"
	}
}
local window_layouts = {
	{
		sound_event_enter = "play_gui_equipment_button",
		name = "equipment",
		sound_event_exit = "play_gui_equipment_close",
		close_on_exit = true,
		windows = {
			hero_power = 5,
			loadout_selection = 6,
			background = 2,
			character_info = 3,
			panel = 1,
			loadout = 4
		}
	},
	{
		sound_event_enter = "play_gui_talents_button",
		name = "talents",
		sound_event_exit = "play_gui_talents_close",
		close_on_exit = true,
		windows = {
			loadout_selection = 5,
			background = 2,
			character_info = 3,
			panel = 1,
			talents = 4
		}
	},
	{
		sound_event_enter = "play_gui_craft_button",
		name = "forge",
		sound_event_exit = "play_gui_craft_close",
		close_on_exit = true,
		windows = {
			character_info = 4,
			panel = 1,
			background = 2,
			crafting_list = 3
		},
		can_add_function = function (mechanism_name)
			return mechanism_name ~= "versus" and mechanism_name ~= "inn_vs"
		end
	},
	{
		sound_event_enter = "play_gui_cosmetics_button",
		name = "cosmetics",
		sound_event_exit = "play_gui_cosmetics_close",
		close_on_exit = true,
		windows = {
			hero_power = 5,
			cosmetics_loadout = 3,
			background = 2,
			loadout_selection = 6,
			character_info = 4,
			panel = 1
		}
	},
	{
		sound_event_enter = "play_gui_craft_button",
		name = "crafting_recipe",
		sound_event_exit = "play_gui_craft_close",
		input_focus_window = "crafting",
		close_on_exit = false,
		windows = {
			crafting_inventory = 4,
			background = 2,
			character_info = 5,
			panel = 1,
			crafting = 3
		}
	},
	{
		sound_event_enter = "play_gui_equipment_button",
		name = "equipment_selection",
		sound_event_exit = "play_gui_equipment_close",
		input_focus_window = "loadout_inventory",
		close_on_exit = false,
		windows = {
			hero_power = 5,
			background = 2,
			character_info = 3,
			panel = 1,
			loadout_inventory = 4
		}
	},
	{
		sound_event_enter = "play_gui_equipment_button",
		name = "cosmetics_selection",
		sound_event_exit = "play_gui_equipment_close",
		input_focus_window = "cosmetics_inventory",
		close_on_exit = false,
		windows = {
			hero_power = 5,
			cosmetics_inventory = 4,
			background = 2,
			character_info = 3,
			panel = 1
		}
	},
	{
		sound_event_enter = "play_gui_equipment_button",
		name = "pose_selection",
		sound_event_exit = "play_gui_equipment_close",
		input_focus_window = "pose_inventory",
		close_on_exit = false,
		windows = {
			pose_inventory = 4,
			hero_power = 5,
			background = 2,
			character_info = 3,
			panel = 1
		}
	},
	{
		sound_event_enter = "Play_hud_button_open",
		name = "system",
		sound_event_exit = "Play_hud_button_close",
		close_on_exit = true,
		windows = {
			character_info = 3,
			panel = 1,
			background = 2,
			ingame_view = 4
		}
	},
	{
		sound_event_enter = "Play_hud_button_open",
		name = "store",
		sound_event_exit = "Play_hud_button_close",
		close_on_exit = true,
		windows = {
			background = 1
		}
	},
	{
		sound_event_enter = "Play_hud_button_open",
		name = "character_selection",
		sound_event_exit = "Play_hud_button_close",
		close_on_exit = false,
		windows = {
			character_selection = 3,
			panel = 1,
			background = 2
		}
	},
	{
		sound_event_enter = "Play_hud_button_open",
		name = "item_customization",
		sound_event_exit = "Play_hud_button_close",
		close_on_exit = false,
		windows = {
			character_info = 3,
			panel = 1,
			background = 2,
			item_customization = 4
		}
	},
	{
		sound_event_enter = "Play_hud_button_open",
		name = "pactsworn_equipment",
		sound_event_exit = "Play_hud_button_close",
		close_on_exit = true,
		windows = {
			dark_pact_character_selection = 3,
			panel = 1,
			background = 2
		},
		can_add_function = function (mechanism_name)
			return mechanism_name == "versus"
		end,
		on_exit = function (parent)
			local local_player = Managers.player:local_player()
			local profile_index = local_player:profile_index()
			local career_index = local_player:career_index()

			parent:change_profile(profile_index, career_index)

			local profile = SPProfiles[profile_index]

			Managers.state.event:trigger("respawn_hero", {
				hero_name = profile.display_name,
				career_index = career_index
			})

			local mood_settings = DLCSettings.carousel and DLCSettings.carousel.hero_window_mood_settings
			local mood_setting = mood_settings.default or "default"

			parent:set_background_mood(mood_setting)
		end
	}
}
local MAX_ACTIVE_WINDOWS = 6

DLCUtils.map("hero_view_window_layout_console", function (hero_view_window_layout_console)
	local new_windows = hero_view_window_layout_console.windows

	if new_windows then
		for name, window in pairs(new_windows) do
			windows[name] = window
		end
	end

	local new_window_layouts = hero_view_window_layout_console.window_layouts

	if new_window_layouts then
		for i = 1, #new_window_layouts do
			window_layouts[#window_layouts + 1] = new_window_layouts[i]
		end
	end
end)
DLCUtils.map("hero_view_window_layout_console", function (hero_view_window_layout_console)
	local new_windows = hero_view_window_layout_console.windows

	if new_windows then
		for name, window in pairs(new_windows) do
			windows[name] = window
		end
	end

	local new_window_layouts = hero_view_window_layout_console.window_layouts

	if new_window_layouts then
		for i = 1, #new_window_layouts do
			window_layouts[#window_layouts + 1] = new_window_layouts[i]
		end
	end
end)

return {
	max_active_windows = MAX_ACTIVE_WINDOWS,
	windows = windows,
	window_layouts = window_layouts
}
