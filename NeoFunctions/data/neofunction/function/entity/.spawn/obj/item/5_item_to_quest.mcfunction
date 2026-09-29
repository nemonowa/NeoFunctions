# 命名：5_item_to_quest
# 説明：CustomTag to quest
# 説明：data get entity @e[type=minecraft:item,limit=1] Item.tag.quest
# 説明：だれか最適化して(だれかしろ）
# >/function neofunction:entity/.spawn/obj/item/paper
# =/function neofunction:entity/.spawn/obj/item/5_item_to_quest


# 内容(1~100)
$execute on origin run function neofunction:system/adv/tick/quest/tag/$(quest)

# 終了
kill @s