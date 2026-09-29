# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/world_op2/stop_1t
# =/function neofunction:system/music/world_op2/finish

tag @s remove MusicWorld_OP2
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
