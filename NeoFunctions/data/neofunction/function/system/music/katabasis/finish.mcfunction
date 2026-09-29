# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/katabasis/stop_1t
# =/function neofunction:system/music/katabasis/finish

tag @s remove MusicKatabasis
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
