# 命名：1500backstep
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/motion/1500backstep
particle cloud ~ ~ ~ 0.5 0.5 0.5 0.05 4

execute store result score @s motionX1 run data get entity @s Pos[0] 1500
execute store result score @s motionY1 run data get entity @s Pos[1] 1500
execute store result score @s motionZ1 run data get entity @s Pos[2] 1500

execute at @s facing entity @p[gamemode=!spectator] eyes run teleport @s ^ ^ ^-0.1

execute store result score @s motionX2 run data get entity @s Pos[0] 1500
execute store result score @s motionY2 run data get entity @s Pos[1] 1500
execute store result score @s motionZ2 run data get entity @s Pos[2] 1500

execute at @s facing entity @p[gamemode=!spectator] eyes run teleport @s ^ ^ ^0.1

execute store result entity @s Motion[0] double 0.010 run scoreboard players operation @s motionX2 -= @s motionX1
execute store result entity @s Motion[1] double -0.010 run scoreboard players operation @s motionY2 -= @s motionY1
execute store result entity @s Motion[2] double 0.010 run scoreboard players operation @s motionZ2 -= @s motionZ1

playsound minecraft:entity.zombie.step ambient @a ~ ~ ~ 2 1