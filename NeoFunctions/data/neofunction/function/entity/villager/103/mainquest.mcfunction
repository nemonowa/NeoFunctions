# 命名：mainquest
# 説明：50%割引＋レア4追加！
# >/function neofunction:system/adv/tick/quest/30/tellraw/28の汎用会話モジュールの中
# =/function neofunction:entity/villager/103/mainquest
loot spawn ~ ~ ~ loot neofunction:item/11
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare

data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.count set value 4b
data modify entity @s Offers.Recipes[6].buy set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item

data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.count set value 8b
data modify entity @s Offers.Recipes[7].buy set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item

data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.count set value 16b
data modify entity @s Offers.Recipes[8].buy set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item

kill @e[type=item,limit=1,sort=nearest,distance=..1]


loot spawn ~ ~ ~ loot neofunction:item/12
execute as @e[type=item,limit=1,sort=nearest,distance=..1] run function neofunction:entity/.spawn/obj/item/rare

data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.count set value 1b
data modify entity @s Offers.Recipes[9].buy set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item

data modify entity @s Offers.Recipes insert 10 value {xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b,maxUses: 2147483647}
data modify entity @e[type=item,limit=1,sort=nearest,distance=..1] Item.count set value 3b
data modify entity @s Offers.Recipes[10].buy set from entity @e[type=item,limit=1,sort=nearest,distance=..1] Item

kill @e[type=item,limit=1,sort=nearest,distance=..1]

#アイテムを再補充
function neofunction:entity/villager/103/.neo