# 命名：1767/6
# 説明：陸ノ型 桜吹雪一閃
# >/function neofunction:system/adv/shot_crossbow/1767
# =/function neofunction:system/adv/shot_crossbow/1767/6


# 内容
tag @s add sakura6
scoreboard players add @a[tag=sakura6] CT 1
execute as @a[tag=sakura6,scores={CT=1}] at @s anchored eyes positioned ^ ^-0.3 ^2 run function neofunction:asset/particle/circle/item1767/horizontal2m5
execute as @a[tag=sakura6,scores={CT=1}] at @s anchored eyes positioned ^ ^-0.3 ^3 run function neofunction:asset/particle/circle/item1767/horizontal2m5
execute as @a[tag=sakura6,scores={CT=1}] at @s anchored eyes positioned ^ ^-0.3 ^4 run function neofunction:asset/particle/circle/item1767/horizontal2m5
execute at @a[tag=sakura6,scores={CT=1}] run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute at @a[tag=sakura6,scores={CT=1}] run particle minecraft:cloud ~ ~ ~ 0 0 0 1 100
execute at @a[tag=sakura6,scores={CT=1..4}] anchored eyes positioned ^ ^ ^3 as @e[tag=enemy,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=sakura6]

execute at @a[tag=sakura6,scores={CT=1..5}] run playsound minecraft:block.end_gateway.spawn player @a[distance=..8] ~ ~ ~ 1 0.75
execute at @a[tag=sakura6,scores={CT=1}] anchored eyes positioned ^ ^ ^3 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @a[tag=sakura6,scores={CT=1}] anchored eyes positioned ^ ^ ^3 run particle dust{color:[1.000,0.361,0.980],scale:1} ~ ~ ~ 0.2 0.8 0.2 1 15 force
execute at @a[tag=sakura6,scores={CT=1}] anchored eyes positioned ^ ^ ^3 as @e[tag=enemy,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=sakura6]
execute at @a[tag=sakura6,scores={CT=2}] anchored eyes positioned ^ ^ ^6 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @a[tag=sakura6,scores={CT=2}] anchored eyes positioned ^ ^ ^6 run particle dust{color:[1.000,0.361,0.980],scale:1} ~ ~ ~ 0.2 0.8 0.2 1 15 force
execute at @a[tag=sakura6,scores={CT=2}] anchored eyes positioned ^ ^ ^6 as @e[tag=enemy,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=sakura6]
execute at @a[tag=sakura6,scores={CT=3}] anchored eyes positioned ^ ^ ^9 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @a[tag=sakura6,scores={CT=3}] anchored eyes positioned ^ ^ ^9 run particle dust{color:[1.000,0.361,0.980],scale:1} ~ ~ ~ 0.2 0.8 0.2 1 15 force
execute at @a[tag=sakura6,scores={CT=3}] anchored eyes positioned ^ ^ ^9 as @e[tag=enemy,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=sakura6]
execute at @a[tag=sakura6,scores={CT=4}] anchored eyes positioned ^ ^ ^12 run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute at @a[tag=sakura6,scores={CT=4}] anchored eyes positioned ^ ^ ^12 run particle dust{color:[1.000,0.361,0.980],scale:1} ~ ~ ~ 0.2 0.8 0.2 1 15 force
execute at @a[tag=sakura6,scores={CT=4}] anchored eyes positioned ^ ^ ^12 as @e[tag=enemy,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=sakura6]

execute if entity @a[tag=sakura6,scores={CT=..5}] run return run schedule function neofunction:system/adv/shot_crossbow/1767/6 2t append

execute as @a[tag=sakura6,scores={CT=6..}] run scoreboard players set @s CT 4
execute as @a[tag=sakura6,scores={CT=6..}] run tag @s remove sakura6