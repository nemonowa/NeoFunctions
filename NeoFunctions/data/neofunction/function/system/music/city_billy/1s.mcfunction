# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/city_billy/play
# =/function neofunction:system/music/city_billy/1s

scoreboard players remove @a[tag=Musiccity_billy] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=Musiccity_billy] at @s run function neofunction:system/music/city_billy/play
execute as @a[tag=Musiccity_billy,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/city_billy/stop

execute if entity @a[tag=Musiccity_billy] run return run schedule function neofunction:system/music/city_billy/1s 1s
data modify storage neofunction:music Music.city_billy set value 0b