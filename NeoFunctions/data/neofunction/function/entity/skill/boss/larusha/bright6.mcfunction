# 命名：bright6
# 説明：
# >/function neofunction:entity/skill/boss/larusha/bright1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/bright6

#速さ1の太陽を生成、プレイヤーに向かって飛ばします。
execute as @e[type=armor_stand,tag=bright,tag=shot2] at @s run tp ^ ^ ^1

execute as @e[type=armor_stand,tag=bright,tag=shot2] at @s as @e[distance=..5.5,team=white] unless entity @s[gamemode=spectator] run damage @s 17 explosion by @e[type=armor_stand,tag=bright,tag=shot2,sort=nearest,limit=1]
execute as @e[type=wither_skeleton,tag=larusha] at @s as @e[type=armor_stand,tag=bright,distance=48..] run kill @s

execute as @e[type=armor_stand,tag=bright,tag=shot2] run schedule function neofunction:entity/skill/boss/larusha/bright6 1t