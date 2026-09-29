# 命名：sweetberry
# 説明：スイートベリー(sweet_berries、CMDなし)。対象(複数可)を回復して消費する。
#       満タンの個体は個別にスキップし、1体でも実際に回復した場合のみアイテムを消費する。
# >/function neofunction:system/adv/tick/looking_at/familiar/item_use
# =/function neofunction:system/adv/tick/looking_at/familiar/sweetberry

execute as @e[tag=looked] at @s run tag @e[distance=..1.5,tag=familiar] add lookedGroup

#体力が満タンでない奴が一体でもいたら処理を続ける
execute as @e[tag=lookedGroup] at @s store result score @s HP run data get entity @s Health 1
execute as @e[tag=lookedGroup] at @s store result score @s HPmax run data get entity @s attributes[{id:"minecraft:max_health"}].base 1
execute as @e[tag=lookedGroup] at @s unless score @s HP >= @s HPmax run tag @s add healtarget
execute unless entity @e[tag=healtarget] run return 0


effect give @e[tag=healtarget,limit=3,sort=nearest] instant_health 1 0
execute at @e[tag=healtarget,limit=3,sort=nearest] run playsound minecraft:entity.generic.eat record @s
execute at @e[tag=healtarget,limit=3,sort=nearest] run particle minecraft:heart ~ ~ ~ 0.3 0.3 0.3 0 10
item modify entity @s weapon.mainhand neofunction:set_nbt/itemcount_decrease
tag @e[tag=healtarget] remove healtarget