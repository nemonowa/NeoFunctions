# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/obsession/stop_1t
# =/function neofunction:system/music/obsession/finish

tag @s remove MusicObsession
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
