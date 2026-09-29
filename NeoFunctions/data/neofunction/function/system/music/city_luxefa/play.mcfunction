# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/city_luxefa/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/city_luxefa/play

playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/1 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/2 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/3 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/4 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/5 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/6 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/7 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/8 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/9 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/sk_liner_5077/city_luxefa/10 record @s ~ ~ ~ 0.1 1
scoreboard players operation @s MusicTimer = #CityLuxefa MusicTimer
tag @s add MusicCityLuxefa
title @s actionbar {"text": "再生中：CityLuxefa - SKLiner5077","color": "green","bold": true}


execute unless data storage neofunction:music Music{CityLuxefa:1b} run schedule function neofunction:system/music/city_luxefa/1s 1s
execute unless data storage neofunction:music Music{CityLuxefa:1b} run data modify storage neofunction:music Music.CityLuxefa set value 1b
