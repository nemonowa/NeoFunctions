# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/city_billy/stop_1t
# =/function neofunction:system/music/city_billy/finish

tag @s remove Musiccity_billy
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
