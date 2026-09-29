# 命名：change_to_this
# 説明：今の曲を止めてこの曲に変える
# >
# =/function neofunction:system/music/stained_glass_shining_in_the_dark_night/change_to_this

execute unless score @s MusicTimer matches -2147483648..2147483647 run return run function neofunction:system/music/stained_glass_shining_in_the_dark_night/play

tag @s add MusicStop
function neofunction:system/music/remove_all_change
tag @s add ChangeStainedGlassShiningInTheDarkNight
tag @s add MusicChange