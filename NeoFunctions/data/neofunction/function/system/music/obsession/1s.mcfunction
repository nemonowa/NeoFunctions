# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/obsession/play
# =/function neofunction:system/music/obsession/1s

scoreboard players remove @a[tag=MusicObsession] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicObsession] at @s run function neofunction:system/music/obsession/play
execute as @a[tag=MusicObsession,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/obsession/stop

execute if entity @a[tag=MusicObsession] run return run schedule function neofunction:system/music/obsession/1s 1s
data modify storage neofunction:music Music.Obsession set value 0b