# 命名：finish_world
# 説明：
# >world
# =/function neofunction:system/world/nexus/tutorial/finish_world

execute positioned ~-1 ~ ~ align xyz run kill @e[tag=TutorialEntity,dx=11,dy=11,dz=14]
execute positioned ~-1 ~ ~ run fill ~ ~ ~ ~11 ~11 ~14 air