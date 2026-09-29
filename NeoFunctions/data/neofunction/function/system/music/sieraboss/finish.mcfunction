# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/sieraboss/stop_1t
# =/function neofunction:system/music/sieraboss/finish

tag @s remove MusicSieraboss
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
