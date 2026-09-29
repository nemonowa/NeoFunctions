# 命名：stop
# 説明：曲を止めるとき初回実行
# >/function neofunction:system/music/deep_woods4/1s
# =/function neofunction:system/music/deep_woods4/stop

tag @s add MusicStop
tag @s add MusicStopChecked
scoreboard players set @s MusicStop 36
schedule function neofunction:system/music/deep_woods4/stop_1t 1t replace