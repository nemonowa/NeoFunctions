# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/whisper/play
# =/function neofunction:system/music/whisper/1s

scoreboard players remove @a[tag=MusicWhisper] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicWhisper] at @s run function neofunction:system/music/whisper/play
execute as @a[tag=MusicWhisper,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/whisper/stop

execute if entity @a[tag=MusicWhisper] run return run schedule function neofunction:system/music/whisper/1s 1s
data modify storage neofunction:music Music.Whisper set value 0b