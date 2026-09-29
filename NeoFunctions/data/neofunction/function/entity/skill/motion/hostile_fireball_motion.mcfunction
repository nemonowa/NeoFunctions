# 命名：hostile_fireball_motion
# 説明：
# >
# =/function neofunction:entity/skill/motion/hostile_fireball_motion
execute store result score #CalcX1 temp run data get entity @s Pos[0] 300
execute store result score #CalcY1 temp run data get entity @s Pos[1] 300
execute store result score #CalcZ1 temp run data get entity @s Pos[2] 300

execute at @s facing entity @p[gamemode=!spectator] feet run teleport @s ^ ^ ^0.1

execute store result score #CalcX2 temp run data get entity @s Pos[0] 300
execute store result score #CalcY2 temp run data get entity @s Pos[1] 300
execute store result score #CalcZ2 temp run data get entity @s Pos[2] 300

execute store result entity @s power[0] double 0.005 run scoreboard players operation #CalcX2 temp -= #CalcX1 temp
execute store result entity @s power[1] double 0.005 run scoreboard players operation #CalcY2 temp -= #CalcY1 temp
execute store result entity @s power[2] double 0.005 run scoreboard players operation #CalcZ2 temp -= #CalcZ1 temp

data modify entity @s Owner set from entity @e[type=ghast,limit=1,sort=nearest] UUID

tag @s remove needsMotion