# 命名：float
# 説明：【追加：2026-10-09 ルブラ編】重さが失われる：ゆっくり落ち（落下低速）、高く跳べる（跳躍力 III）。体のまわりに小さな光の粒
# 実行条件：実行者 プレイヤー（浮遊の間・球の広間）
# >/function neofunction:system/adv/tick/dungeon/rubra3
# =/function neofunction:system/adv/tick/dungeon/rubra3/float

# 内容
effect give @s minecraft:slow_falling 3 0 true
effect give @s minecraft:jump_boost 3 2 true
particle minecraft:end_rod ~ ~0.2 ~ 0.4 0.1 0.4 0.01 2 normal
execute unless entity @s[tag=rubra_floatmsg] run tellraw @s {"text":"体が、ふいに軽くなった。重さが、無い。（跳ぶと高く浮き、ゆっくり落ちる）","color":"#A8D8FF","italic":true}
tag @s add rubra_floatmsg
