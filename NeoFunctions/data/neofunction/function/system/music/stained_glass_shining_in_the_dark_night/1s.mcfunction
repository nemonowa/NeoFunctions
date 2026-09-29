# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/stained_glass_shining_in_the_dark_night/play
# =/function neofunction:system/music/stained_glass_shining_in_the_dark_night/1s

scoreboard players remove @a[tag=MusicStainedGlassShiningInTheDarkNight] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicStainedGlassShiningInTheDarkNight] at @s run function neofunction:system/music/stained_glass_shining_in_the_dark_night/play
execute as @a[tag=MusicStainedGlassShiningInTheDarkNight,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/stained_glass_shining_in_the_dark_night/stop

execute if entity @a[tag=MusicStainedGlassShiningInTheDarkNight] run return run schedule function neofunction:system/music/stained_glass_shining_in_the_dark_night/1s 1s
data modify storage neofunction:music Music.StainedGlassShiningInTheDarkNight set value 0b