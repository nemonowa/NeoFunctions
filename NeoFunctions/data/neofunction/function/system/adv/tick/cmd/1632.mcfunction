# 命名：1632
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1632


## 内容
tellraw @s [{"text":"🔯セットスペル発動【孤高の浮雲】","color":"light_purple"}]
effect give @s minecraft:levitation 16 2

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1 1
particle minecraft:poof ~ ~ ~ 0.2 0.2 0.2 0.05 10 normal

