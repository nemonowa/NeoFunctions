# 命名：2
# 説明：クエストアイテムの受け渡し
# 説明：自動
# >advancemnet neofunction:advancements/tick/quest/14/1
# =/function neofunction:system/adv/tick/quest/14/2


loot spawn ~ ~1 ~ loot neofunction:item/1350
loot spawn ~ ~1 ~ loot neofunction:item/1350
loot spawn ~ ~1 ~ loot neofunction:item/1350
loot spawn ~ ~1 ~ loot neofunction:item/1350
loot spawn ~ ~1 ~ loot neofunction:item/1350
loot spawn ~ ~1 ~ loot neofunction:item/1350
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}

execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/681"},limit=3,sort=nearest,distance=..16] run spreadplayers 815 1643 10 32 false @s
execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/680"},limit=3,sort=nearest,distance=..16] run spreadplayers 815 1643 10 32 false @s

execute in neodimension:ceresta_festa run setblock 816 38 1644 minecraft:redstone_block

execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/680"},limit=3,sort=nearest] run effect give @s minecraft:glowing infinite
execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/681"},limit=3,sort=nearest] run effect give @s minecraft:glowing infinite