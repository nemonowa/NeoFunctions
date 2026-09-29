# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/safedungeon/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/safedungeon/play

playsound minecraft:neo/asset/peritune/safedungeon/1 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/2 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/3 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/4 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/5 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/6 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/7 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/8 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/9 record @s ~ ~ ~ 0.4 0.5
playsound minecraft:neo/asset/peritune/safedungeon/10 record @s ~ ~ ~ 0.4 0.5
scoreboard players operation @s MusicTimer = #Safedungeon MusicTimer
tag @s add MusicSafedungeon
title @s actionbar {"text": "再生中：Foreboding - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{Safedungeon:1b} run schedule function neofunction:system/music/safedungeon/1s 1s
execute unless data storage neofunction:music Music{Safedungeon:1b} run data modify storage neofunction:music Music.Safedungeon set value 1b
