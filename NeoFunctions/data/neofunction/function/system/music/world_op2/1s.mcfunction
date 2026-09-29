# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/world_op2/play
# =/function neofunction:system/music/world_op2/1s

scoreboard players remove @a[tag=MusicWorld_OP2] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicWorld_OP2] at @s run function neofunction:system/music/world_op2/play
execute as @a[tag=MusicWorld_OP2,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/world_op2/stop

execute if entity @a[tag=MusicWorld_OP2] run return run schedule function neofunction:system/music/world_op2/1s 1s
data modify storage neofunction:music Music.World_OP2 set value 0b