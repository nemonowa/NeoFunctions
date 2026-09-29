# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/sieraboss/play
# =/function neofunction:system/music/sieraboss/1s

scoreboard players remove @a[tag=MusicSieraboss] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicSieraboss] at @s run function neofunction:system/music/sieraboss/play
execute as @a[tag=MusicSieraboss,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/sieraboss/stop

execute if entity @a[tag=MusicSieraboss] run return run schedule function neofunction:system/music/sieraboss/1s 1s
data modify storage neofunction:music Music.Sieraboss set value 0b