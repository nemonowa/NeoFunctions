# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/pastorale3/stop
# =/function neofunction:system/music/pastorale3/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicPastorale3] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=0}] record minecraft:neo/asset/peritune/pastorale3/1
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/pastorale3/2
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/pastorale3/3
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/pastorale3/4
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/pastorale3/5
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/pastorale3/6
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/pastorale3/7
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/pastorale3/8
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/pastorale3/9
stopsound @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/pastorale3/10

execute as @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/pastorale3/finish
execute as @a[tag=MusicStop,tag=MusicPastorale3,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/pastorale3/change

execute if entity @a[tag=MusicStop,tag=MusicPastorale3] run schedule function neofunction:system/music/pastorale3/stop_1t 1t replace
