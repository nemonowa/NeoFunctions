# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/safedungeon/stop_1t
# =/function neofunction:system/music/safedungeon/finish

tag @s remove MusicSafedungeon
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
