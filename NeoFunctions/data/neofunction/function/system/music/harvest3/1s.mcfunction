# 命名：1s
# 説明：ルブラの街BGM（Harvest3）再生中1sクロック as server
# >This
# >/function neofunction:system/music/harvest3/play
# =/function neofunction:system/music/harvest3/1s

scoreboard players remove @a[tag=Musicharvest3] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=Musicharvest3] at @s run function neofunction:system/music/harvest3/play
execute as @a[tag=Musicharvest3,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/harvest3/stop

execute if entity @a[tag=Musicharvest3] run return run schedule function neofunction:system/music/harvest3/1s 1s
data modify storage neofunction:music Music.harvest3 set value 0b