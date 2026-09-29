# 命名：beam3
# 説明：
# >/function neofunction:entity/skill/boss/larusha/beam2 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/beam3


execute as @e[type=armor_stand,tag=larushabeam] at @s run tp ^ ^ ^0.5

execute as @e[type=armor_stand,tag=larushabeam] at @s run particle dust{color:[0.976,1.000,0.290],scale:2} ~ ~ ~ 0 0 0 1 0 normal

execute as @e[type=armor_stand,tag=larushabeam] at @s as @e[dx=0,dy=0,dz=0,team=white] positioned ~-0.7 ~-0.7 ~-0.7 if entity @s[dx=0,dy=0,dz=0] unless entity @s[gamemode=!spectator] run damage @s 10 arrow by @e[type=armor_stand,tag=larushabeam,sort=nearest,limit=1]
execute as @a at @s positioned ~-0.5 ~ ~-0.5 as @e[type=armor_stand,tag=larushabeam,dx=0,dy=1,dz=0] run kill @s 
execute as @e[type=wither_skeleton,tag=larusha] at @s as @e[type=armor_stand,tag=larushabeam,distance=30..] run kill @s


execute as @e[type=armor_stand,tag=larushabeam] run schedule function neofunction:entity/skill/boss/larusha/beam3 1t