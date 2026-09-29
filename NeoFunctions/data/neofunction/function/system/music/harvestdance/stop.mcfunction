# 命名：stop
# 説明：曲を止めるとき初回実行
# >/function neofunction:system/music/harvestdance/1s
# =/function neofunction:system/music/harvestdance/stop

tag @s add MusicStop
tag @s add MusicStopChecked
scoreboard players set @s MusicStop 36
schedule function neofunction:system/music/harvestdance/stop_1t 1t replace