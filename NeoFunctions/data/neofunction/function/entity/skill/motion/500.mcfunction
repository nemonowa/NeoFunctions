# 命名：mid_high_speed
# 説明：
# >
# =/function neofunction:entity/skill/motion/500
execute store result score #CalcX1 temp run data get entity @s Pos[0] 500
execute store result score #CalcY1 temp run data get entity @s Pos[1] 500
execute store result score #CalcZ1 temp run data get entity @s Pos[2] 500

# includes some adjustment for gravity effects
execute at @s facing entity @p[gamemode=!spectator] eyes run teleport @s ^ ^0.005 ^0.1

execute store result score #CalcX2 temp run data get entity @s Pos[0] 500
execute store result score #CalcY2 temp run data get entity @s Pos[1] 500
execute store result score #CalcZ2 temp run data get entity @s Pos[2] 500

execute store result entity @s Motion[0] double 0.010 run scoreboard players operation #CalcX2 temp -= #CalcX1 temp
execute store result entity @s Motion[1] double 0.010 run scoreboard players operation #CalcY2 temp -= #CalcY1 temp
execute store result entity @s Motion[2] double 0.010 run scoreboard players operation #CalcZ2 temp -= #CalcZ1 temp

tag @s remove needsMotion