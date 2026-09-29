# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:entity/villager/103/schedule
# =/function neofunction:entity/villager/103/.neo

#ニールの日替わり取引処理
loot spawn ~ ~ ~ loot neofunction:rare/0
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare
data modify entity @s Offers.Recipes[6].sell set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item
kill @e[type=item,limit=1,sort=nearest,distance=..1]

loot spawn ~ ~ ~ loot neofunction:rare/1
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare
data modify entity @s Offers.Recipes[7].sell set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item
kill @e[type=item,limit=1,sort=nearest,distance=..1]

loot spawn ~ ~ ~ loot neofunction:rare/2
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare
data modify entity @s Offers.Recipes[8].sell set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item
kill @e[type=item,limit=1,sort=nearest,distance=..1]

loot spawn ~ ~ ~ loot neofunction:rare/3
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare
data modify entity @s Offers.Recipes[9].sell set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item
kill @e[type=item,limit=1,sort=nearest,distance=..1]

#もしメインクエストをクリアしていたら、レベル4アイテムを補充
execute if score #cleared_mainquest_chapter3 main_story matches 1 run loot spawn ~ ~ ~ loot neofunction:rare/4
execute if score #cleared_mainquest_chapter3 main_story matches 1 run execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare
execute if score #cleared_mainquest_chapter3 main_story matches 1 run data modify entity @s Offers.Recipes[10].sell set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item
execute if score #cleared_mainquest_chapter3 main_story matches 1 run kill @e[type=item,limit=1,sort=nearest,distance=..1]
execute in neodimension:ceresta_festa run forceload remove 676 2198