# 命名：3
# 説明：（説明未記載）
# >/function neofunction:entity/skill/jump_burst/2_schedule
# =/function neofunction:entity/skill/jump_burst/3

playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 0.7
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:5f,Duration:2,custom_particle:{type:"minecraft:poof"},Passengers:[{id:"area_effect_cloud",Radius:0.000001f,Duration:2,custom_particle:{type:"minecraft:explosion_emitter"}}]}

execute if entity @s[tag=!JumpBurstNoG] run data modify entity @s NoGravity set value 0b
execute if entity @s[tag=JumpBurstNoG] run tag @s remove JumpBurstNoG
execute store result storage neofunction:skill/jump_burst Damage float 0.1 run attribute @s attack_damage get 10
function neofunction:entity/skill/jump_burst/3_macro with storage neofunction:skill/jump_burst
data modify entity @s fall_distance set value 0f
tag @s remove JumpBurst2