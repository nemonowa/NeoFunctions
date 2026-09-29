# 命名：potion
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/recipe_crafted/potion

## 内容
# tellraw @s [{"text":"テストアイテムクラフト"}]
loot spawn ~ ~ ~ loot neofunction:item/70
data merge entity @e[type=item,distance=..3,limit=1] {PickupDelay:1}

# VFX
# playsound minecraft:entity.villager.work_fletcher player @a ~ ~ ~ 1 1.5
# playsound minecraft:entity.villager.work_toolsmith player @a ~ ~ ~ 1 1

# 次回以降も実行するためにレシピ没収
recipe take @s neofunction:smelting/potion


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:recipe_crafted/potion