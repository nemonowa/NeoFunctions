# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/sieraboss/stop
# =/function neofunction:system/music/sieraboss/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicSieraboss] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=0}] record minecraft:neo/asset/peritune/sieraboss/1
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..4}] record minecraft:neo/asset/peritune/sieraboss/2
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..8}] record minecraft:neo/asset/peritune/sieraboss/3
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..12}] record minecraft:neo/asset/peritune/sieraboss/4
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..16}] record minecraft:neo/asset/peritune/sieraboss/5
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..20}] record minecraft:neo/asset/peritune/sieraboss/6
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..24}] record minecraft:neo/asset/peritune/sieraboss/7
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..28}] record minecraft:neo/asset/peritune/sieraboss/8
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..32}] record minecraft:neo/asset/peritune/sieraboss/9
stopsound @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=..36}] record minecraft:neo/asset/peritune/sieraboss/10

execute as @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/sieraboss/finish
execute as @a[tag=MusicStop,tag=MusicSieraboss,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/sieraboss/change

execute if entity @a[tag=MusicStop,tag=MusicSieraboss] run schedule function neofunction:system/music/sieraboss/stop_1t 1t replace
