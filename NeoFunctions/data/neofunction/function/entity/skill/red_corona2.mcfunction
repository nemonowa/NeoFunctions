# 命名：blue_corona
# 説明：
# >/function neofunction:entity/skill/clock/5s-1
# =/function neofunction:entity/skill/red_corona2

execute as @e[tag=NowRedCorona] at @s rotated 0 0 run function neofunction:asset/particle/circle/red_ring6-24m
execute as @e[tag=NowRedCorona] at @s run function neofunction:asset/particle/sphere/1_6m
execute as @e[tag=NowRedCorona] at @s as @a[distance=..30] at @s run playsound block.anvil.place master @a ~ ~ ~ 0.3 1.7
