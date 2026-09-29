# 命名：mid_speed_1500
# 説明：
# >
# =/function neofunction:entity/skill/motion/mid_speed_1500
execute store result score #CalcX1 temp run data get entity @s Pos[0] 1500
execute store result score #CalcY1 temp run data get entity @s Pos[1] 1500
execute store result score #CalcZ1 temp run data get entity @s Pos[2] 1500

# includes some adjustment for gravity effects
execute at @s facing entity @p[gamemode=!spectator] eyes run teleport @s ^ ^0.01 ^0.1
execute at @s facing entity @e[tag=familiar] eyes run teleport @s ^ ^0.01 ^0.1

execute store result score #CalcX2 temp run data get entity @s Pos[0] 1500
execute store result score #CalcY2 temp run data get entity @s Pos[1] 1500
execute store result score #CalcZ2 temp run data get entity @s Pos[2] 1500

execute store result entity @s Motion[0] double 0.010 run scoreboard players operation #CalcX2 temp -= #CalcX1 temp
execute store result entity @s Motion[1] double 0.010 run scoreboard players operation #CalcY2 temp -= #CalcY1 temp
execute store result entity @s Motion[2] double 0.010 run scoreboard players operation #CalcZ2 temp -= #CalcZ1 temp

data modify entity @s Owner set from entity @e[tag=shootingArrow,limit=1] UUID

tag @s remove needsMotion