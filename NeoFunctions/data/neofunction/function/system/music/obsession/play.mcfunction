# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/obsession/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/obsession/play

playsound minecraft:neo/asset/peritune/obsession/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/obsession/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #Obsession MusicTimer
tag @s add MusicObsession
title @s actionbar {"text": "再生中：Obsession - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{Obsession:1b} run schedule function neofunction:system/music/obsession/1s 1s
execute unless data storage neofunction:music Music{Obsession:1b} run data modify storage neofunction:music Music.Obsession set value 1b
