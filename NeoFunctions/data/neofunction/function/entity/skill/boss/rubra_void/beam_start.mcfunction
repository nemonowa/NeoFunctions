# 命名：beam_start
# 説明：【追加：2026-10-13 ルブラ編】床を薙ぐ光線の始まり：向きをでたらめに決め、1.5 秒の予告（赤い線）のあと、3 秒かけて 180 度薙ぐ（a＝8）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_void/attack2
# >/function neofunction:entity/skill/boss/rubra_void/attack3
# =/function neofunction:entity/skill/boss/rubra_void/beam_start

# 内容
execute store result storage neofunction:rubra fin.b0 int 1 run random value 0..359
data modify storage neofunction:rubra fin merge value {a:8,c:90}
tag @a remove rubra_beamhit
playsound minecraft:block.beacon.ambient hostile @a[distance=..160] ~ ~ ~ 3 0.5
title @a[distance=..160] actionbar {"text":"床を薙ぐ光線が来る――赤い線を見て、跳べ！","color":"#FF6B6B","bold":true}
