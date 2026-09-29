# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/pastorale3/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/pastorale3/play

playsound minecraft:neo/asset/peritune/pastorale3/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/pastorale3/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #Pastorale3 MusicTimer
tag @s add MusicPastorale3
title @s actionbar {"text": "再生中：Pastorale3 - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{Pastorale3:1b} run schedule function neofunction:system/music/pastorale3/1s 1s
execute unless data storage neofunction:music Music{Pastorale3:1b} run data modify storage neofunction:music Music.Pastorale3 set value 1b
