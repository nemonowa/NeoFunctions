# 命名：995
# 説明：shot_crossbow
# >
# =/function neofunction:system/adv/shot_crossbow/995


# 内容
particle minecraft:end_rod ~ ~1.5 ~ 0 0 0 0.5 9 normal
scoreboard players enable @s slotR
scoreboard players enable @s slotG
scoreboard players enable @s slotB
function neofunction:asset/skill/.setting
item replace entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}] weapon.mainhand with air
item replace entity @s[nbt={Inventory:[],equipment:{offhand:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}}}] weapon.offhand with air
loot give @s loot neofunction:item/other/1405


