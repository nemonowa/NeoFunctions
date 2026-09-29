# 命名：finish
# 説明：タグとか消す
# >/function neofunction:system/music/harvestdance/stop_1t
# =/function neofunction:system/music/harvestdance/finish

tag @s remove MusicHarvestdance
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
