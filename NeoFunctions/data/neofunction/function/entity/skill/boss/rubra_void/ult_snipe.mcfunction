# 命名：ult_snipe
# 説明：【追加：2026-10-14 ルブラ編】狙い撃ちの黒星：舞台の上にいる人それぞれの真上の低い所（y210）に小さな黒星。約 0.8 秒で墜ちる（足もとに赤い輪の予告）。必殺技のあいだ、ずっと続けて撃ってくる
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_snipe

# 内容
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s positioned ~ 210 ~ run function neofunction:entity/skill/boss/rubra_void/star_spawn
execute positioned 921.5 200 3282.5 as @a[distance=..48,gamemode=!spectator] at @s run playsound minecraft:entity.blaze.shoot hostile @s ~ ~8 ~ 1.5 0.6
