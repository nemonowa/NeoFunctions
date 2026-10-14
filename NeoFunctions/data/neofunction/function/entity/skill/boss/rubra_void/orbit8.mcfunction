# 命名：orbit8
# 説明：【追加：2026-10-13 ルブラ編】黒い心臓 8 つを回す：顎の真ん中から半径 18 マス、等しい角度で。高さは互い違い
# 実行条件：実行者・実行位置 回す向きの印
# >/function neofunction:entity/skill/boss/rubra_void/form3
# =/function neofunction:entity/skill/boss/rubra_void/orbit8

# 内容
tp @s ~ ~ ~ ~1.5 0
execute rotated ~ 0 positioned ^ ^ ^18 run tp @e[type=ghast,tag=rubra_heart1] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart1] at @s run tp @e[type=item_display,tag=rubra_heart_v1] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart1] run kill @e[type=item_display,tag=rubra_heart_v1]
execute rotated ~45 0 positioned ^ ^3 ^18 run tp @e[type=ghast,tag=rubra_heart2] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart2] at @s run tp @e[type=item_display,tag=rubra_heart_v2] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart2] run kill @e[type=item_display,tag=rubra_heart_v2]
execute rotated ~90 0 positioned ^ ^ ^18 run tp @e[type=ghast,tag=rubra_heart3] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart3] at @s run tp @e[type=item_display,tag=rubra_heart_v3] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart3] run kill @e[type=item_display,tag=rubra_heart_v3]
execute rotated ~135 0 positioned ^ ^3 ^18 run tp @e[type=ghast,tag=rubra_heart4] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart4] at @s run tp @e[type=item_display,tag=rubra_heart_v4] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart4] run kill @e[type=item_display,tag=rubra_heart_v4]
execute rotated ~180 0 positioned ^ ^ ^18 run tp @e[type=ghast,tag=rubra_heart5] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart5] at @s run tp @e[type=item_display,tag=rubra_heart_v5] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart5] run kill @e[type=item_display,tag=rubra_heart_v5]
execute rotated ~225 0 positioned ^ ^3 ^18 run tp @e[type=ghast,tag=rubra_heart6] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart6] at @s run tp @e[type=item_display,tag=rubra_heart_v6] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart6] run kill @e[type=item_display,tag=rubra_heart_v6]
execute rotated ~270 0 positioned ^ ^ ^18 run tp @e[type=ghast,tag=rubra_heart7] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart7] at @s run tp @e[type=item_display,tag=rubra_heart_v7] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart7] run kill @e[type=item_display,tag=rubra_heart_v7]
execute rotated ~315 0 positioned ^ ^3 ^18 run tp @e[type=ghast,tag=rubra_heart8] ~ ~ ~
execute as @e[type=ghast,tag=rubra_heart8] at @s run tp @e[type=item_display,tag=rubra_heart_v8] ~ ~ ~
execute unless entity @e[type=ghast,tag=rubra_heart8] run kill @e[type=item_display,tag=rubra_heart_v8]
