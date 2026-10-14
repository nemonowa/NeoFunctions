# 命名：ublt_tick
# 説明：【追加：2026-10-14 ルブラ編】黒い槍 1 つ（毎 tick）：向きのまま 1 マス進む。人に当たると 7 ダメージ。床にぶつかると弾けて黒い水を 1 マス残す。舞台の下（y195）や遠く（真ん中から 70 マス）で消える
# 実行条件：実行者・実行位置 黒い槍
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/ublt_tick

# 内容
tp @s ^ ^ ^1
particle minecraft:dust{color:[0.45,0.05,0.35],scale:1.6} ~ ~ ~ 0.05 0.05 0.05 0 2 force @a[distance=..128]
particle minecraft:reverse_portal ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..128]
execute if entity @a[distance=..1.4,gamemode=!spectator] run return run function neofunction:entity/skill/boss/rubra_void/ublt_hit
execute unless block ~ ~ ~ #minecraft:replaceable run return run function neofunction:entity/skill/boss/rubra_void/ublt_ground
execute store result score #rv_sy temp run data get entity @s Pos[1]
execute if score #rv_sy temp matches ..195 run return run kill @s
execute unless entity @e[type=marker,tag=rubra_sky_center,distance=..70] run kill @s
