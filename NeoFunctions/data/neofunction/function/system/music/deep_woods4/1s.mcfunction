# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/deep_woods4/play
# =/function neofunction:system/music/deep_woods4/1s

scoreboard players remove @a[tag=MusicDeepWoods4] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicDeepWoods4] at @s run function neofunction:system/music/deep_woods4/play
execute as @a[tag=MusicDeepWoods4,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/deep_woods4/stop

execute if entity @a[tag=MusicDeepWoods4] run return run schedule function neofunction:system/music/deep_woods4/1s 1s
data modify storage neofunction:music Music.DeepWoods4 set value 0b