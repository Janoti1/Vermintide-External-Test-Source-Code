local local_backend_available = false

BackendSettings = BackendSettings or {}
BackendSettings.prod_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "5107",
	is_prod = true,
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.stage_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	implementation = "playfab",
	title_id = "9928",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.dev_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	implementation = "playfab",
	title_id = "6599",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.morris_dev_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	implementation = "playfab",
	title_id = "9C780",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.carousel_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	implementation = "playfab",
	title_id = "D537D",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.morris_beta_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = false,
	implementation = "playfab",
	title_id = "834AF",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.morris_casual_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = false,
	implementation = "playfab",
	title_id = "9D268",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.cat_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	implementation = "playfab",
	title_id = "CF97B",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE,
	allow_local = local_backend_available
}
BackendSettings.beta_steam_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "471E2",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.stage_xbone_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "66427",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.prod_xbone_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "4d1e",
	is_prod = true,
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.dev_xbone_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "f844",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.morris_dev_xbone_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "B8F9E",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.dev_ps4_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "9050",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.stage_ps4_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "36F45",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.prod_ps4_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "60f3",
	is_prod = true,
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
BackendSettings.morris_dev_ps4_playfab = {
	enable_sessions = false,
	allow_tutorial = true,
	allow_local = false,
	implementation = "playfab",
	title_id = "D54E0",
	environment = rawget(_G, "Backend") and Backend.ENV_STAGE
}
