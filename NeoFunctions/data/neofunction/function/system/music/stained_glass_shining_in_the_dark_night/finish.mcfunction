# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/stained_glass_shining_in_the_dark_night/stop_1t
# =/function neofunction:system/music/stained_glass_shining_in_the_dark_night/finish

tag @s remove MusicStainedGlassShiningInTheDarkNight
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
