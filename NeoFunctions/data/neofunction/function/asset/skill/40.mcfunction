# 命名：40
# 説明：マナ・スパーク
# 説明：攻撃力10 消費SP15
# >
# =/function neofunction:asset/skill/40


# 目線先3m地点から半径3mを対象
execute as @s at @s anchored eyes positioned ^ ^ ^3 as @e[distance=..6,tag=enemy,limit=5] run effect give @s minecraft:glowing 1 0 true
execute as @s at @s anchored eyes positioned ^ ^ ^3 as @e[distance=..6,tag=enemy,limit=5] run damage @s 10 minecraft:generic by @p
execute as @s at @s anchored eyes positioned ^ ^ ^3 run function neofunction:asset/particle/circle/6m
execute as @s at @s anchored eyes positioned ^ ^ ^3 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 200
 
# 演出
playsound minecraft:item.trident.riptide_1 record @s ~ ~ ~ 0.8 2.0 1.0
playsound minecraft:entity.firework_rocket.blast record @s ~ ~ ~ 0.3 2.0 1.0
playsound minecraft:block.beacon.activate record @s ~ ~ ~ 0.6 1.3 1.0

# SP消費：15SP消費
scoreboard players remove @s SP 15

