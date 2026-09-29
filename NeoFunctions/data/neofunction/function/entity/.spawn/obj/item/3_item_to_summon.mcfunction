# 命名：エンティティ処理
# 説明：エンティティ初期スポーン時。[tag=check]がないentityが存在するとき
# 説明：スプレッドシートのマクロで出力したデータを貼り付けるだけで全てが叶う。
# 著作：Creat by nemo. Copyright © SoraFlete. All Rights Resarved.
# >(呼び出し元が見つかりませんでした)
# =/function neofunction:entity/.spawn/obj/item/3_item_to_summon

# data get entity @e[type=minecraft:item,limit=1] Item.components."minecraft:custom_data".summon


# 内容
$function neofunction:asset/summon/$(summon)

# 終了
kill @s
