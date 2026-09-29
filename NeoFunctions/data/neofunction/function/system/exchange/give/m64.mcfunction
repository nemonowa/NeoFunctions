# 命名：64マモン
# 説明：銅貨64マモン付与する処理
# >/function neofunction:system/exchange/starsharde-score
# =/function neofunction:system/exchange/give/m64


# 換金
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11
loot spawn ~ ~ ~ loot neofunction:item/11

data merge entity @e[type=item,distance=..1,limit=1] {PickupDelay:1}

# 演出
execute as @s at @s run particle minecraft:soul
execute as @s at @s run particle soul_fire_flame ~ ~ ~ 0 0 0 1 10 normal
execute as @s at @s run playsound minecraft:entity.illusioner.ambient record @a[distance=..4] ~ ~ ~ 0.1 0.1
title @s[distance=..4] actionbar [{"text":"通貨の魔力が分散して","color":"light_purple","bold":false,"italic":false},{"text":"下位の依代【マモン】","color":"dark_blue","bold":true,"italic":false},{"text":"に変化した！","color":"light_purple","bold":false,"italic":false}]
