# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/epicbattle/play
# =/function neofunction:system/music/epicbattle/1s

scoreboard players remove @a[tag=MusicEpicbattle] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicEpicbattle] at @s run function neofunction:system/music/epicbattle/play
execute as @a[tag=MusicEpicbattle,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/epicbattle/stop

execute if entity @a[tag=MusicEpicbattle] run return run schedule function neofunction:system/music/epicbattle/1s 1s
data modify storage neofunction:music Music.Epicbattle set value 0b