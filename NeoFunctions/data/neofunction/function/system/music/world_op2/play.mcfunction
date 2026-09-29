# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/world_op2/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/world_op2/play

playsound minecraft:neo/asset/peritune/world_op2/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/world_op2/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #World_OP2 MusicTimer
tag @s add MusicWorld_OP2
title @s actionbar {"text": "再生中：WorldOP2 - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{World_OP2:1b} run schedule function neofunction:system/music/world_op2/1s 1s
execute unless data storage neofunction:music Music{World_OP2:1b} run data modify storage neofunction:music Music.World_OP2 set value 1b
