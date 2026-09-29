# 命名：stop_1t
# 説明：音楽のフェードアウト＆次の曲準備
# >/function neofunction:system/music/stained_glass_shining_in_the_dark_night/stop
# =/function neofunction:system/music/stained_glass_shining_in_the_dark_night/stop_1t

scoreboard players remove @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight] MusicStop 1
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=0}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/1
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..4}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/2
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..8}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/3
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..12}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/4
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..16}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/5
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..20}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/6
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..24}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/7
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..28}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/8
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..32}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/9
stopsound @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=..36}] record minecraft:neo/asset/eight/stained_glass_shining_in_the_dark_night/10

execute as @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=0},tag=!MusicChange] run function neofunction:system/music/stained_glass_shining_in_the_dark_night/finish
execute as @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight,scores={MusicStop=-8},tag=MusicChange] run function neofunction:system/music/stained_glass_shining_in_the_dark_night/change

execute if entity @a[tag=MusicStop,tag=MusicStainedGlassShiningInTheDarkNight] run schedule function neofunction:system/music/stained_glass_shining_in_the_dark_night/stop_1t 1t replace
