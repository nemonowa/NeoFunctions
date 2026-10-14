# 命名：play
# 説明：このファンクション実行で実行者にルブラの街の曲（Harvest3）を流す
# >/function neofunction:system/music/harvest3/1s
# >/function neofunction:system/music/harvest3/change_to_this
# =/function neofunction:system/music/harvest3/play

playsound minecraft:neo/asset/peritune/harvest3/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/harvest3/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #harvest3 MusicTimer
tag @s add Musicharvest3
title @s actionbar {"text": "再生中：harvest3 - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{harvest3:1b} run schedule function neofunction:system/music/harvest3/1s 1s
execute unless data storage neofunction:music Music{harvest3:1b} run data modify storage neofunction:music Music.harvest3 set value 1b
