# 命名：make_list
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/make_list
 # make_list.mcfunction
 # 
 #
 # Created by .
##

# 重複しないようにリセット
data modify storage admin:btd NormalList set value []
data modify storage admin:btd StateList set value []
data modify storage admin:btd State set value {}
data modify storage admin:btd States set value {}

# 汎用
function neofunction:asset/nbt/for {Function:"admin:block_to_display/make_list/woods",List:["oak","spruce","birch","jungle","acacia","dark_oak","mangrove","cherry","bamboo"]}
# BlockStateを持たないブロックたち
# 形式：ブロック名をリストに追加
data modify storage admin:btd NormalList append value "stone"
data modify storage admin:btd NormalList append value "dirt"
data modify storage admin:btd NormalList append value "polished_blackstone_bricks"
data modify storage admin:btd NormalList append value "black_carpet"
data modify storage admin:btd NormalList append value "white_wool"
data modify storage admin:btd NormalList append value "lime_wool"
data modify storage admin:btd NormalList append value "black_wool"
data modify storage admin:btd NormalList append value "gray_wool"
data modify storage admin:btd NormalList append value "red_wool"
data modify storage admin:btd NormalList append value "jungle_planks"
data modify storage admin:btd NormalList append value "end_stone_bricks"
data modify storage admin:btd NormalList append value "red_nether_bricks"
data modify storage admin:btd NormalList append value "brown_wool"
data modify storage admin:btd NormalList append value "raw_gold_block"
data modify storage admin:btd NormalList append value "sandstone"
data modify storage admin:btd NormalList append value "gold_block"
data modify storage admin:btd NormalList append value "gold"

# BlockStateを持つブロックたち
# 形式：ブロック名をリストに追加、State.ブロック名にPropertyの種類を記述、States.ブロック名.プロパティ名にそこプロパティが取りうる値を記述
data modify storage admin:btd StateList append value "grass_block"
data modify storage admin:btd State.grass_block set value ["snowy"]
data modify storage admin:btd States.grass_block set value {snowy:["true","false"]}

data modify storage admin:btd StateList append value "deepslate"
data modify storage admin:btd State.deepslate set value ["axis"]
data modify storage admin:btd States.deepslate set value {axis:["x","y","z"]}

data modify storage admin:btd StateList append value "grindstone"
data modify storage admin:btd State.grindstone set value ["face","facing"]
data modify storage admin:btd States.grindstone set value {facing:["east","west","south","north"],face:["floor","wall","ceiling"]}

data modify storage admin:btd StateList append value "polished_andesite_stairs"
data modify storage admin:btd State.polished_andesite_stairs set value ["facing","half","shape"]
data modify storage admin:btd States.polished_andesite_stairs set value {facing:["east","west","south","north"],half:["top","bottom"],shape:["straight","inner_left","inner_right","outer_left","outer_right"]}

data modify storage admin:btd StateList append value "lightning_rod"
data modify storage admin:btd State.lightning_rod set value ["facing","powered"]
data modify storage admin:btd States.lightning_rod set value {facing:["east","west","south","north","up","down"],powered:["true","false"]}

data modify storage admin:btd StateList append value "black_stained_glass_pane"
data modify storage admin:btd State.black_stained_glass_pane set value ["east","north","south","west"]
data modify storage admin:btd States.black_stained_glass_pane set value {east:["true","false"],north:["true","false"],south:["true","false"],west:["true","false"]}

data modify storage admin:btd StateList append value "polished_blackstone_brick_stairs"
data modify storage admin:btd State.polished_blackstone_brick_stairs set value ["facing","half","shape"]
data modify storage admin:btd States.polished_blackstone_brick_stairs set value {facing:["east","west","south","north"],half:["top","bottom"],shape:["straight","inner_left","inner_right","outer_left","outer_right"]}

data modify storage admin:btd StateList append value "polished_blackstone_brick_slab"
data modify storage admin:btd State.polished_blackstone_brick_slab set value ["type"]
data modify storage admin:btd States.polished_blackstone_brick_slab set value {type:["bottom","top","double"]}

data modify storage admin:btd StateList append value "anvil"
data modify storage admin:btd State.anvil set value ["facing"]
data modify storage admin:btd States.anvil set value {facing:["east","west","south","north"]}

data modify storage admin:btd StateList append value "hopper"
data modify storage admin:btd State.hopper set value ["facing"]
data modify storage admin:btd States.hopper set value {facing:["east","west","south","north"]}

data modify storage admin:btd StateList append value "structure_block"
data modify storage admin:btd State.structure_block set value ["mode"]
data modify storage admin:btd States.structure_block set value {facing:["load","save","corner","data"]}

data modify storage admin:btd StateList append value "campfire"
data modify storage admin:btd State.campfire set value ["facing","lit"]
data modify storage admin:btd States.campfire set value {facing:["east","west","south","north"],lit:["true","false"]}

data modify storage admin:btd StateList append value "end_stone_brick_stairs"
data modify storage admin:btd State.end_stone_brick_stairs set value ["facing","half","shape"]
data modify storage admin:btd States.end_stone_brick_stairs set value {facing:["east","west","south","north"],half:["top","bottom"],shape:["straight","inner_left","inner_right","outer_left","outer_right"]}

data modify storage admin:btd StateList append value "end_stone_brick_wall"
data modify storage admin:btd State.end_stone_brick_wall set value ["east","north","south","west","up"]
data modify storage admin:btd States.end_stone_brick_wall set value {east:["true","false"],north:["true","false"],south:["true","false"],west:["true","false"],up:["true","false"]}

data modify storage admin:btd StateList append value "red_nether_brick_stairs"
data modify storage admin:btd State.red_nether_brick_stairs set value ["facing","half","shape"]
data modify storage admin:btd States.red_nether_brick_stairs set value {facing:["east","west","south","north"],half:["top","bottom"],shape:["straight","inner_left","inner_right","outer_left","outer_right"]}

data modify storage admin:btd StateList append value "red_nether_brick_wall"
data modify storage admin:btd State.red_nether_brick_wall set value ["east","north","south","west","up"]
data modify storage admin:btd States.red_nether_brick_wall set value {east:["true","false"],north:["true","false"],south:["true","false"],west:["true","false"],up:["true","false"]}

data modify storage admin:btd StateList append value "blue_glazed_terracotta"
data modify storage admin:btd State.blue_glazed_terracotta set value ["facing"]
data modify storage admin:btd States.blue_glazed_terracotta set value {facing:["east","west","south","north"]}

data modify storage admin:btd StateList append value "yellow_glazed_terracotta"
data modify storage admin:btd State.yellow_glazed_terracotta set value ["facing"]
data modify storage admin:btd States.yellow_glazed_terracotta set value {facing:["east","west","south","north"]}

data modify storage admin:btd StateList append value "sandstone_stairs"
data modify storage admin:btd State.sandstone_stairs set value ["facing","half","shape"]
data modify storage admin:btd States.sandstone_stairs set value {facing:["east","west","south","north"],half:["top","bottom"],shape:["straight","inner_left","inner_right","outer_left","outer_right"]}

data modify storage admin:btd StateList append value "sandstone_wall"
data modify storage admin:btd State.andstone_wall set value ["east","north","south","west","up"]
data modify storage admin:btd States.andstone_wall set value {east:["true","false"],north:["true","false"],south:["true","false"],west:["true","false"],up:["true","false"]}

data modify storage admin:btd StateList append value "sandstone_slab"
data modify storage admin:btd State.sandstone_slab set value ["type"]
data modify storage admin:btd States.sandstone_slab set value {type:["bottom","top","double"]}

data modify storage admin:btd StateList append value "lantern"
data modify storage admin:btd State.lantern set value ["hanging","waterlogged"]
data modify storage admin:btd States.lantern set value {hanging:["true","false"],waterlogged:["true","false"]}

data modify storage admin:btd StateList append value "fire"
data modify storage admin:btd State.fire set value ["up","north","south","west","east"]
data modify storage admin:btd States.fire set value {up:["true","false"],north:["true","false"],south:["true","false"],west:["true","false"],east:["true","false"]}

