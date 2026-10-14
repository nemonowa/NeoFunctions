# 命名：1s
# 説明：ルブラ終章ボスBGM（Dramatic5）再生中1sクロック as server
# >This
# >/function neofunction:system/music/dramatic5/play
# =/function neofunction:system/music/dramatic5/1s

scoreboard players remove @a[tag=Musicdramatic5] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=Musicdramatic5] at @s run function neofunction:system/music/dramatic5/play
execute as @a[tag=Musicdramatic5,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/dramatic5/stop

execute if entity @a[tag=Musicdramatic5] run return run schedule function neofunction:system/music/dramatic5/1s 1s
data modify storage neofunction:music Music.dramatic5 set value 0b