# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/city_billy/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/city_billy/play

playsound minecraft:neo/asset/hmix/city_billy/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/hmix/city_billy/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #city_billy MusicTimer
tag @s add Musiccity_billy
title @s actionbar {"text": "再生中：伝承の丘 - hmix","color": "green","bold": true}


execute unless data storage neofunction:music Music{city_billy:1b} run schedule function neofunction:system/music/city_billy/1s 1s
execute unless data storage neofunction:music Music{city_billy:1b} run data modify storage neofunction:music Music.city_billy set value 1b
