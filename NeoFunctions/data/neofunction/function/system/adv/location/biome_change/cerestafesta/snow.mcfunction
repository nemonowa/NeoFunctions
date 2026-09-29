# 命名：snow
# 説明：このバイオームに入った時の処理
# >
# =/function neofunction:system/adv/location/biome_change/cerestafesta/snow

execute if score @s MusicTimer matches -2147483648..2147483647 run tag @s add MusicStop
execute if score @s MusicTimer matches -2147483648..2147483647 run function neofunction:system/music/remove_all_change

function neofunction:system/adv/location/biome_change/remove_advancement