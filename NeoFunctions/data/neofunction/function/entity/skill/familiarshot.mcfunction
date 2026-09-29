# 命名：familiarshot
# 説明：
# >/function neofunction:entity/skill/.neo-1
# =/function neofunction:entity/skill/familiarshot

particle end_rod ~ ~ ~ 0 0 0 0 1
execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=0.5,dy=0.5,dz=0.5,tag=enemy,limit=1,sort=nearest] run tag @s add snowballhit
execute unless entity @e[tag=snowballhit] run return 0

effect give @e[tag=snowballhit] slowness 4 1
execute if entity @s[tag=familiarshotlv2] on origin run damage @e[tag=snowballhit,limit=1,sort=nearest] 5 mob_attack by @s
execute if entity @s[tag=familiarshotlv3] on origin run damage @e[tag=snowballhit,limit=1,sort=nearest] 8 mob_attack by @s
execute if entity @e[tag=snowballhit] run kill @s
tag @e[tag=snowballhit] remove snowballhit


