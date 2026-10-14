# 命名：blt_tick
# 説明：【追加：2026-10-13 ルブラ編】黒い弾 1 つ（毎 tick）：前へ進み、人に当たると 5 ダメージで消える。柱にぶつかるか、舞台の外（真ん中から 34 マス）で消える
# 実行条件：実行者・実行位置 黒い弾
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/blt_tick

# 内容
tp @s ^ ^ ^0.45
particle minecraft:dust{color:[0.15,0.05,0.25],scale:1.4} ~ ~ ~ 0.05 0.05 0.05 0 1 force @a[distance=..96]
execute if entity @a[distance=..1.0,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_void/blt_hit
execute unless block ~ ~ ~ #minecraft:replaceable run return run kill @s
execute unless entity @e[type=marker,tag=rubra_sky_center,distance=..34] run kill @s
