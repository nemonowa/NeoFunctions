# 命名：11
# 説明：
# >
# =/function neofunction:asset/event/prologue/11


# 内容
title @s subtitle [{"text":"～","color":"white","bold":true,"italic":false},{"text":"豊穣","color":"#1F7687","bold":true,"italic":false},{"text":"と","bold":true,"italic":false},{"text":"神秘","color":"light_purple","bold":true,"italic":false},{"text":"の","bold":true,"italic":false},{"text":"大自然島","color":"#3FBF66","bold":true,"italic":false},{"text":"～","bold":true,"italic":false}]
title @s title {"text":"The World of Wonders","color":"#C3D825","bold":true,"italic":false,"underlined":true}
playsound minecraft:block.portal.travel record @s ~ ~ ~ 0.05 1 0.5


advancement revoke @s only neoadvancement:ceresta/root
advancement grant @s only neoadvancement:ceresta/root
tellraw @s [{"text":"新しい目標:","color":"white","bold":true,"italic":false},{"text":"ビリーの野営地に到達する","color":"yellow","bold":true,"italic":false}]

scoreboard players set @s prog 0
scoreboard players set @s prog_timer 0

advancement revoke @s only neofunction:location/biome_change/cerestafesta/village
advancement revoke @s only neofunction:location/biome_change/cerestafesta/lux
advancement revoke @s only neofunction:location/biome_change/cerestafesta
