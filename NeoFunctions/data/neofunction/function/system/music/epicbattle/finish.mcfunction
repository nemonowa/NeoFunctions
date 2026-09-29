# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/epicbattle/stop_1t
# =/function neofunction:system/music/epicbattle/finish

tag @s remove MusicEpicbattle
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
