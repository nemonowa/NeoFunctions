# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/harvest4/stop_1t
# =/function neofunction:system/music/harvest4/finish

tag @s remove Musicharvest4
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
