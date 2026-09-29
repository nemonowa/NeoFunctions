# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/valiant/stop_1t
# =/function neofunction:system/music/valiant/finish

tag @s remove MusicValiant
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
