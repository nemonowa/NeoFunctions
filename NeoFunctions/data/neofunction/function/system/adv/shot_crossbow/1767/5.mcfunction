# 命名：1767/5
# 説明：伍ノ型 鏡花水月
# >/function neofunction:system/adv/shot_crossbow/1767
# =/function neofunction:system/adv/shot_crossbow/1767/5


# 内容
tag @s add sakura5
scoreboard players add @a[tag=sakura5] CT 1
effect give @a[tag=sakura5,scores={CT=1}] minecraft:levitation 1 255 true
execute as @a[tag=sakura5,scores={CT=1}] at @s anchored eyes positioned ^ ^ ^2 rotated ~ ~-90 run function neofunction:asset/particle/circle/item1767/1m
execute as @a[tag=sakura5,scores={CT=2}] at @s anchored eyes positioned ^ ^ ^2 rotated ~ ~-90 run function neofunction:asset/particle/circle/item1767/2m
execute as @a[tag=sakura5,scores={CT=3}] at @s anchored eyes positioned ^ ^ ^2 rotated ~ ~-90 run function neofunction:asset/particle/circle/item1767/3m
execute as @a[tag=sakura5,scores={CT=4}] at @s anchored eyes positioned ^ ^ ^2 rotated ~ ~-90 run function neofunction:asset/particle/circle/item1767/4m
execute as @a[tag=sakura5,scores={CT=5}] at @s anchored eyes positioned ^ ^ ^2 rotated ~ ~-90 run function neofunction:asset/particle/circle/item1767/5m
execute at @a[tag=sakura5,scores={CT=1}] run playsound minecraft:entity.player.swim player @a[distance=..8] ~ ~ ~ 1 1.4
execute at @a[tag=sakura5,scores={CT=3}] run playsound minecraft:entity.player.swim player @a[distance=..8] ~ ~ ~ 1 1.4
execute at @a[tag=sakura5,scores={CT=5}] run playsound minecraft:entity.player.swim player @a[distance=..8] ~ ~ ~ 1 1.4

execute as @a[tag=sakura5,scores={CT=6}] at @s run tp @s ^ ^2 ^7 ~-180 ~
execute as @a[tag=sakura5,scores={CT=8}] at @s anchored eyes run function neofunction:asset/particle/circle/item1767/verticalhalf5m
execute as @a[tag=sakura5,scores={CT=7}] at @s anchored eyes run function neofunction:asset/particle/circle/item1767/verticalhalf3m
execute at @a[tag=sakura5,scores={CT=7}] run playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 0.5
execute at @a[tag=sakura5,scores={CT=7..9}] anchored eyes positioned ^ ^ ^3 as @e[tag=enemy,distance=..6] run damage @s 10 minecraft:player_attack by @p[tag=sakura5]
execute at @a[tag=sakura5,scores={CT=7..9}] run particle minecraft:cherry_leaves ~ ~ ~ 2 2 2 0 30 normal

execute if entity @a[tag=sakura5,scores={CT=..9}] run return run schedule function neofunction:system/adv/shot_crossbow/1767/5 2t append

execute as @a[tag=sakura5,scores={CT=10..}] run scoreboard players set @s CT 4
execute as @a[tag=sakura5,scores={CT=10..}] run tag @s remove sakura5