# 命名：suncanon3
# 説明：（説明未記載）
# >
# =/function neofunction:entity/skill/suncanon3

execute as @e[tag=suncanon] at @s run tp ^ ^ ^0.7
execute as @e[tag=suncanon] at @s rotated ~ 90 run function neofunction:asset/particle/circle/2m

execute as @e[tag=suncanon] at @s positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,dy=0,dz=0] run damage @s 10 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^1 ^ ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^-1 ^ ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^ ^1 ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^ ^-1 ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^1 ^1 ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^-1 ^-1 ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^1 ^1 ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]
execute as @e[tag=suncanon] at @s positioned ^-1 ^-1 ^ as @a[dx=0,dy=0,dz=0] run damage @s 8 sonic_boom by @e[tag=suncanon,sort=nearest,limit=1]


execute as @e[tag=suncanon] at @s unless entity @e[tag=suncanoncaster,distance=..32] run kill @s

execute as @e[tag=suncanon] run schedule function neofunction:entity/skill/suncanon3 1t