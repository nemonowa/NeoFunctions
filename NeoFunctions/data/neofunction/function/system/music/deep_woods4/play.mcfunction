# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/deep_woods4/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/deep_woods4/play

playsound minecraft:neo/asset/peritune/deep_woods4/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/deep_woods4/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #DeepWoods4 MusicTimer
tag @s add MusicDeepWoods4
title @s actionbar {"text": "再生中：DeepWoods4 - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{DeepWoods4:1b} run schedule function neofunction:system/music/deep_woods4/1s 1s
execute unless data storage neofunction:music Music{DeepWoods4:1b} run data modify storage neofunction:music Music.DeepWoods4 set value 1b
