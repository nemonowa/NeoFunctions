# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/city_billy/stop
# =/function neofunction:system/music/city_billy/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=Musiccity_billy] MusicStop 1
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=0}] record minecraft:neo/asset/hmix/city_billy/1
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..4}] record minecraft:neo/asset/hmix/city_billy/2
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..8}] record minecraft:neo/asset/hmix/city_billy/3
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..12}] record minecraft:neo/asset/hmix/city_billy/4
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..16}] record minecraft:neo/asset/hmix/city_billy/5
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..20}] record minecraft:neo/asset/hmix/city_billy/6
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..24}] record minecraft:neo/asset/hmix/city_billy/7
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..28}] record minecraft:neo/asset/hmix/city_billy/8
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..32}] record minecraft:neo/asset/hmix/city_billy/9
stopsound @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=..36}] record minecraft:neo/asset/hmix/city_billy/10

execute as @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/city_billy/finish
execute as @a[tag=MusicStop,tag=Musiccity_billy,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/city_billy/change

execute if entity @a[tag=MusicStop,tag=Musiccity_billy] run schedule function neofunction:system/music/city_billy/stop_1t 1t replace
