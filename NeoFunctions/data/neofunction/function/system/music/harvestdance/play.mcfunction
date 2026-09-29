# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/harvestdance/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/harvestdance/play

playsound minecraft:neo/asset/mozell/harvestdance/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/mozell/harvestdance/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #Harvestdance MusicTimer
tag @s add MusicHarvestdance
title @s actionbar {"text": "再生中：Harvestdance - Mozell","color": "green","bold": true}


execute unless data storage neofunction:music Music{Harvestdance:1b} run schedule function neofunction:system/music/harvestdance/1s 1s
execute unless data storage neofunction:music Music{Harvestdance:1b} run data modify storage neofunction:music Music.Harvestdance set value 1b
