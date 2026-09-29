# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/pastorale3/stop_1t
# =/function neofunction:system/music/pastorale3/finish

tag @s remove MusicPastorale3
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
