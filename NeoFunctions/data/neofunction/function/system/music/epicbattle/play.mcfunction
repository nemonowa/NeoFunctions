# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/epicbattle/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/epicbattle/play

playsound minecraft:neo/asset/peritune/epicbattle/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/epicbattle/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #Epicbattle MusicTimer
tag @s add MusicEpicbattle
title @s actionbar {"text": "再生中：Epicbattle - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{Epicbattle:1b} run schedule function neofunction:system/music/epicbattle/1s 1s
execute unless data storage neofunction:music Music{Epicbattle:1b} run data modify storage neofunction:music Music.Epicbattle set value 1b
