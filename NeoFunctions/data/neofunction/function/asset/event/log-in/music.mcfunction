# 命名：music
# 説明：音楽流すための処理
# >/function neofunction:asset/event/log-in
# =/function neofunction:asset/event/log-in/music


# reloadかプレイヤージョインか
execute unless entity @s run tag @a add MusicReset
tag @s add MusicReset

execute as @a[tag=MusicReset] run function neofunction:system/music/finish

advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/.neo
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/asgard
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/luminvitin
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/nostalmachina
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/onsen
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/parkour
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/plantopia
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/pointnemo
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/rainbowheaven
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/sunsandbox
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/tachyonfield
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/volvalrose
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/vr
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/abyss
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/asgard
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/boss
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/harbit
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/lune
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/lux
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/mandoragoraaaa
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/rod
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/rose
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/safedungeon
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/sunsandbox
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/sea
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/skull
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/snow
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/vr
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/village
advancement revoke @a[tag=MusicReset] only neofunction:location/biome_change/cerestafesta/frogdungeon

tag @a[tag=MusicReset] remove MusicReset

