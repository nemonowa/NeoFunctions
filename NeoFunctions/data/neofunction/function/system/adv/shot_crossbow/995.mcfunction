# 命名：995
# 説明：shot_crossbow
# >
# =/function neofunction:system/adv/shot_crossbow/995


# 内容
# 装填しておいた矢が飛ぶので、すぐ消す
execute at @s run kill @e[type=arrow,distance=..6,sort=nearest,limit=1]
particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0.5 9 normal
scoreboard players enable @s slotR
scoreboard players enable @s slotG
scoreboard players enable @s slotB
function neofunction:asset/skill/.setting
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}} run item replace entity @s weapon.mainhand with air
item replace entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}}] weapon.offhand with air
loot give @s loot neofunction:item/other/1405


