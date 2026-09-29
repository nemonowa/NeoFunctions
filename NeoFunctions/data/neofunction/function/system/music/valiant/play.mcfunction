# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/valiant/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/valiant/play

playsound minecraft:neo/asset/peritune/valiant/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/valiant/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #Valiant MusicTimer
tag @s add MusicValiant
title @s actionbar {"text": "再生中：Valiant - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{Valiant:1b} run schedule function neofunction:system/music/valiant/1s 1s
execute unless data storage neofunction:music Music{Valiant:1b} run data modify storage neofunction:music Music.Valiant set value 1b
