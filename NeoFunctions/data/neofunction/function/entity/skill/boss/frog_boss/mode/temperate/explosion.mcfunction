# 命名：explosion
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/mode/temperate/.neo
# =/function neofunction:entity/skill/boss/frog_boss/mode/temperate/explosion

playsound entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 100 1.2
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 water replace iron_trapdoor[waterlogged=true]
fill ~-1 ~ ~-1 ~1 ~8 ~1 water
data modify entity @s view_range set value 0
