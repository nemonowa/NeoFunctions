# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/pastorale3/play
# =/function neofunction:system/music/pastorale3/1s

scoreboard players remove @a[tag=MusicPastorale3] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicPastorale3] at @s run function neofunction:system/music/pastorale3/play
execute as @a[tag=MusicPastorale3,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/pastorale3/stop

execute if entity @a[tag=MusicPastorale3] run return run schedule function neofunction:system/music/pastorale3/1s 1s
data modify storage neofunction:music Music.Pastorale3 set value 0b