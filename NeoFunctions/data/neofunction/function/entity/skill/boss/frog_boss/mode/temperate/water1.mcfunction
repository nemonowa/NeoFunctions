# 命名：water1
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/water1


fill 683 -54 2107 621 -54 2169 water keep
fill 683 -54 2107 621 -54 2169 mud_brick_slab[type=bottom,waterlogged=true] replace mud_brick_slab[type=bottom]
fill 683 -54 2107 621 -54 2169 mossy_cobblestone_slab[type=bottom,waterlogged=true] replace mossy_cobblestone_slab[type=bottom]
playsound item.bucket.empty hostile @a[distance=..31] ~ ~ ~ 100 0.6
