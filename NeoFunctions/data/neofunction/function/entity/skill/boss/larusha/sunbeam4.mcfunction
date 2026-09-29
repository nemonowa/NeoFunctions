# 命名：sunbeam4
# 説明：
# >/function neofunction:entity/skill/boss/larusha/sunbeam3 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/sunbeam4

execute as @e[tag=sungolem] at @s run playsound entity.wither.shoot master @a ~ ~ ~ 0.8 0.6
execute as @e[tag=sungolem] at @s facing entity @p[gamemode=!spectator] eyes positioned ^ ^2 ^2 rotated ~ ~90 run function neofunction:asset/particle/star/wax_on3m
execute as @e[tag=sungolem] at @s positioned ^ ^2 ^1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["sunbeam"],CustomName:{"text":"太陽砲","color":"gold","bold":true,"italic":false}}
execute as @e[tag=sunbeam,tag=!direction] at @s facing entity @p[predicate=neofunction:player] eyes run tp @s ~ ~ ~ ~ ~
tag @e[tag=sunbeam,tag=!direction] add direction


execute as @e[tag=sungolem] run schedule function neofunction:entity/skill/boss/larusha/sunbeam4 30t append