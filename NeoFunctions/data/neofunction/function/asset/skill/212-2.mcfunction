# 命名：212-2
# 説明：（説明未記載）
# >/function neofunction:asset/skill/212-1
# =/function neofunction:asset/skill/212-2

execute on passengers on origin run tag @s add skill212Targeted
scoreboard players set #Calc1 temp 0
execute on passengers on origin at @s run function neofunction:asset/skill/212-3
execute unless entity @e[tag=skill212Target] run tag @e[tag=skill212Targeted] remove skill212Targeted
execute unless entity @e[tag=skill212Target] run return run kill @s

tag @s add This
execute on origin run tag @s add Owner
scoreboard players operation @s LVL = @a[tag=Owner] LVL

execute as @s[scores={LVL=10..}] as @e[tag=skill212Target] at @s as @e[tag=enemy,distance=..3] run damage @s 8 minecraft:generic
execute as @s[scores={LVL=30..}] as @e[tag=skill212Target] at @s as @e[tag=enemy,distance=..3] run damage @s 16 minecraft:generic
execute as @s[scores={LVL=50..}] as @e[tag=skill212Target] at @s as @e[tag=enemy,distance=..3] run damage @s 32 minecraft:generic
execute as @s[scores={LVL=70..}] as @e[tag=skill212Target] at @s as @e[tag=enemy,distance=..3] run damage @s 64 minecraft:generic
execute as @s[scores={LVL=90..}] as @e[tag=skill212Target] at @s as @e[tag=enemy,distance=..3] run damage @s 128 minecraft:generic

execute at @e[tag=skill212Target] run particle minecraft:electric_spark ~ ~ ~ 0.3 4 0.3 0.01 100 force

execute on origin if score #Calc1 temp matches 1 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.5
execute on origin if score #Calc1 temp matches 2 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.6
execute on origin if score #Calc1 temp matches 3 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.7
execute on origin if score #Calc1 temp matches 4 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.8
execute on origin if score #Calc1 temp matches 5 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 0.9
execute on origin if score #Calc1 temp matches 6 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.0
execute on origin if score #Calc1 temp matches 7 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.1
execute on origin if score #Calc1 temp matches 8 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.2
execute on origin if score #Calc1 temp matches 9 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.3
execute on origin if score #Calc1 temp matches 10 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.4
execute on origin if score #Calc1 temp matches 11 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.5
execute on origin if score #Calc1 temp matches 12 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.6
execute on origin if score #Calc1 temp matches 13 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.7
execute on origin if score #Calc1 temp matches 14 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.8
execute on origin if score #Calc1 temp matches 15 run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 1.9
execute on origin if score #Calc1 temp matches 16.. run playsound minecraft:block.bell.use record @a[distance=..8] ~ ~ ~ 1.0 2.0

summon area_effect_cloud ~ ~ ~ {Tags:["skill212AECNEW","vanilla"],Duration:2147483647}
data modify entity @e[tag=skill212AECNEW,limit=1,sort=nearest] Owner set from entity @e[tag=skill212Target,limit=1] UUID
ride @e[tag=skill212AECNEW,limit=1] mount @s

tag @e[tag=skill212AECNEW] remove skill212AECNEW
tag @e[tag=skill212Targeted] remove skill212Targeted
tag @e[tag=skill212Target] remove skill212Target
tag @s remove This
execute on origin run tag @s remove Owner