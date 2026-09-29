# 命名：1s
# 説明：シエラボスBGM再生中1sクロック as server
# >This
# >/function neofunction:system/music/harvestdance/play
# =/function neofunction:system/music/harvestdance/1s

scoreboard players remove @a[tag=MusicHarvestdance] MusicTimer 1
execute as @a[scores={MusicTimer=..-1},tag=MusicHarvestdance] at @s run function neofunction:system/music/harvestdance/play
execute as @a[tag=MusicHarvestdance,tag=MusicStop,tag=!MusicStopChecked] at @s run function neofunction:system/music/harvestdance/stop

execute if entity @a[tag=MusicHarvestdance] run return run schedule function neofunction:system/music/harvestdance/1s 1s
data modify storage neofunction:music Music.Harvestdance set value 0b