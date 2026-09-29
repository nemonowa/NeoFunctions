# 命名：1767/3
# 説明：参ノ型 零れ桜
# >/function neofunction:system/adv/shot_crossbow/1767
# =/function neofunction:system/adv/shot_crossbow/1767/3


# 内容
tag @s add sakura3
scoreboard players add @a[tag=sakura3] CT 1
effect give @a[tag=sakura3,scores={CT=1}] minecraft:levitation 1 13 true
execute at @a[tag=sakura3,scores={CT=1..10}] run particle minecraft:cherry_leaves ~ ~1 ~ 2 2 2 0 40 normal
execute at @a[tag=sakura3,scores={CT=11..17}] run particle minecraft:end_rod ~ ~1 ~ 0.35 0.35 0.35 0 10 normal
execute as @a[tag=sakura3,scores={CT=11..17}] at @s run function neofunction:system/motion/player/lookingat {vertex:7}
execute at @a[tag=sakura3,scores={CT=11..17}] as @e[tag=enemy,distance=..5] run damage @s 10 minecraft:player_attack by @p[tag=sakura3]
effect give @a[tag=sakura3,scores={CT=13}] minecraft:levitation 1 150 true
effect give @a[tag=sakura3,scores={CT=13}] minecraft:jump_boost 1 255 true
execute if entity @a[tag=sakura3,scores={CT=..17}] run return run schedule function neofunction:system/adv/shot_crossbow/1767/3 2t append
execute as @a[tag=sakura3,scores={CT=18..}] run scoreboard players set @s CT 4
execute as @a[tag=sakura3,scores={CT=18..}] run tag @s remove sakura3









