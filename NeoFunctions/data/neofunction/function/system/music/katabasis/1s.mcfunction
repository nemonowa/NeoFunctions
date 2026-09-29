# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/katabasis/play
# =/function neofunction:system/music/katabasis/1s

scoreboard players remove @a[tag=MusicKatabasis] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicKatabasis] at @s run function neofunction:system/music/katabasis/play
execute as @a[tag=MusicKatabasis,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/katabasis/stop

execute if entity @a[tag=MusicKatabasis] run return run schedule function neofunction:system/music/katabasis/1s 1s
data modify storage neofunction:music Music.Katabasis set value 0b