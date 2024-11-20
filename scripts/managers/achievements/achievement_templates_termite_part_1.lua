local add_event_challenge = AchievementTemplateHelper.add_event_challenge
local add_levels_complete_challenge = AchievementTemplateHelper.add_levels_complete_challenge
local add_meta_challenge = AchievementTemplateHelper.add_meta_challenge
local PLACEHOLDER_ICON = AchievementTemplateHelper.PLACEHOLDER_ICON
local achievements = AchievementTemplates.achievements
local add_console_achievements = AchievementTemplateHelper.add_console_achievements
local XB1_ACHIEVEMENT_ID = {}
local PS4_ACHIEVEMENT_ID = {}
local portals = {
	LevelSettings.dlc_termite_1
}
local difficulties = {
	"normal",
	"hard",
	"harder",
	"hardest",
	"cataclysm"
}
local player_facing_diff_names = {
	hardest = "legend",
	hard = "veteran",
	harder = "champion",
	cataclysm = "cataclysm",
	normal = "recruit"
}

for i = 1, #difficulties do
	local difficulty_name = difficulties[i]
	local name = "achv_termite1_complete_" .. player_facing_diff_names[difficulty_name]
	local icon = "achievement_dwarf_" .. player_facing_diff_names[difficulty_name]

	all_difficulties[i] = name

	add_levels_complete_challenge(achievements, name, portals, DifficultySettings[difficulty_name].rank, icon, nil, XB1_ACHIEVEMENT_ID[name], PS4_ACHIEVEMENT_ID[name])
end

achievements.termite1_speedrun_challenge = {
	name = "achv_termite1_time_challenge_name",
	display_completion_ui = true,
	icon = "icons_placeholder",
	desc = "achv_termite1_time_challenge_desc",
	events = {
		"termite1_speedrun_challenge"
	}
}
achievements.termite1_skaven_markings_challenge = {
	name = "achv_termite1_skaven_markings_name",
	display_completion_ui = true,
	icon = "icons_placeholder",
	desc = "achv_termite1_skaven_markings_desc",
	events = {
		"termite1_skaven_markings_challenge"
	}
}
achievements.termite1_bell_challenge = {
	name = "achv_termite1_bell_name",
	display_completion_ui = true,
	icon = "icons_placeholder",
	desc = "achv_termite1_bell_desc",
	events = {
		"termite1_bell_challenge"
	}
}
achievements.termite1_towers_challenge = {
	name = "achv_termite1_towers_name",
	display_completion_ui = true,
	icon = "icons_placeholder",
	desc = "achv_termite1_towers_desc",
	events = {
		"termite1_towers_challenge"
	}
}
achievements.termite1_waystone_timer_challenge_easy = {
	name = "achv_termite1_waystone_timer_easy_name",
	display_completion_ui = true,
	icon = "icons_placeholder",
	desc = "achv_termite1_waystone_timer_easy_desc",
	events = {
		"termite1_waystone_timer_challenge_easy"
	}
}
achievements.termite1_waystone_timer_challenge_hard = {
	name = "achv_termite1_waystone_timer_hard_name",
	display_completion_ui = true,
	icon = "icons_placeholder",
	desc = "achv_termite1_waystone_timer_hard_desc",
	events = {
		"termite1_waystone_timer_challenge_hard"
	}
}
termite1_all_challenges = table.clone(all_difficulties)

table.remove(termite1_all_challenges, #termite1_all_challenges)

termite1_all_challenges[#termite1_all_challenges + 1] = "termite1_speedrun_challenge"
termite1_all_challenges[#termite1_all_challenges + 1] = "termite1_skaven_markings_challenge"
termite1_all_challenges[#termite1_all_challenges + 1] = "termite1_bell_challenge"
termite1_all_challenges[#termite1_all_challenges + 1] = "termite1_towers_challenge"
termite1_all_challenges[#termite1_all_challenges + 1] = "termite1_waystone_timer_challenge_easy"
termite1_all_challenges[#termite1_all_challenges + 1] = "termite1_waystone_timer_challenge_hard"

add_meta_challenge(achievements, "termite1_all_challenges", termite1_all_challenges, "icons_placeholder", nil, nil, nil)
