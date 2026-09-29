# 命名：beam2
# 説明：
# >/function neofunction:entity/skill/boss/larusha/beam1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/beam2


execute as @e[type=armor_stand,tag=larushabeam] at @s run playsound block.amethyst_block.break master @a[distance=..30] ~ ~ ~ 1.0 2
execute as @e[type=wither_skeleton,tag=larusha] at @s positioned ^2 ^3 ^ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["larushabeam"],CustomName:{"text":"鏡反射の陽光砲","color":"gold","bold":true,"italic":false}}
execute as @e[type=wither_skeleton,tag=larusha] at @s positioned ^-2 ^3 ^ run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["larushabeam"],CustomName:{"text":"鏡反射の陽光砲","color":"gold","bold":true,"italic":false}}

execute as @e[team=white] unless entity @s[gamemode=spectator] run tag @s add target
execute as @e[type=armor_stand,tag=larushabeam] at @s facing entity @e[tag=target,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ 90
execute as @e[type=armor_stand,tag=larushabeam] at @s run function neofunction:asset/particle/star/wax_on1m

execute as @e[type=armor_stand,tag=larushabeam] at @s facing entity @e[tag=target,limit=1,sort=nearest] eyes run tp @s ~ ~ ~ ~ ~
tag @e[tag=target] remove target

function neofunction:entity/skill/boss/larusha/beam3
