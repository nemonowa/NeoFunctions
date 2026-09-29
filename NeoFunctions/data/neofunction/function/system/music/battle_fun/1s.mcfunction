# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/battle_fun/play
# =/function neofunction:system/music/battle_fun/1s

scoreboard players remove @a[tag=MusicBattleFun] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicBattleFun] at @s run function neofunction:system/music/battle_fun/play
execute as @a[tag=MusicBattleFun,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/battle_fun/stop

execute if entity @a[tag=MusicBattleFun] run return run schedule function neofunction:system/music/battle_fun/1s 1s
data modify storage neofunction:music Music.BattleFun set value 0b