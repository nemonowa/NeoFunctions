# 命名：mesa
# 説明：このバイオームに入った時の処理
# 説明：自作の BGM は止め、バイオームの定義にあるバニラのメサの曲（music.overworld.badlands）に任せる（sea・village と同じ形）
# >/advancement neofunction:location/biome_change/cerestafesta/mesa
# =/function neofunction:system/adv/location/biome_change/cerestafesta/mesa

execute if score @s MusicTimer matches -2147483648..2147483647 run tag @s add MusicStop
execute if score @s MusicTimer matches -2147483648..2147483647 run function neofunction:system/music/remove_all_change

function neofunction:system/adv/location/biome_change/remove_advancement
