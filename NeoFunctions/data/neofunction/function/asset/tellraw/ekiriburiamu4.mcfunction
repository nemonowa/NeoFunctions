# 命名：ekiriburiamu4
# 説明：
# >/function neofunction:system/adv/tick/entityscore/generaltimer/
# =/function neofunction:asset/tellraw/ekiriburiamu4


# 内容
tag @e[tag=enemy,distance=..16] add del

execute in neodimension:ceresta_festa run tp @s 1038.52 -37.00 1750.28 539.64 -10.33

scoreboard players set @s generaltimerflag 0
scoreboard players set @s generaltimer 0

advancement revoke @a only neofunction:location/ceresta/elemental

# TP後に位置を上書きしないと音が再生されないってことだった。
execute as @s at @s run function neofunction:system/adv/player_killed_entity/boss

advancement grant @a[distance=..32] only neoadvancement:ceresta/root/2/8