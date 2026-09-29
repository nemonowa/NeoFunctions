# 命名：finish
# 説明：強制的にBGMを止めてタグとかも消す
# >/function neofunction:player/survival/respawn
# =/function neofunction:system/music/finish

stopsound @s record
tag @s remove MusicStopChecked
tag @s remove MusicStop
scoreboard players reset @s MusicStop
scoreboard players reset @s MusicTimer
tag @s remove MusicChange


function neofunction:system/music/remove_all_change


tag @s remove MusicSieraboss
tag @s remove MusicValiant
tag @s remove MusicHarvestdance
tag @s remove MusicSafedungeon
tag @s remove MusicCredits
tag @s remove MusicEpicbattle
tag @s remove MusicObsession
tag @s remove MusicWorld_OP2
tag @s remove MusicPastorale3
tag @s remove MusicWhisper
tag @s remove MusicDeepWoods4
tag @s remove MusicCityLuxefa
tag @s remove Musiccity_billy
tag @s remove MusicStainedGlassShiningInTheDarkNight
tag @s remove MusicKatabasis
tag @s remove MusicBattleFun
tag @s remove MusicMaouBgmOrchestra16
