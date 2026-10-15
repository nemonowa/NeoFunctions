# 命名：star_big_fall
# 説明：巨大な黒星：0.35 マス落ちる（0.6 → 0.35、ゆっくりに）。舞台の真ん中に半径 9 の赤い輪の予告。y204 まで来たら着弾（star_big_hit）
# 実行条件：実行者・実行位置 巨大な黒星（1 つめ）
# >/function neofunction:entity/skill/boss/rubra_void/star_tick
# =/function neofunction:entity/skill/boss/rubra_void/star_big_fall

# 内容
execute as @e[type=block_display,tag=rubra_bstar_big] at @s run tp @s ~ ~-0.35 ~
particle minecraft:dust{color:[1.0,0.1,0.15],scale:2.5} 921.5 200.3 3282.5 5 0 5 0 30 force @a[distance=..160]
particle minecraft:sculk_soul ~ ~ ~ 3 3 3 0.05 6 force @a[distance=..160]
execute store result score #rv_sy temp run data get entity @s Pos[1]
execute if score #rv_sy temp matches ..204 run function neofunction:entity/skill/boss/rubra_void/star_big_hit
