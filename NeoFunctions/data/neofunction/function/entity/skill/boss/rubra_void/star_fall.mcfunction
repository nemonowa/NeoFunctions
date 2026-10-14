# 命名：star_fall
# 説明：【追加：2026-10-13 ルブラ編】小さな黒星 1 つ：0.6 マス落ちる（【変更：2026-10-13】1 → 0.6、ゆっくりに）。足もと（y200.2）に半径 3 の赤い輪。y201 まで来たら着弾（star_hit）。舞台の外へ落ちたら消える
# 実行条件：実行者・実行位置 小さな黒星
# >/function neofunction:entity/skill/boss/rubra_void/star_tick
# =/function neofunction:entity/skill/boss/rubra_void/star_fall

# 内容
tp @s ~ ~-0.6 ~
particle minecraft:dust{color:[1.0,0.15,0.2],scale:1.2} ~ 200.2 ~ 1.6 0 1.6 0 3 force @a[distance=..96]
particle minecraft:squid_ink ~ ~ ~ 0.3 0.3 0.3 0.01 2 force @a[distance=..96]
# 高さで着弾を見る（表示エンティティは当たり判定の大きさが 0 なので、範囲の指定 y=・dy= では選べない）
execute store result score #rv_sy temp run data get entity @s Pos[1]
execute if score #rv_sy temp matches ..201 if score #rv_sy temp matches 150.. positioned ~ 200 ~ run function neofunction:entity/skill/boss/rubra_void/star_hit
execute if score #rv_sy temp matches ..201 run kill @s
