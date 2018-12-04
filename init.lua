more_walls = {}

more_walls.register_wall = function(node, name)
	local node_def           = minetest.registered_nodes['default:' .. node]
	local wall_mat           = 'default:' .. node
	local wall_name          = 'more_walls:' .. node .. '_wall'
	local wall_desc          = name .. " Wall"
	local wall_texture_table = node_def.tiles
	local wall_sounds        = node_def.sounds
	local wall_groups        = node_def.groups
	walls.register(wall_name, wall_desc, wall_texture_table, wall_mat, wall_sounds)
	wall_groups['wall'] = 1
	minetest.override_item(wall_name, {groups = wall_groups})
end

local function transparent(node)
	minetest.override_item("more_walls:" .. node .. '_wall', {
		sunlight_propagates = true,
	})
end

local nodenames = {
	stone                     = 'Stone',
	stonebrick                = 'Stone Brick',
	stone_block               = 'Stone Block',
	desert_stone              = 'Desert Stone',
	desert_stonebrick         = 'Desert Stone Brick',
	desert_stone_block        = 'Desert Stone Block',
	sandstone                 = 'Sandstone',
	sandstonebrick            = 'Sandstone Brick',
	sandstone_block           = 'Sandstone Block',
	desert_sandstone          = 'Desert Sandstone',
	desert_sandstone_brick    = 'Desert Sandstone Brick',
	desert_sandstone_block    = 'Desert Sandstone Block',
	silver_sandstone          = 'Silver Sandstone',
	silver_sandstone_brick    = 'Silver Sandstone Brick',
	silver_sandstone_block    = 'Silver Sandstone Block',
	obsidian                  = 'Obsidian',
	obsidianbrick             = 'Obsidian Brick',
	obsidian_block            = 'Obsidian Block',
	dirt                      = 'Dirt',
	ice                       = 'Ice',
	tree                      = 'Apple Tree',
	wood                      = 'Wood',
	jungletree                = 'Jungle Tree',
	junglewood                = 'Jungle Wood',
	pine_tree                 = 'Pine Tree',
	pine_wood                 = 'Pine Wood',
	acacia_tree               = 'Acacia Tree',
	acacia_wood               = 'Acacia Wood',
	aspen_tree                = 'Aspen Tree',
	aspen_wood                = 'Aspen Wood',
	cactus                    = 'Cactus',
	coral_brown               = 'Brown Coral',
	coral_orange              = 'Orange Coral',
	coral_skeleton            = 'Coral Skeleton',
	coalblock                 = 'Coal',
	steelblock                = 'Steel',
	copperblock               = 'Copper',
	tinblock                  = 'Tin',
	bronzeblock               = 'Bronze',
	goldblock                 = 'Gold',
	mese                      = 'Mese',
	diamondblock              = 'Diamond'
}

for node, name in pairs (nodenames) do
	more_walls.register_wall(node, name)
end

