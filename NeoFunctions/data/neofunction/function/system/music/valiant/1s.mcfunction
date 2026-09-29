# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/valiant/play
# =/function neofunction:system/music/valiant/1s

scoreboard players remove @a[tag=MusicValiant] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicValiant] at @s run function neofunction:system/music/valiant/play
execute as @a[tag=MusicValiant,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/valiant/stop

execute if entity @a[tag=MusicValiant] run return run schedule function neofunction:system/music/valiant/1s 1s
data modify storage neofunction:music Music.Valiant set value 0b