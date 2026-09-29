# 命名：.neo
# 説明：
# >/function neofunction:system/world/nexus/tutorial/N (N=1,2,3,4,5,6)
# =/function neofunction:system/world/nexus/tutorial/.neo

execute align xyz positioned ~-7 ~ ~ run kill @e[tag=TutorialEntity,dx=11,dy=11,dz=14]
execute align xyz positioned ~-7 ~ ~ run tp @a[dx=11,dy=11,dz=14] ~6 ~2 ~12 180 0