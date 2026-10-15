# 命名：ult_shot
# 説明：黒い槍：本体から、舞台の上にいる人それぞれへ 3 方向の扇（6 度ずつ）で速い黒い弾（ublt）を撃つ
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_shot

# 内容
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s run function neofunction:entity/skill/boss/rubra_void/ult_shot_one
playsound minecraft:entity.wither.shoot hostile @a[distance=..200] ~ ~ ~ 3 1.2
