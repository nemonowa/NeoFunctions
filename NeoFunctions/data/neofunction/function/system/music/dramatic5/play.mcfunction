# 命名：play
# 説明：このファンクション実行で実行者にルブラ終章ボスの曲（Dramatic5）を流す
# >/function neofunction:system/music/dramatic5/1s
# >/function neofunction:system/music/dramatic5/change_to_this
# =/function neofunction:system/music/dramatic5/play

playsound minecraft:neo/asset/peritune/dramatic5/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/dramatic5/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #dramatic5 MusicTimer
tag @s add Musicdramatic5
title @s actionbar {"text": "再生中：dramatic5 - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{dramatic5:1b} run schedule function neofunction:system/music/dramatic5/1s 1s
execute unless data storage neofunction:music Music{dramatic5:1b} run data modify storage neofunction:music Music.dramatic5 set value 1b
