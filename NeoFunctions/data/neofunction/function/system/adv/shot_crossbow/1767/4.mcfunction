# 命名：1767/4
# 説明：肆ノ型 桜雨
# >/function neofunction:system/adv/shot_crossbow/1767
# =/function neofunction:system/adv/shot_crossbow/1767/4


# 内容
tag @s add sakura4
scoreboard players add @a[tag=sakura4] CT 1
effect give @a[tag=sakura4,scores={CT=1}] minecraft:levitation 1 14 true
execute at @a[tag=sakura4,scores={CT=11..20}] run particle minecraft:sweep_attack ~ ~-6 ~ 5 5 5 0 50 normal
execute at @a[tag=sakura4,scores={CT=11..20}] run particle minecraft:dripping_water ~ ~-6 ~ 5 5 5 1 50 normal
execute at @a[tag=sakura4,scores={CT=11..20}] run particle minecraft:cherry_leaves ~ ~-6 ~ 5 5 5 1 50 normal
execute at @a[tag=sakura4,scores={CT=11..20}] run playsound minecraft:entity.player.attack.sweep player @a[distance=..20] ~ ~ ~ 1 1
execute at @a[tag=sakura4,scores={CT=11..20}] positioned ~ ~-6 ~ as @e[tag=enemy,distance=..14] run damage @s 10 minecraft:player_attack by @p[tag=sakura4]
effect give @a[tag=sakura4,scores={CT=16}] minecraft:jump_boost 1 255 true
execute if entity @a[tag=sakura4,scores={CT=..20}] run return run schedule function neofunction:system/adv/shot_crossbow/1767/4 2t append
execute as @a[tag=sakura4,scores={CT=18..}] run scoreboard players set @s CT 4
execute as @a[tag=sakura4,scores={CT=18..}] run tag @s remove sakura4









