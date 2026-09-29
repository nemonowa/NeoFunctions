# 命名：sunbeam5
# 説明：
# >/function neofunction:entity/skill/boss/larusha/sunbeam1 実行者server 実行位置0 0 0
# =/function neofunction:entity/skill/boss/larusha/sunbeam5


execute as @e[tag=sunbeam] at @s run tp ^ ^ ^1
execute as @e[tag=sunbeam] at @s rotated ~ 90 run function neofunction:asset/particle/circle/2m

execute as @e[tag=sunbeam] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 10 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^1 ^ ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^-1 ^ ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^ ^1 ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^ ^-1 ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^1 ^1 ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^-1 ^-1 ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^1 ^1 ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]
execute as @e[tag=sunbeam] at @s positioned ^-1 ^-1 ^ as @e[dx=0,dy=0,dz=0,team=white] unless entity @s[gamemode=spectator] run damage @s 8 sonic_boom by @e[tag=sunbeam,sort=nearest,limit=1]


execute as @e[tag=sungolem] at @s as @e[tag=sunbeam,distance=64..] run kill @s

execute as @e[tag=sunbeam] run schedule function neofunction:entity/skill/boss/larusha/sunbeam5 1t