# 命名：ult_chase
# 説明：【追加：2026-10-13 ルブラ編】足もとを追う黒星：舞台の上にいる人それぞれの真上（y222）に小さな黒星。約 1.8 秒で墜ちる（足もとに赤い輪の予告）。止まっていると当たる
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_chase

# 内容
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 222 ~ run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s run playsound minecraft:entity.wither.shoot hostile @s ~ ~20 ~ 2 0.9
