# 命名：change
# 説明：曲を変える
# >/function neofunction:system/music/*/change
# =/function neofunction:system/music/change

execute if entity @s[tag=ChangeSieraboss] at @s run function neofunction:system/music/sieraboss/play
execute if entity @s[tag=ChangeValiant] at @s run function neofunction:system/music/valiant/play
execute if entity @s[tag=ChangeHarvestdance] at @s run function neofunction:system/music/harvestdance/play
execute if entity @s[tag=ChangeSafedungeon] at @s run function neofunction:system/music/safedungeon/play
execute if entity @s[tag=ChangeCredits] at @s run function neofunction:system/music/credits/play
execute if entity @s[tag=ChangeEpicbattle] at @s run function neofunction:system/music/epicbattle/play
execute if entity @s[tag=ChangeObsession] at @s run function neofunction:system/music/obsession/play
execute if entity @s[tag=ChangeWorld_OP2] at @s run function neofunction:system/music/world_op2/play
execute if entity @s[tag=ChangePastorale3] at @s run function neofunction:system/music/pastorale3/play
execute if entity @s[tag=ChangeWhisper] at @s run function neofunction:system/music/whisper/play
execute if entity @s[tag=ChangeDeepWoods4] at @s run function neofunction:system/music/deep_woods4/play
execute if entity @s[tag=ChangeCityLuxefa] at @s run function neofunction:system/music/city_luxefa/play
execute if entity @s[tag=Changecity_billy] at @s run function neofunction:system/music/city_billy/play
execute if entity @s[tag=ChangeStainedGlassShiningInTheDarkNight] at @s run function neofunction:system/music/stained_glass_shining_in_the_dark_night/play
execute if entity @s[tag=ChangeKatabasis] at @s run function neofunction:system/music/katabasis/play
execute if entity @s[tag=ChangeBattleFun] at @s run function neofunction:system/music/battle_fun/play
execute if entity @s[tag=ChangeMaouBgmOrchestra16] at @s run function neofunction:system/music/maou_bgm_orchestra16/play





tag @s remove MusicChange
function neofunction:system/music/remove_all_change