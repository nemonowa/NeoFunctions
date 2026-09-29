# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/credits/stop_1t
# =/function neofunction:system/music/credits/finish

tag @s remove MusicCredits
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
