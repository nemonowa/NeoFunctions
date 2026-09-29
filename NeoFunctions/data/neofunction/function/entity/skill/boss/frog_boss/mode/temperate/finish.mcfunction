# 命名：finish
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/finish

kill @e[tag=AttackBasis]
kill @e[tag=AttackPoint]
fill 683 -54 2107 621 -53 2169 air replace water
fill 683 -54 2107 621 -54 2169 mud_brick_slab[type=bottom,waterlogged=false] replace mud_brick_slab[waterlogged=true]
fill 683 -54 2107 621 -53 2169 mossy_cobblestone_slab[type=bottom,waterlogged=false] replace mossy_cobblestone_slab[waterlogged=true]
