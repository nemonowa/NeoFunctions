# 命名：play
# 説明：このファンクション実行で実行者にシエラボスの曲を流す
# >/function neofunction:system/music/credits/1s
# >/function neofunction:system/adv/location/ceresta/elemental
# =/function neofunction:system/music/credits/play

playsound minecraft:music.credits/1 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/2 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/3 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/4 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/5 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/6 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/7 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/8 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/9 record @s ~ ~ ~ 0.05 1
playsound minecraft:music.credits/10 record @s ~ ~ ~ 0.05 1
scoreboard players operation @s MusicTimer = #Credits MusicTimer
tag @s add MusicCredits
title @s actionbar {"text": "再生中：Credits - Minecraft","color": "green","bold": true}

execute unless data storage neofunction:music Music{Credits:1b} run schedule function neofunction:system/music/credits/1s 1s
execute unless data storage neofunction:music Music{Credits:1b} run data modify storage neofunction:music Music.Credits set value 1b
