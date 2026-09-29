# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/city_luxefa/stop
# =/function neofunction:system/music/city_luxefa/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicCityLuxefa] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=0}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/1
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..4}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/2
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..8}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/3
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..12}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/4
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..16}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/5
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..20}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/6
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..24}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/7
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..28}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/8
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..32}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/9
stopsound @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=..36}] record minecraft:neo/asset/sk_liner_5077/city_luxefa/10

execute as @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/city_luxefa/finish
execute as @a[tag=MusicStop,tag=MusicCityLuxefa,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/city_luxefa/change

execute if entity @a[tag=MusicStop,tag=MusicCityLuxefa] run schedule function neofunction:system/music/city_luxefa/stop_1t 1t replace
