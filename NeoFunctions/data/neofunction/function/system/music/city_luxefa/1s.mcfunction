# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/city_luxefa/play
# =/function neofunction:system/music/city_luxefa/1s

scoreboard players remove @a[tag=MusicCityLuxefa] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicCityLuxefa] at @s run function neofunction:system/music/city_luxefa/play
execute as @a[tag=MusicCityLuxefa,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/city_luxefa/stop

execute if entity @a[tag=MusicCityLuxefa] run return run schedule function neofunction:system/music/city_luxefa/1s 1s
data modify storage neofunction:music Music.CityLuxefa set value 0b