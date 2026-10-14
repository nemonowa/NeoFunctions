# 命名：orbit4
# 説明：【追加：2026-10-13 ルブラ編】黒い心臓 4 つを回す：顎の真ん中から半径 14 マス、等しい角度で。高さは互い違い
# 実行条件：実行者・実行位置 回す向きの印
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/orbit4

# 内容
tp @s ~ ~ ~ ~1 0
execute rotated ~ 0 positioned ^ ^ ^14 run tp @e[type=ghast,tag=rubra_heart1] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart1] at @s run tp @e[type=item_display,tag=rubra_heart_v1] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart1] run kill @e[type=item_display,tag=rubra_heart_v1]
execute rotated ~90 0 positioned ^ ^3 ^14 run tp @e[type=ghast,tag=rubra_heart2] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart2] at @s run tp @e[type=item_display,tag=rubra_heart_v2] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart2] run kill @e[type=item_display,tag=rubra_heart_v2]
execute rotated ~180 0 positioned ^ ^ ^14 run tp @e[type=ghast,tag=rubra_heart3] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart3] at @s run tp @e[type=item_display,tag=rubra_heart_v3] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart3] run kill @e[type=item_display,tag=rubra_heart_v3]
execute rotated ~270 0 positioned ^ ^3 ^14 run tp @e[type=ghast,tag=rubra_heart4] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart4] at @s run tp @e[type=item_display,tag=rubra_heart_v4] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart4] run kill @e[type=item_display,tag=rubra_heart_v4]
