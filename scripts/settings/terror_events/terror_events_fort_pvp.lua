local function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

local function count_event_breed(breed_name)
	return Managers.state.conflict:count_units_by_breed_during_event(breed_name)
end

local weighted_random_terror_events
local HARDER = 4
local HARDEST = 5
local terror_event_blueprints = {
	fort_pacing_off = {
		{
			"control_hordes",
			enable = false
		},
		{
			"control_pacing",
			enable = false
		}
	},
	fort_pacing_on = {
		{
			"control_hordes",
			enable = true
		},
		{
			"control_pacing",
			enable = true
		}
	},
	fort_pvp_terror_event_payload_01 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_pvp_terror_event_payload_01"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "payload_01_spawn_1",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "payload_01_spawn_2",
			composition_type = "storm_vermin_shields_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			spawner_id = "payload_01_spawn_3",
			composition_type = "plague_monks_small"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return count_event_breed("skaven_slave") < 2 and count_event_breed("skaven_clan_rat") < 2 and count_event_breed("skaven_storm_vermin_with_shield") < 2 and count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_pvp_terror_event_payload_01_done"
		}
	},
	fort_pvp_terror_event_bell_tower_guards = {
		{
			"spawn_at_raw",
			spawner_id = "bell_tower_guard_1",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "bell_tower_guard_2",
			breed_name = "skaven_storm_vermin_commander"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "bell_tower_guard_3",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "bell_tower_guard_4",
			breed_name = "skaven_storm_vermin_with_shield"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "bell_tower_guard_5",
			breed_name = "skaven_plague_monk"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "bell_tower_guard_6",
			breed_name = "skaven_plague_monk"
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "fort_pvp_terror_event_bell_tower_guards_done"
		}
	},
	fort_pvp_terror_event_payload_02 = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_pvp_terror_event_payload_02"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_chaos_stinger"
		},
		{
			"event_horde",
			spawner_id = "payload_02_spawn_3",
			composition_type = "event_chaos_extra_spice_medium"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "payload_02_spawn_2",
			composition_type = "chaos_shields"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			spawner_id = "payload_02_spawn_1",
			composition_type = "chaos_warriors"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 60,
			condition = function (t)
				return count_event_breed("chaos_marauder_with_shield") < 3 and count_event_breed("chaos_warrior") < 1 and count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_raider") < 3
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"flow_event",
			flow_event_name = "fort_pvp_terror_event_payload_02_done"
		}
	},
	fort_pvp_terror_event_ram_guards = {
		{
			"spawn_at_raw",
			spawner_id = "ram_guard_1",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "ram_guard_2",
			breed_name = "chaos_raider"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "ram_guard_3",
			breed_name = "chaos_warrior"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "ram_guard_4",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"delay",
			duration = 1
		},
		{
			"spawn_at_raw",
			spawner_id = "ram_guard_5",
			breed_name = "chaos_marauder_with_shield"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_raider") < 1 and count_event_breed("chaos_warrior") < 1 and count_event_breed("chaos_marauder_with_shield") < 1
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_pvp_terror_event_ram_guards_done"
		}
	},
	fort_terror_event_climb = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_climb"
		},
		{
			"event_horde",
			spawner_id = "terror_event_climb",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 3 and count_event_breed("skaven_clan_rat") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_climb_done"
		}
	},
	fort_terror_event_inner_yard = {
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"set_master_event_running",
			name = "fort_terror_event_inner_yard"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"event_horde",
			spawner_id = "terror_event_inner_yard",
			composition_type = "event_smaller"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			condition = function (t)
				return count_event_breed("skaven_slave") < 3 and count_event_breed("skaven_clan_rat") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_terror_event_inner_yard_done"
		}
	},
	fort_horde_gate = {
		{
			"set_master_event_running",
			name = "fort_horde_gate"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"disable_kick"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_gate",
			composition_type = "event_small_chaos"
		},
		{
			"delay",
			duration = 10
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("chaos_marauder") < 3 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_gate_done"
		}
	},
	fort_horde_cannon = {
		{
			"set_master_event_running",
			name = "fort_horde_cannon"
		},
		{
			"play_stinger",
			stinger_name = "enemy_horde_stinger"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_cannon",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_slave") < 3 and count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 1
			end
		},
		{
			"delay",
			duration = 10
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "event_extra_spice_small"
		},
		{
			"delay",
			duration = 3
		},
		{
			"continue_when",
			duration = 120,
			condition = function (t)
				return count_event_breed("skaven_slave") < 3 and count_event_breed("skaven_clan_rat") < 3 and count_event_breed("skaven_storm_vermin_commander") < 1
			end
		},
		{
			"delay",
			duration = 3
		},
		{
			"event_horde",
			limit_spawners = 3,
			spawner_id = "fort_horde_cannon",
			composition_type = "plague_monks_small"
		},
		{
			"continue_when",
			duration = 30,
			condition = function (t)
				return count_event_breed("skaven_plague_monk") < 1
			end
		},
		{
			"delay",
			duration = 5
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_cannon_done"
		}
	},
	fort_horde_fleeing = {
		{
			"set_master_event_running",
			name = "fort_horde_fleeing"
		},
		{
			"set_freeze_condition",
			max_active_enemies = 100
		},
		{
			"event_horde",
			spawner_id = "fort_horde_fleeing",
			composition_type = "event_small"
		},
		{
			"delay",
			duration = 5
		},
		{
			"continue_when",
			duration = 50,
			condition = function (t)
				return count_event_breed("skaven_slave") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "fort_horde_small_done"
		}
	},
	fort_closet_chaos = {
		{
			"spawn_at_raw",
			spawner_id = "fort_closet_chaos_spawner",
			breed_name = "chaos_warrior"
		},
		{
			"flow_event",
			flow_event_name = "fort_closet_chaos_done"
		}
	},
	fort_siegers = {
		{
			"set_master_event_running",
			name = "fort_siegers"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_1",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_2",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_3",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_4",
			breed_name = "chaos_marauder"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_5",
			breed_name = "chaos_berzerker"
		},
		{
			"spawn_at_raw",
			spawner_id = "siege_6",
			breed_name = "chaos_marauder"
		},
		{
			"continue_when",
			duration = 180,
			condition = function (t)
				return count_event_breed("chaos_berzerker") < 2 and count_event_breed("chaos_raider") < 2 and count_event_breed("chaos_marauder") < 2 and count_event_breed("chaos_marauder_with_shield") < 2
			end
		},
		{
			"flow_event",
			flow_event_name = "siege_broken"
		}
	}
}

return terror_event_blueprints, weighted_random_terror_events