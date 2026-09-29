# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/katabasis/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/katabasis/play

playsound minecraft:neo/asset/zippy/katabasis/1 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/2 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/3 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/4 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/5 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/6 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/7 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/8 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/9 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/zippy/katabasis/10 record @s ~ ~ ~ 0.1 1
scoreboard players operation @s MusicTimer = #Katabasis MusicTimer
tag @s add MusicKatabasis
title @s actionbar {"text": "再生中：Katabasis - zippy","color": "green","bold": true}


execute unless data storage neofunction:music Music{Katabasis:1b} run schedule function neofunction:system/music/katabasis/1s 1s
execute unless data storage neofunction:music Music{Katabasis:1b} run data modify storage neofunction:music Music.Katabasis set value 1b
