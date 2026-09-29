# 命名：stop
# 説明：曲を止めるとき初回実行
# >/function neofunction:system/music/sieraboss/1s
# =/function neofunction:system/music/sieraboss/stop

tag @s add MusicStop
tag @s add MusicStopChecked
scoreboard players set @s MusicStop 36
schedule function neofunction:system/music/sieraboss/stop_1t 1t replace