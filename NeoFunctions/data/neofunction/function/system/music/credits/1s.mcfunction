# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/credits/play
# =/function neofunction:system/music/credits/1s

scoreboard players remove @a[tag=MusicCredits] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicCredits] at @s run function neofunction:system/music/credits/play
execute as @a[tag=MusicCredits,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/credits/stop

execute if entity @a[tag=MusicCredits] run return run schedule function neofunction:system/music/credits/1s 1s
data modify storage neofunction:music Music.Credits set value 0b