local LibDeflate = require("scripts/utils/lib_deflate")
local ByteArray = require("scripts/utils/byte_array")

local function encode_hero_cosmetics(cosmetics_data)
	local weapon_slot_id = NetworkLookup.equipment_slots[cosmetics_data.weapon_slot]
	local weapon_id = CosmeticUtils.get_cosmetic_id(cosmetics_data.weapon_slot, cosmetics_data.weapon)
	local weapon_pose_id = CosmeticUtils.get_cosmetic_id("slot_pose", cosmetics_data.weapon_pose)
	local weapon_pose_skin_id = CosmeticUtils.get_cosmetic_id("slot_pose_skin", cosmetics_data.weapon_pose_skin)
	local hero_skin_id = CosmeticUtils.get_cosmetic_id("slot_skin", cosmetics_data.hero_skin)
	local hat_id = CosmeticUtils.get_cosmetic_id("slot_hat", cosmetics_data.hat)
	local byte_array, index = FrameTable.alloc_table(), 1

	byte_array, index = ByteArray.write_uint8(byte_array, weapon_slot_id, index)
	byte_array, index = ByteArray.write_uint16(byte_array, weapon_id, index)
	byte_array, index = ByteArray.write_uint16(byte_array, weapon_pose_id, index)
	byte_array, index = ByteArray.write_uint16(byte_array, weapon_pose_skin_id, index)
	byte_array, index = ByteArray.write_uint16(byte_array, hero_skin_id, index)
	byte_array, index = ByteArray.write_uint16(byte_array, hat_id, index)

	local byte_array_string = ByteArray.read_string(byte_array)
	local compressed_byte_array_string = LibDeflate:CompressDeflate(byte_array_string)

	return compressed_byte_array_string
end

local function decode_hero_cosmetics(compressed_byte_array_string)
	local byte_array_string = LibDeflate:DecompressDeflate(compressed_byte_array_string)
	local byte_array = FrameTable.alloc_table()

	ByteArray.write_string(byte_array, byte_array_string)

	local weapon_slot_id, weapon_id, weapon_pose_id, weapon_pose_skin_id, hero_skin_id, hat_id
	local index = 1

	weapon_slot_id, index = ByteArray.read_uint8(byte_array, index)
	weapon_id, index = ByteArray.read_uint16(byte_array, index)
	weapon_pose_id, index = ByteArray.read_uint16(byte_array, index)
	weapon_pose_skin_id, index = ByteArray.read_uint16(byte_array, index)
	hero_skin_id, index = ByteArray.read_uint16(byte_array, index)
	hat_id, index = ByteArray.read_uint16(byte_array, index)

	local weapon_slot = NetworkLookup.equipment_slots[weapon_slot_id]

	return {
		weapon_slot = weapon_slot,
		weapon = CosmeticUtils.get_cosmetic_name(weapon_slot, weapon_id),
		weapon_pose = CosmeticUtils.get_cosmetic_name("slot_pose", weapon_pose_id),
		weapon_pose_skin = CosmeticUtils.get_cosmetic_name("slot_pose_skin", weapon_pose_skin_id),
		hero_skin = CosmeticUtils.get_cosmetic_name("slot_skin", hero_skin_id),
		hat = CosmeticUtils.get_cosmetic_name("slot_hat", hat_id)
	}
end

local spec = {
	server = {
		match_ended = {
			default_value = false,
			type = "boolean",
			composite_keys = {}
		},
		party_won_early = {
			default_value = false,
			type = "boolean",
			composite_keys = {}
		},
		match_id = {
			default_value = "missing id",
			type = "string",
			composite_keys = {}
		}
	},
	peer = {
		hero_cosmetics = {
			type = "table",
			composite_keys = {
				local_player_id = true
			},
			default_value = {},
			encode = encode_hero_cosmetics,
			decode = decode_hero_cosmetics
		}
	}
}

SharedState.validate_spec(spec)

return spec
