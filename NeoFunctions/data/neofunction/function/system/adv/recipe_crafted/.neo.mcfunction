# 命名：.neo
# 説明：進捗達成時
# >/function neofunction:consume_item/.neo
# =/function neofunction:system/adv/recipe_crafted/.neo


# 内容
#tellraw @s [{"text":"テストアイテムクラフト"}]
loot give @s loot neofunction:item/1042

# VFX
playsound minecraft:entity.villager.work_fletcher player @a ~ ~ ~ 1 1.5
playsound minecraft:entity.villager.work_toolsmith player @a ~ ~ ~ 1 1

# 次回以降も実行するためにレシピ没収
recipe take @s neofunction:.neo

# 再使用のために進捗剥奪
advancement revoke @s only neofunction:recipe_crafted/.neo
