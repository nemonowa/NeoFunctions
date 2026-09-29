# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/whisper/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/whisper/play

playsound minecraft:neo/asset/peritune/whisper/1 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/2 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/3 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/4 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/5 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/6 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/7 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/8 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/9 record @s ~ ~ ~ 0.4 1
playsound minecraft:neo/asset/peritune/whisper/10 record @s ~ ~ ~ 0.4 1
scoreboard players operation @s MusicTimer = #Whisper MusicTimer
tag @s add MusicWhisper
title @s actionbar {"text": "再生中：Whisper - Peritune","color": "green","bold": true}


execute unless data storage neofunction:music Music{Whisper:1b} run schedule function neofunction:system/music/whisper/1s 1s
execute unless data storage neofunction:music Music{Whisper:1b} run data modify storage neofunction:music Music.Whisper set value 1b
