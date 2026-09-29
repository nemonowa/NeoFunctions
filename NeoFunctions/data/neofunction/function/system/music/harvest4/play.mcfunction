# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/harvest4/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/harvest4/play

playsound minecraft:neo/asset/peritune/harvest4/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest4/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #harvest4 MusicTimer
tag @s add Musicharvest4
title @s actionbar {"text": "再生中：harvest4 - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{harvest4:1b} run schedule function neofunction:system/music/harvest4/1s 1s
execute unless data storage neofunction:music Music{harvest4:1b} run data modify storage neofunction:music Music.harvest4 set value 1b
