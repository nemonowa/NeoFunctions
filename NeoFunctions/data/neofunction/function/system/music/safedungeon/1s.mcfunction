# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/safedungeon/play
# =/function neofunction:system/music/safedungeon/1s

scoreboard players remove @a[tag=MusicSafedungeon] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicSafedungeon] at @s run function neofunction:system/music/safedungeon/play
execute as @a[tag=MusicSafedungeon,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/safedungeon/stop

execute if entity @a[tag=MusicSafedungeon] run return run schedule function neofunction:system/music/safedungeon/1s 1s
data modify storage neofunction:music Music.Safedungeon set value 0b