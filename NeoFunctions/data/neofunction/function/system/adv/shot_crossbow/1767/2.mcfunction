# 命名：1767/2
# 説明：弐ノ型 桜流し
# >/function neofunction:system/adv/shot_crossbow/1767
# =/function neofunction:system/adv/shot_crossbow/1767/2


# 内容
tag @s add sakura2
scoreboard players add @a[tag=sakura2] CT 1
execute as @a[tag=sakura2] at @s run function neofunction:system/motion/player/lookingat {vertex:7}
execute at @a[tag=sakura2] run particle minecraft:cherry_leaves ~ ~1 ~ 0.35 0.35 0.35 0 30 normal
execute at @a[tag=sakura2] as @e[tag=enemy,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=sakura2]
execute if entity @a[tag=sakura2,scores={CT=..20}] run return run schedule function neofunction:system/adv/shot_crossbow/1767/2 2t append
execute as @a[tag=sakura2,scores={CT=21..}] run scoreboard players set @s CT 4
execute as @a[tag=sakura2,scores={CT=21..}] run tag @s remove sakura2







