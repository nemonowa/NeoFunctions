# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/maou_bgm_orchestra16/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/maou_bgm_orchestra16/play

playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/1 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/2 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/3 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/4 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/5 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/6 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/7 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/8 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/9 record @s ~ ~ ~ 0.1 1
playsound minecraft:neo/asset/maou/maou_bgm_orchestra16/10 record @s ~ ~ ~ 0.1 1
scoreboard players operation @s MusicTimer = #MaouBgmOrchestra16 MusicTimer
tag @s add MusicMaouBgmOrchestra16
title @s actionbar {"text": "再生中：MaouBgmOrchestra16 - maou","color": "green","bold": true}


execute unless data storage neofunction:music Music{MaouBgmOrchestra16:1b} run schedule function neofunction:system/music/maou_bgm_orchestra16/1s 1s
execute unless data storage neofunction:music Music{MaouBgmOrchestra16:1b} run data modify storage neofunction:music Music.MaouBgmOrchestra16 set value 1b
