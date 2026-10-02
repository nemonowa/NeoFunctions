# 命名：remove_advancement
# 説明：消すべき進捗を消す
# >/function neofunction:system/adv/location/biome_change/*
# =/function neofunction:system/adv/location/biome_change/remove_advancement

execute unless biome ~ ~ ~ neodimension:.neo run advancement revoke @s only neofunction:location/biome_change/.neo
execute unless biome ~ ~ ~ neodimension:asgard run advancement revoke @s only neofunction:location/biome_change/asgard
execute unless biome ~ ~ ~ neodimension:cerestafesta run advancement revoke @s only neofunction:location/biome_change/cerestafesta
execute unless biome ~ ~ ~ neodimension:luminvitin run advancement revoke @s only neofunction:location/biome_change/luminvitin
execute unless biome ~ ~ ~ neodimension:nostalmachina run advancement revoke @s only neofunction:location/biome_change/nostalmachina
execute unless biome ~ ~ ~ neodimension:onsen run advancement revoke @s only neofunction:location/biome_change/onsen
execute unless biome ~ ~ ~ neodimension:parkour run advancement revoke @s only neofunction:location/biome_change/parkour
execute unless biome ~ ~ ~ neodimension:plantopia run advancement revoke @s only neofunction:location/biome_change/plantopia
execute unless biome ~ ~ ~ neodimension:pointnemo run advancement revoke @s only neofunction:location/biome_change/pointnemo
execute unless biome ~ ~ ~ neodimension:rainbowheaven run advancement revoke @s only neofunction:location/biome_change/rainbowheaven
execute unless biome ~ ~ ~ neodimension:sunsandbox run advancement revoke @s only neofunction:location/biome_change/sunsandbox
execute unless biome ~ ~ ~ neodimension:tachyonfield run advancement revoke @s only neofunction:location/biome_change/tachyonfield
execute unless biome ~ ~ ~ neodimension:volvalrose run advancement revoke @s only neofunction:location/biome_change/volvalrose
execute unless biome ~ ~ ~ neodimension:vr run advancement revoke @s only neofunction:location/biome_change/vr

execute unless biome ~ ~ ~ neodimension:cerestafesta/abyss run advancement revoke @s only neofunction:location/biome_change/cerestafesta/abyss
execute unless biome ~ ~ ~ neodimension:cerestafesta/boss run advancement revoke @s only neofunction:location/biome_change/cerestafesta/boss
execute unless biome ~ ~ ~ neodimension:cerestafesta/harbit run advancement revoke @s only neofunction:location/biome_change/cerestafesta/harbit
execute unless biome ~ ~ ~ neodimension:cerestafesta/lune run advancement revoke @s only neofunction:location/biome_change/cerestafesta/lune
execute unless biome ~ ~ ~ neodimension:cerestafesta/lux run advancement revoke @s only neofunction:location/biome_change/cerestafesta/lux
execute unless biome ~ ~ ~ neodimension:cerestafesta/mandoragoraaaa run advancement revoke @s only neofunction:location/biome_change/cerestafesta/mandoragoraaaa
execute unless biome ~ ~ ~ neodimension:cerestafesta/rod run advancement revoke @s only neofunction:location/biome_change/cerestafesta/rod
execute unless biome ~ ~ ~ neodimension:cerestafesta/rose run advancement revoke @s only neofunction:location/biome_change/cerestafesta/rose
execute unless biome ~ ~ ~ neodimension:cerestafesta/safedungeon run advancement revoke @s only neofunction:location/biome_change/cerestafesta/safedungeon
execute unless biome ~ ~ ~ neodimension:cerestafesta/sea run advancement revoke @s only neofunction:location/biome_change/cerestafesta/sea
execute unless biome ~ ~ ~ neodimension:cerestafesta/skull run advancement revoke @s only neofunction:location/biome_change/cerestafesta/skull
execute unless biome ~ ~ ~ neodimension:cerestafesta/snow run advancement revoke @s only neofunction:location/biome_change/cerestafesta/snow
execute unless biome ~ ~ ~ neodimension:cerestafesta/village run advancement revoke @s only neofunction:location/biome_change/cerestafesta/village
execute unless biome ~ ~ ~ neodimension:cerestafesta/frogdungeon run advancement revoke @s only neofunction:location/biome_change/cerestafesta/frogdungeon
execute unless biome ~ ~ ~ neodimension:cerestafesta/sunsandbox run advancement revoke @s only neofunction:location/biome_change/cerestafesta/sunsandbox
execute unless biome ~ ~ ~ neodimension:cerestafesta/vr run advancement revoke @s only neofunction:location/biome_change/cerestafesta/vr
execute unless biome ~ ~ ~ neodimension:cerestafesta/asgard run advancement revoke @s only neofunction:location/biome_change/cerestafesta/asgard
execute unless biome ~ ~ ~ neodimension:cerestafesta/templeofthesun run advancement revoke @s only neofunction:location/biome_change/cerestafesta/templeofthesun
# 【追加：2026-10-03】セレスタフェスタのメサ（砂漠系）のバイオーム
execute unless biome ~ ~ ~ neodimension:cerestafesta/mesa run advancement revoke @s only neofunction:location/biome_change/cerestafesta/mesa

execute if score @s prog matches 1 run tag @s remove MusicStop
execute if score @s prog matches 1 run function neofunction:system/music/remove_all_change
execute if score @s prog matches 1 run tag @s remove MusicChange