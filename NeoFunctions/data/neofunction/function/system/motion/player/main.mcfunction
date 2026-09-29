# 命名：playerモーション操作
# 説明：定番の爆風を利用
# >
# =/function neofunction:system/motion/player/main

# 内容：

# =375
scoreboard players set #PowerX temp 375
scoreboard players set #PowerY temp 325
scoreboard players set #PowerZ temp 375
scoreboard players operation #PowerX temp *= $100000 const
scoreboard players operation #PowerY temp *= $100000 const
scoreboard players operation #PowerZ temp *= $100000 const

$scoreboard players set #PowerDiX temp $(MotionX)
$scoreboard players set #PowerDiY temp $(MotionY)
$scoreboard players set #PowerDiZ temp $(MotionZ)
scoreboard players operation #PowerDiX temp *= $10 const
scoreboard players operation #PowerDiY temp *= $10 const
scoreboard players operation #PowerDiZ temp *= $10 const

scoreboard players operation #PowerX temp /= #PowerDiX temp
scoreboard players operation #PowerY temp /= #PowerDiY temp
scoreboard players operation #PowerZ temp /= #PowerDiZ temp

# subtick pre
summon area_effect_cloud ~ ~10000 ~ {Duration:1,Age:-1,Tags:["player_uuid"],potion_contents:{custom_effects:[{id:"minecraft:instant_damage"}]}}
summon bat ~ ~10000 ~ {Tags:["subtick_pre"],NoAI:true,Health:1}
#execute anchored eyes rotated ~ ~ positioned ^ ^ ^-0.01 run summon minecraft:creeper ~ ~1000 ~ {Silent:1b,Fuse:0,ExplosionRadius:-1b,Invulnerable:1b}

execute if score #PowerDiX temp matches ..0 run scoreboard players operation #PowerX temp *= $-1 const
execute if score #PowerDiY temp matches ..0 run scoreboard players operation #PowerY temp *= $-1 const
execute if score #PowerDiZ temp matches ..0 run scoreboard players operation #PowerZ temp *= $-1 const

execute store result storage neofunction:motion Motion.CalcX double 0.00001 run scoreboard players get #PowerX temp
execute store result storage neofunction:motion Motion.CalcY double 0.00001 run scoreboard players get #PowerY temp
execute store result storage neofunction:motion Motion.CalcZ double 0.00001 run scoreboard players get #PowerZ temp

# X
execute if score #PowerDiX temp matches 0.. run function neofunction:system/motion/player/vector/xvector with storage neofunction:motion Motion
execute if score #PowerDiX temp matches ..0 run function neofunction:system/motion/player/vector/xnvector with storage neofunction:motion Motion

# Y
execute if score #PowerDiY temp matches 0.. run function neofunction:system/motion/player/vector/yvector with storage neofunction:motion Motion

# Z
execute if score #PowerDiZ temp matches 0.. run function neofunction:system/motion/player/vector/zvector with storage neofunction:motion Motion
execute if score #PowerDiZ temp matches ..0 run function neofunction:system/motion/player/vector/znvector with storage neofunction:motion Motion

# subtick post
summon area_effect_cloud ~ ~11000 ~ {Duration:1,Age:-1,Tags:["player_uuid"],potion_contents:{custom_effects:[{id:"minecraft:instant_damage"}]}}
summon bat ~ ~11000 ~ {Tags:["subtick_post"],NoAI:true,Health:1}

data modify storage neofunction:asset concatuuid set from entity @s UUID
execute as @e[tag=player_uuid] run data modify entity @s Owner set from storage neofunction:asset concatuuid
tag @e remove player_uuid
scoreboard players reset #PowerX temp
scoreboard players reset #PowerY temp 
scoreboard players reset #PowerZ temp 
scoreboard players reset #PowerDiX temp 
scoreboard players reset #PowerDiY temp 
scoreboard players reset #PowerDiZ temp 
