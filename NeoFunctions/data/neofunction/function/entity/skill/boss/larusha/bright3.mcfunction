# 命名：bright3
# 説明：
# >/function neofunction:entity/skill/boss/larusha/bright1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/bright3


execute as @e[type=wither_skeleton,tag=larusha] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~
execute as @e[type=wither_skeleton,tag=larusha] at @s positioned ^ ^3 ^1 run summon armor_stand ~ ~ ~ {Marker:1b,Tags:["bright","shot1"],Invisible:1b,CustomName:{"text":"百億年の輝き","color":"gold","bold":true,"italic":false}}
execute as @e[type=armor_stand,tag=shot1,tag=!direction] at @s facing entity @p[gamemode=!spectator] eyes run tp @s ~ ~ ~ ~ ~
tag @e[type=armor_stand,tag=shot1,tag=!direction] add direction

execute as @e[type=wither_skeleton,tag=larusha] at @s as @a[distance=..64] at @s run playsound item.trident.thunder master @a ~ ~ ~ 2 0.5
execute as @e[type=wither_skeleton,tag=larusha] at @s as @a[distance=..64] at @s run playsound entity.warden.sonic_boom master @a ~ ~ ~ 1 0.4
execute as @e[type=wither_skeleton,tag=larusha] at @s as @a[distance=..64] at @s run playsound block.respawn_anchor.deplete master @a ~ ~ ~ 2 0.6








