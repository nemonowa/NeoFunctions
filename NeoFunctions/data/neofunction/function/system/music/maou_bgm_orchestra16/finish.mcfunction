# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/maou_bgm_orchestra16/stop_1t
# =/function neofunction:system/music/maou_bgm_orchestra16/finish

tag @s remove MusicMaouBgmOrchestra16
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
