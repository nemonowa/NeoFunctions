# 命名：aec
# 説明：
# >/function neofunction:entity/skill/lava_fishing
# =/function neofunction:entity/skill/lava_fishing/aec

execute if block ~ ~0.6 ~ lava run tp @s ~ ~0.1 ~
execute store result entity @s Duration int 1 run data get entity @s Duration 0.99999

execute if data entity @s {Duration:1} run tag @s add lava_fishing_catch
execute if data entity @s {Duration:1} run tag @s remove lava_fishing_wait
execute if data entity @s {Duration:1} run data modify entity @s Duration set value 100

execute unless entity @s[tag=lava_fishing_catch] run return 0

execute store result score #Calc1 temp run data get entity @s Duration
scoreboard players remove #Calc1 temp 40
execute store result storage neofunction:lava_fishing Distance float 0.1 run scoreboard players get #Calc1 temp
execute if score #Calc1 temp matches 1.. run function neofunction:entity/skill/lava_fishing/macro with storage neofunction:lava_fishing
execute store result score #Calc2 temp run data get entity @s Rotation[0]
execute if score #Calc1 temp matches 17.. store result score #Calc3 temp run random value -5..5
execute if score #Calc1 temp matches ..16 store result score #Calc3 temp run random value -20..20
scoreboard players operation #Calc2 temp += #Calc3 temp
execute store result entity @s Rotation[0] float 1 run scoreboard players get #Calc2 temp

execute if score #Calc1 temp matches 0 run playsound entity.fishing_bobber.splash neutral @a[distance=..16] ~ ~ ~ 0.4 1
execute if score #Calc1 temp matches 0 run playsound block.lava.extinguish neutral @a[distance=..16] ~ ~ ~ 0.4 0.5

execute if score #Calc1 temp matches -2..0 run tp @s ~ ~-0.2 ~
execute if score #Calc1 temp matches -3 run tp @s ~ ~-0.1 ~
execute if score #Calc1 temp matches -4 run tp @s ~ ~0.1 ~
execute if score #Calc1 temp matches -7..-5 run tp @s ~ ~0.2 ~

execute unless predicate neofunction:downer if score #Calc1 temp matches ..-1 run function neofunction:entity/skill/lava_fishing/catch

execute if data entity @s {Duration:2} run kill @s