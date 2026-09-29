# 命名：blackberry
# 説明：ブラックベリー(sweet_berries, CMD:318)。対象(複数可)に毒を付与して消費する。
# =/function neofunction:system/adv/tick/looking_at/familiar/blackberry

effect give @e[tag=looked] poison 60 0
execute at @e[tag=looked] run playsound minecraft:entity.generic.eat master @s
execute at @e[tag=looked] run particle entity_effect{color:[0.0,0.0,0.0,1.0f]} ~ ~ ~ 0.5 0.5 0.5 0 50 force
item modify entity @s weapon.mainhand neofunction:set_nbt/itemcount_decrease
