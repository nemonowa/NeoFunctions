# 命名：paper
# 説明：両替処理
# 説明：花火の星
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/obj/item/paper



# 花火の星
execute if data entity @s Item.components."minecraft:custom_data".summon at @s run function neofunction:entity/.spawn/obj/item/3_item_to_summon with entity @s Item.components."minecraft:custom_data"
execute if data entity @s Item.components."minecraft:custom_data".skill at @s run function neofunction:entity/.spawn/obj/item/4_item_to_skill with entity @s Item.components."minecraft:custom_data"
execute if data entity @s Item.components."minecraft:custom_data".quest at @s run function neofunction:entity/.spawn/obj/item/5_item_to_quest with entity @s Item.components."minecraft:custom_data"

# 敵スポーン時に音楽を流そうと思ったが負荷が想像以上にあるので実装見送り
# execute as @s at @s run playsound item.firecharge.use record @a[distance=..16] ~ ~ ~ 1.0 0.6 0.1