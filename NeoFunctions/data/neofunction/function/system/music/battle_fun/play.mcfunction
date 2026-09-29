# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/battle_fun/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/battle_fun/play

playsound minecraft:neo/asset/peritune/battle_fun/1 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/2 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/3 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/4 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/5 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/6 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/7 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/8 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/9 record @s ~ ~ ~ 1 1
playsound minecraft:neo/asset/peritune/battle_fun/10 record @s ~ ~ ~ 1 1
scoreboard players operation @s MusicTimer = #BattleFun MusicTimer
tag @s add MusicBattleFun
title @s actionbar {"text": "再生中：Battle_Fun - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{BattleFun:1b} run schedule function neofunction:system/music/battle_fun/1s 1s
execute unless data storage neofunction:music Music{BattleFun:1b} run data modify storage neofunction:music Music.BattleFun set value 1b
