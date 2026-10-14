# 命名：orbit6
# 説明：【追加：2026-10-13 ルブラ編】黒い心臓 6 つを回す：顎の真ん中から半径 16 マス、等しい角度で。高さは互い違い
# 実行条件：実行者・実行位置 回す向きの印
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/orbit6

# 内容
tp @s ~ ~ ~ ~1.25 0
execute rotated ~ 0 positioned ^ ^ ^16 run tp @e[type=ghast,tag=rubra_heart1] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart1] at @s run tp @e[type=item_display,tag=rubra_heart_v1] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart1] run kill @e[type=item_display,tag=rubra_heart_v1]
execute rotated ~60 0 positioned ^ ^3 ^16 run tp @e[type=ghast,tag=rubra_heart2] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart2] at @s run tp @e[type=item_display,tag=rubra_heart_v2] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart2] run kill @e[type=item_display,tag=rubra_heart_v2]
execute rotated ~120 0 positioned ^ ^ ^16 run tp @e[type=ghast,tag=rubra_heart3] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart3] at @s run tp @e[type=item_display,tag=rubra_heart_v3] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart3] run kill @e[type=item_display,tag=rubra_heart_v3]
execute rotated ~180 0 positioned ^ ^3 ^16 run tp @e[type=ghast,tag=rubra_heart4] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart4] at @s run tp @e[type=item_display,tag=rubra_heart_v4] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart4] run kill @e[type=item_display,tag=rubra_heart_v4]
execute rotated ~240 0 positioned ^ ^ ^16 run tp @e[type=ghast,tag=rubra_heart5] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart5] at @s run tp @e[type=item_display,tag=rubra_heart_v5] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart5] run kill @e[type=item_display,tag=rubra_heart_v5]
execute rotated ~300 0 positioned ^ ^3 ^16 run tp @e[type=ghast,tag=rubra_heart6] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart6] at @s run tp @e[type=item_display,tag=rubra_heart_v6] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart6] run kill @e[type=item_display,tag=rubra_heart_v6]
