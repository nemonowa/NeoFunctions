# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/maou_bgm_orchestra16/play
# =/function neofunction:system/music/maou_bgm_orchestra16/1s

scoreboard players remove @a[tag=MusicMaouBgmOrchestra16] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicMaouBgmOrchestra16] at @s run function neofunction:system/music/maou_bgm_orchestra16/play
execute as @a[tag=MusicMaouBgmOrchestra16,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/maou_bgm_orchestra16/stop

execute if entity @a[tag=MusicMaouBgmOrchestra16] run return run schedule function neofunction:system/music/maou_bgm_orchestra16/1s 1s
data modify storage neofunction:music Music.MaouBgmOrchestra16 set value 0b