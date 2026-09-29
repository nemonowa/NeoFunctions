# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/stained_glass_shining_in_the_dark_night/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/stained_glass_shining_in_the_dark_night/play

playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #StainedGlassShiningInTheDarkNight MusicTimer
tag @s add MusicStainedGlassShiningInTheDarkNight
title @s actionbar {"text": "再生中：闇夜に輝くステンドグラス - EigHt","color": "green","bold": true}


execute unless data storage neofunction:music Music{StainedGlassShiningInTheDarkNight:1b} run schedule function neofunction:system/music/stained_glass_shining_in_the_dark_night/1s 1s
execute unless data storage neofunction:music Music{StainedGlassShiningInTheDarkNight:1b} run data modify storage neofunction:music Music.StainedGlassShiningInTheDarkNight set value 1b
