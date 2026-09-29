# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/sieraboss/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/sieraboss/play

playsound minecraft:neo/asset/peritune/sieraboss/1 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/2 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/3 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/4 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/5 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/6 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/7 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/8 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/9 record @s ~ ~ ~ 0.4 1.3
playsound minecraft:neo/asset/peritune/sieraboss/10 record @s ~ ~ ~ 0.4 1.3
scoreboard players operation @s MusicTimer = #Sieraboss MusicTimer
tag @s add MusicSieraboss
title @s actionbar {"text": "再生中：SenceTragic - Peritune","color": "green","bold": true}

execute unless data storage neofunction:music Music{Sieraboss:1b} run schedule function neofunction:system/music/sieraboss/1s 1s
execute unless data storage neofunction:music Music{Sieraboss:1b} run data modify storage neofunction:music Music.Sieraboss set value 1b
