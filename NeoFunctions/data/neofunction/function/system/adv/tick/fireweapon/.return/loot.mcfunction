# 命名：loot
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/fireweapon/selfreload/mainhand
# >/function neofunction:system/adv/tick/fireweapon/selfreload/offhand
# =/function neofunction:system/adv/tick/fireweapon/.return/loot

$loot spawn ~ ~ ~ loot neofunction:item/$(CustomModelData)
data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.count set from entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:custom_data".ammo 
