LiquidAreaDamageTemplates = {}
LiquidAreaDamageTemplates.templates = {
	bile_troll_vomit_near = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_enemy_troll_puke_loop",
		cell_size = 1,
		liquid_spread_function = "pour_spread",
		starting_pressure = 20,
		apply_buff_to_player = true,
		do_direct_damage_player = false,
		buff_template_name = "bile_troll_vomit_ground_base",
		linearized_flow = false,
		damage_type = "vomit_ground",
		sfx_name_start = "Play_enemy_troll_puke_loop",
		init_function = "bile_troll_vomit_init",
		end_pressure = 3,
		fx_name_filled = "fx/wpnfx_troll_vomit_impact_01",
		apply_buff_to_ai = false,
		time_of_life = 7,
		max_liquid = 30,
		update_function = "bile_troll_vomit_update",
		use_nav_cost_map_volumes = true,
		buff_template_type = "troll_bile_ground",
		nav_cost_map_cost_type = "troll_bile",
		buff_condition_function = "bile_troll_vomit_ground_base_condition",
		immune_breeds = {
			chaos_troll = true,
			chaos_dummy_troll = true,
			chaos_spawn = true,
			skaven_rat_ogre = true,
			skaven_stormfiend = true
		},
		difficulty_direct_damage = {
			easy = {
				1,
				1,
				0,
				0,
				1
			},
			normal = {
				1,
				1,
				0,
				0,
				1
			},
			hard = {
				1,
				1,
				0,
				0,
				1
			},
			harder = {
				1,
				1,
				0,
				0,
				1
			},
			hardest = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_2 = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_3 = {
				1,
				1,
				0,
				0,
				1
			},
			versus_base = {
				1,
				1,
				0,
				0,
				1
			}
		}
	},
	bile_troll_vomit = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_enemy_troll_puke_loop",
		cell_size = 1,
		liquid_spread_function = "default_spread",
		starting_pressure = 20,
		apply_buff_to_player = true,
		do_direct_damage_player = false,
		buff_template_name = "bile_troll_vomit_ground_base",
		linearized_flow = false,
		damage_type = "vomit_ground",
		sfx_name_start = "Play_enemy_troll_puke_loop",
		init_function = "bile_troll_vomit_init",
		end_pressure = 3,
		fx_name_filled = "fx/wpnfx_troll_vomit_impact_01",
		apply_buff_to_ai = false,
		time_of_life = 7,
		max_liquid = 20,
		update_function = "bile_troll_vomit_update",
		use_nav_cost_map_volumes = true,
		buff_template_type = "troll_bile_ground",
		nav_cost_map_cost_type = "troll_bile",
		buff_condition_function = "bile_troll_vomit_ground_base_condition",
		immune_breeds = {
			chaos_troll = true,
			chaos_dummy_troll = true,
			chaos_spawn = true,
			skaven_rat_ogre = true,
			skaven_stormfiend = true
		},
		difficulty_direct_damage = {
			easy = {
				1,
				1,
				0,
				0,
				1
			},
			normal = {
				1,
				1,
				0,
				0,
				1
			},
			hard = {
				1,
				1,
				0,
				0,
				1
			},
			harder = {
				1,
				1,
				0,
				0,
				1
			},
			hardest = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_2 = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_3 = {
				1,
				1,
				0,
				0,
				1
			},
			versus_base = {
				1,
				1,
				0,
				0,
				1
			}
		},
		hit_player_function = function (player_unit, player_and_bot_units, source_unit)
			if Unit.alive(source_unit) then
				local blackboard = BLACKBOARDS[source_unit]

				if blackboard then
					blackboard.has_done_bile_damage = true
				end
			end
		end
	},
	vs_bile_troll_vomit_near = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_enemy_troll_puke_loop",
		cell_size = 1,
		liquid_spread_function = "pour_spread",
		starting_pressure = 30,
		apply_buff_to_player = true,
		do_direct_damage_player = false,
		buff_template_name = "bile_troll_vomit_ground_base",
		linearized_flow = false,
		damage_type = "vomit_ground",
		sfx_name_start = "Play_enemy_troll_puke_loop",
		init_function = "vs_bile_troll_vomit_init",
		end_pressure = 3,
		fx_name_filled = "fx/wpnfx_troll_vomit_impact_01",
		apply_buff_to_ai = false,
		time_of_life = 7,
		max_liquid = 80,
		update_function = "vs_bile_troll_vomit_update",
		use_nav_cost_map_volumes = true,
		buff_template_type = "troll_bile_ground",
		nav_cost_map_cost_type = "troll_bile",
		buff_condition_function = "bile_troll_vomit_ground_base_condition",
		immune_breeds = {
			vs_warpfire_thrower = true,
			vs_chaos_troll = true,
			chaos_dummy_troll = true,
			vs_ratling_gunner = true,
			chaos_spawn = true,
			skaven_rat_ogre = true,
			chaos_troll = true,
			vs_gutter_runner = true,
			vs_poison_wind_globadier = true,
			vs_packmaster = true,
			skaven_stormfiend = true
		},
		difficulty_direct_damage = {
			easy = {
				2,
				2,
				0,
				0,
				2
			},
			normal = {
				2,
				2,
				0,
				0,
				2
			},
			hard = {
				2,
				2,
				0,
				0,
				2
			},
			harder = {
				2,
				2,
				0,
				0,
				2
			},
			hardest = {
				2,
				2,
				0,
				0,
				2
			},
			cataclysm = {
				2,
				2,
				0,
				0,
				2
			},
			cataclysm_2 = {
				2,
				2,
				0,
				0,
				2
			},
			cataclysm_3 = {
				2,
				2,
				0,
				0,
				2
			},
			versus_base = {
				2,
				2,
				0,
				0,
				2
			}
		}
	},
	vs_bile_troll_vomit = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_enemy_troll_puke_loop",
		cell_size = 1,
		liquid_spread_function = "pour_spread",
		starting_pressure = 30,
		apply_buff_to_player = true,
		do_direct_damage_player = false,
		buff_template_name = "bile_troll_vomit_ground_base",
		linearized_flow = false,
		damage_type = "vomit_ground",
		sfx_name_start = "Play_enemy_troll_puke_loop",
		init_function = "vs_bile_troll_vomit_init",
		end_pressure = 3,
		fx_name_filled = "fx/wpnfx_troll_vomit_impact_01",
		apply_buff_to_ai = false,
		time_of_life = 7,
		max_liquid = 80,
		update_function = "vs_bile_troll_vomit_update",
		use_nav_cost_map_volumes = true,
		buff_template_type = "troll_bile_ground",
		nav_cost_map_cost_type = "troll_bile",
		buff_condition_function = "bile_troll_vomit_ground_base_condition",
		immune_breeds = {
			vs_warpfire_thrower = true,
			vs_chaos_troll = true,
			chaos_dummy_troll = true,
			vs_ratling_gunner = true,
			chaos_spawn = true,
			skaven_rat_ogre = true,
			chaos_troll = true,
			vs_gutter_runner = true,
			vs_poison_wind_globadier = true,
			vs_packmaster = true,
			skaven_stormfiend = true
		},
		difficulty_direct_damage = {
			easy = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			normal = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			hard = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			harder = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			hardest = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			cataclysm = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			cataclysm_2 = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			cataclysm_3 = {
				2.8,
				2.8,
				0,
				0,
				2.8
			},
			versus_base = {
				2.8,
				2.8,
				0,
				0,
				2.8
			}
		},
		hit_player_function = function (player_unit, player_and_bot_units, source_unit)
			if Unit.alive(source_unit) then
				local blackboard = BLACKBOARDS[source_unit]

				if blackboard then
					blackboard.has_done_bile_damage = true
				end
			end
		end
	},
	nurgle_liquid = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_nurgle_infection_loop",
		cell_size = 0.6,
		liquid_spread_function = "pour_spread",
		starting_pressure = 10,
		apply_buff_to_player = true,
		do_direct_damage_player = false,
		buff_template_name = "bile_troll_vomit_ground_base",
		linearized_flow = false,
		damage_type = "vomit_ground",
		sfx_name_start = "Play_nurgle_infection_loop",
		init_function = "bile_troll_vomit_init",
		end_pressure = 3,
		fx_name_filled = "fx/nurgle_liquid_blob_ground_01",
		apply_buff_to_ai = false,
		time_of_life = 10,
		max_liquid = 12,
		update_function = "bile_troll_vomit_update",
		use_nav_cost_map_volumes = true,
		buff_template_type = "troll_bile_ground",
		nav_cost_map_cost_type = "troll_bile",
		buff_condition_function = "bile_troll_vomit_ground_base_condition",
		immune_breeds = {
			chaos_troll = true,
			chaos_dummy_troll = true,
			chaos_spawn = true,
			skaven_rat_ogre = true,
			skaven_stormfiend = true
		},
		difficulty_direct_damage = {
			easy = {
				1,
				1,
				0,
				0,
				1
			},
			normal = {
				1,
				1,
				0,
				0,
				1
			},
			hard = {
				1,
				1,
				0,
				0,
				1
			},
			harder = {
				1,
				1,
				0,
				0,
				1
			},
			hardest = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_2 = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_3 = {
				1,
				1,
				0,
				0,
				1
			},
			versus_base = {
				1,
				1,
				0,
				0,
				1
			}
		},
		hit_player_function = function (hit_player_unit, player_and_bot_units)
			local stat_names = {
				"nurgle_bathed_all",
				"nurgle_bathed_all_cata"
			}

			for h = 1, #stat_names do
				local current_difficulty = Managers.state.difficulty:get_difficulty()
				local stat_name = stat_names[h]
				local allowed_difficulties = QuestSettings.allowed_difficulties[stat_name]
				local allowed_difficulty = allowed_difficulties[current_difficulty]

				if allowed_difficulty then
					local status_extension = ScriptUnit.extension(hit_player_unit, "status_system")
					local num_times_bathed_in_nurgle_liquid = status_extension.num_times_bathed_in_nurgle_liquid or 0

					status_extension.num_times_bathed_in_nurgle_liquid = num_times_bathed_in_nurgle_liquid + 1

					local completed_challenge = false

					for i = 0, #player_and_bot_units do
						local player_unit = player_and_bot_units[i]

						if Unit.alive(player_unit) then
							local player_unit_status_extension = ScriptUnit.extension(player_unit, "status_system")
							local num_times_bathed = player_unit_status_extension.num_times_bathed_in_nurgle_liquid

							if num_times_bathed and num_times_bathed >= QuestSettings.nurgle_bathed_all then
								local statistics_db = Managers.player:statistics_db()

								statistics_db:increment_stat_and_sync_to_clients(stat_names[h])

								completed_challenge = true

								break
							end
						end
					end

					if completed_challenge then
						for i = 0, #player_and_bot_units do
							local player_unit = player_and_bot_units[i]

							if Unit.alive(player_unit) then
								local player_unit_status_extension = ScriptUnit.extension(player_unit, "status_system")

								player_unit_status_extension.num_times_bathed_in_nurgle_liquid = nil
							end
						end
					end
				end
			end
		end
	},
	stormfiend_firewall = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_enemy_stormfiend_fire_ground_loop",
		cell_size = 1,
		liquid_spread_function = "forward_spread",
		starting_pressure = 30,
		apply_buff_to_player = true,
		do_direct_damage_player = false,
		buff_template_name = "stormfiend_warpfire_ground_base",
		linearized_flow = true,
		fx_name_rim = "fx/wpnfx_warp_fire_remains_rim",
		damage_type = "warpfire_ground",
		sfx_name_start = "Play_enemy_stormfiend_fire_ground_loop",
		end_pressure = 2,
		fx_name_filled = "fx/wpnfx_warp_fire_remains",
		apply_buff_to_ai = false,
		time_of_life = 8,
		max_liquid = 20,
		use_nav_cost_map_volumes = true,
		buff_template_type = "stormfiend_warpfire_ground",
		nav_cost_map_cost_type = "stormfiend_warpfire",
		buff_condition_function = "stormfiend_warpfire_ground_base_condition",
		immune_breeds = {
			chaos_troll = true,
			chaos_dummy_troll = true,
			skaven_grey_seer = true,
			chaos_spawn = true,
			skaven_warpfire_thrower = true,
			skaven_rat_ogre = true,
			skaven_stormfiend = true
		},
		difficulty_direct_damage = {
			easy = {
				1,
				1,
				0,
				0,
				1
			},
			normal = {
				2,
				2,
				0,
				0,
				1
			},
			hard = {
				4,
				4,
				0,
				0,
				3
			},
			harder = {
				6,
				6,
				0,
				0,
				6
			},
			hardest = {
				8,
				8,
				0,
				0,
				8
			},
			cataclysm = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_2 = {
				1,
				1,
				0,
				0,
				1
			},
			cataclysm_3 = {
				1,
				1,
				0,
				0,
				1
			},
			versus_base = {
				1,
				1,
				0,
				0,
				1
			}
		},
		hit_player_function = function (player_unit, player_and_bot_units, source_unit)
			if Unit.alive(source_unit) then
				local blackboard = BLACKBOARDS[source_unit]

				blackboard.has_dealt_burn_damage = true
			end
		end
	},
	lamp_oil_fire = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_props_lamp_oil_fire",
		cell_size = 1,
		liquid_spread_function = "pour_spread",
		starting_pressure = 15,
		do_direct_damage_player = true,
		linearized_flow = false,
		fx_name_rim = "fx/wpnfx_lamp_oil_remains_rim",
		damage_type = "burn",
		sfx_name_start = "Play_props_lamp_oil_fire",
		end_pressure = 2,
		fx_name_filled = "fx/wpnfx_lamp_oil_remains",
		time_of_life = 10,
		max_liquid = 50,
		use_nav_cost_map_volumes = true,
		nav_cost_map_cost_type = "lamp_oil_fire",
		immune_breeds = {},
		difficulty_direct_damage = {
			easy = {
				10,
				10,
				10,
				2,
				10
			},
			normal = {
				10,
				10,
				10,
				5,
				10
			},
			hard = {
				10,
				10,
				10,
				6,
				10
			},
			harder = {
				10,
				10,
				10,
				7,
				10
			},
			hardest = {
				10,
				10,
				10,
				8,
				10
			},
			cataclysm = {
				10,
				10,
				10,
				6,
				10
			},
			cataclysm_2 = {
				10,
				10,
				10,
				7,
				10
			},
			cataclysm_3 = {
				10,
				10,
				10,
				8,
				10
			},
			versus_base = {
				10,
				10,
				10,
				5,
				10
			}
		}
	},
	warpfire_death_fire = {
		do_direct_damage_ai = true,
		sfx_name_stop = "Stop_enemy_stormfiend_fire_ground_loop",
		cell_size = 0.75,
		liquid_spread_function = "pour_spread",
		starting_pressure = 15,
		do_direct_damage_player = true,
		linearized_flow = false,
		fx_name_rim = "fx/wpnfx_warp_fire_remains_rim",
		damage_type = "warpfire_ground",
		sfx_name_start = "Play_enemy_stormfiend_fire_ground_loop",
		end_pressure = 2,
		fx_name_filled = "fx/chr_warp_fire_flamethrower_remains_01",
		time_of_life = 5,
		max_liquid = 20,
		use_nav_cost_map_volumes = true,
		nav_cost_map_cost_type = "warpfire_thrower_warpfire",
		immune_breeds = {},
		difficulty_direct_damage = {
			easy = {
				10,
				10,
				10,
				2,
				10
			},
			normal = {
				10,
				10,
				10,
				5,
				10
			},
			hard = {
				10,
				10,
				10,
				6,
				10
			},
			harder = {
				10,
				10,
				10,
				7,
				10
			},
			hardest = {
				10,
				10,
				10,
				8,
				10
			},
			cataclysm = {
				10,
				10,
				10,
				6,
				10
			},
			cataclysm_2 = {
				10,
				10,
				10,
				7,
				10
			},
			cataclysm_3 = {
				10,
				10,
				10,
				8,
				10
			},
			versus_base = {
				10,
				10,
				10,
				5,
				10
			}
		}
	},
	sienna_unchained_ability_patch = {
		do_direct_damage_ai = false,
		cell_size = 1,
		max_liquid = 10,
		below = 30,
		starting_pressure = 15,
		do_direct_damage_player = false,
		damage_buff_template_name = "burning_dot_1tick",
		linearized_flow = false,
		fx_name_rim = "fx/chr_unchained_living_bomb_lingering",
		liquid_spread_function = "pour_spread",
		damage_type = "burninating",
		sfx_name_start = "Play_props_lamp_oil_fire",
		end_pressure = 2,
		fx_name_filled = "fx/chr_unchained_living_bomb_lingering_rim",
		time_of_life = 3,
		above = 2,
		sfx_name_stop = "Stop_props_lamp_oil_fire",
		immune_breeds = {},
		difficulty_direct_damage = {
			easy = {
				0,
				0,
				0,
				0,
				0
			},
			normal = {
				0,
				0,
				0,
				0,
				0
			},
			hard = {
				0,
				0,
				0,
				0,
				0
			},
			harder = {
				0,
				0,
				0,
				0,
				0
			},
			hardest = {
				0,
				0,
				0,
				0,
				0
			},
			cataclysm = {
				0,
				0,
				0,
				0,
				0
			},
			cataclysm_2 = {
				0,
				0,
				0,
				0,
				0
			},
			cataclysm_3 = {
				0,
				0,
				0,
				0,
				0
			},
			versus_base = {
				0,
				0,
				0,
				0,
				0
			}
		}
	},
	sienna_unchained_ability_patch_increased_damage = {
		do_direct_damage_ai = false,
		cell_size = 1,
		max_liquid = 10,
		below = 30,
		starting_pressure = 15,
		do_direct_damage_player = false,
		damage_buff_template_name = "burning_dot_1tick",
		linearized_flow = false,
		fx_name_rim = "fx/chr_unchained_living_bomb_lingering",
		liquid_spread_function = "pour_spread",
		damage_type = "burninating",
		sfx_name_start = "Play_props_lamp_oil_fire",
		end_pressure = 2,
		fx_name_filled = "fx/chr_unchained_living_bomb_lingering_rim",
		time_of_life = 3,
		above = 2,
		sfx_name_stop = "Stop_props_lamp_oil_fire",
		immune_breeds = {},
		difficulty_direct_damage = {
			easy = {
				10,
				10,
				10,
				0,
				10
			},
			normal = {
				10,
				10,
				10,
				0,
				10
			},
			hard = {
				10,
				10,
				10,
				0,
				10
			},
			harder = {
				10,
				10,
				10,
				0,
				10
			},
			hardest = {
				10,
				10,
				10,
				0,
				10
			},
			cataclysm = {
				10,
				10,
				10,
				0,
				10
			},
			cataclysm_2 = {
				10,
				10,
				10,
				0,
				10
			},
			cataclysm_3 = {
				10,
				10,
				10,
				0,
				10
			},
			versus_base = {
				10,
				10,
				10,
				0,
				10
			}
		}
	}
}

LiquidAreaDamageTemplates.pour_spread = function (angle)
	return 1
end

LiquidAreaDamageTemplates.default_spread = function (angle)
	return math.max((1 - angle / math.pi)^2 - 0.45, 0)
end

LiquidAreaDamageTemplates.forward_spread = function (angle)
	return math.max(1 - angle / (math.pi * 0.25), 0)
end

LiquidAreaDamageTemplates.flamethrower_spread = function (angle)
	return math.max((1 - angle / math.pi)^2, 0)
end

LiquidAreaDamageTemplates.bile_troll_vomit_init = function (self, t)
	local troll_unit = self._source_attacker_unit

	if HEALTH_ALIVE[troll_unit] then
		local world = self._world
		local tongue_node = Unit.node(troll_unit, "j_tongue_01")
		local tongue_pos = Unit.world_position(troll_unit, tongue_node)
		local vomit_unit_name = "units/weapons/enemy/wpn_troll_vomit/wpn_troll_vomit"
		local unit_spawner = Managers.state.unit_spawner
		local vomit_unit = unit_spawner:spawn_local_unit(vomit_unit_name, tongue_pos, nil, nil)

		World.link_unit(world, vomit_unit, troll_unit, tongue_node)
		Unit.flow_event(vomit_unit, "fade_in")

		self._vomit_unit = vomit_unit

		local action = BreedActions.chaos_troll.vomit
		local firing_time = action.firing_time

		self._firing_time_deadline = t + firing_time
	end
end

LiquidAreaDamageTemplates.vs_bile_troll_vomit_init = function (self, t)
	local troll_unit = self._source_attacker_unit

	if HEALTH_ALIVE[troll_unit] then
		local world = self._world
		local vomit_unit_name = "units/weapons/enemy/wpn_troll_vomit/wpn_troll_vomit"
		local unit_spawner = Managers.state.unit_spawner
		local vomit_unit
		local player = Managers.player:unit_owner(troll_unit)

		if player and player.remote then
			local tongue_node = Unit.node(troll_unit, "j_tongue_01")
			local tongue_pos = Unit.world_position(troll_unit, tongue_node)

			vomit_unit = unit_spawner:spawn_local_unit(vomit_unit_name, tongue_pos, nil, nil)

			World.link_unit(world, vomit_unit, troll_unit, tongue_node)
			Unit.flow_event(vomit_unit, "fade_in")

			self._fade_out_vomit = true
		else
			local first_person_extension = ScriptUnit.has_extension(troll_unit, "first_person_system")
			local local_player = Managers.player:local_player()

			if local_player then
				local vp_name = local_player.viewport_name
				local vp = ScriptWorld.viewport(self._world, vp_name, true)
				local camera = ScriptViewport.camera(vp)
				local camera_unit = Camera.get_data(camera, "unit")
				local camera_position = first_person_extension:current_position()

				vomit_unit = unit_spawner:spawn_local_unit(vomit_unit_name, camera_position, nil, nil)

				World.link_unit(world, vomit_unit, camera_unit, 0)
				Unit.set_local_position(vomit_unit, 0, Vector3(0, 0, -0.5))
				Unit.set_local_rotation(vomit_unit, 0, Quaternion.axis_angle(Vector3.up(), math.pi / 2))
				Unit.flow_event(vomit_unit, "spawn_1p_effect")
			end
		end

		self._vomit_unit = vomit_unit

		local action = BreedActions.chaos_troll.vomit
		local firing_time = action.firing_time

		self._firing_time_deadline = t + firing_time
	end
end

LiquidAreaDamageTemplates.nurgle_noxious_init = function (self, t)
	local unit = self._source_attacker_unit

	if HEALTH_ALIVE[unit] then
		local world = self._world
		local node = Unit.node(unit, "j_spine")
		local pos = Unit.world_position(unit, node)
		local rotation

		if self._flow_dir then
			local dir = self._flow_dir:unbox()

			rotation = Quaternion.look(dir, Vector3.up())
		else
			rotation = Quaternion.identity()
		end

		local vomit_unit_name = "units/weapons/enemy/wpn_troll_vomit/wpn_troll_vomit"
		local unit_spawner = Managers.state.unit_spawner
		local vomit_unit = unit_spawner:spawn_local_unit(vomit_unit_name, pos, nil, nil)

		World.link_unit(world, vomit_unit, unit, node)
		Unit.set_local_scale(vomit_unit, 0, Vector3(0.6, 0.6, 0.6))
		Unit.flow_event(vomit_unit, "fade_in")

		self._vomit_unit = vomit_unit
		self._firing_time_deadline = t + 1
	end
end

LiquidAreaDamageTemplates.bile_troll_vomit_update = function (self, t, dt)
	local vomit_unit = self._vomit_unit
	local troll_unit = self._source_attacker_unit
	local source_unit_is_alive = HEALTH_ALIVE[troll_unit]
	local firing_time_deadline = self._firing_time_deadline

	if source_unit_is_alive and vomit_unit ~= nil and t < firing_time_deadline then
		return true
	else
		if vomit_unit ~= nil then
			Unit.flow_event(vomit_unit, "fade_out")

			self._vomit_unit = nil
		end

		return false
	end
end

LiquidAreaDamageTemplates.vs_bile_troll_vomit_update = function (self, t, dt)
	local vomit_unit = self._vomit_unit
	local troll_unit = self._source_attacker_unit
	local source_unit_is_alive = HEALTH_ALIVE[troll_unit]
	local firing_time_deadline = self._firing_time_deadline

	if source_unit_is_alive and vomit_unit ~= nil and t < firing_time_deadline then
		return true
	else
		if vomit_unit ~= nil then
			if self._fade_out_vomit then
				Unit.flow_event(vomit_unit, "fade_out")
			end

			self._vomit_unit = nil
		end

		return false
	end
end

LiquidAreaDamageTemplates.bile_troll_vomit_ground_base_condition = function (unit)
	local buff_extension = ScriptUnit.has_extension(unit, "buff_system")

	return not buff_extension:has_buff_type("troll_bile_face")
end

LiquidAreaDamageTemplates.stormfiend_warpfire_ground_base_condition = function (unit)
	local buff_extension = ScriptUnit.has_extension(unit, "buff_system")

	return not buff_extension:has_buff_type("stormfiend_warpfire_face")
end
