# 命名：4_item_to_skill
# 説明：CustomModelData to Summon
# 説明：エンティティ初期スポーン時。[tag=check]がないentityが存在するとき
# 説明：data get entity @e[type=minecraft:item,limit=1] Item.tag.skill
# 説明：だれか最適化して
# >/function neofunction:entity/2_check
# =/function neofunction:entity/.spawn/obj/item/4_item_to_skill


# 内容(1~100)
$execute on origin run function neofunction:asset/skill/$(skill)
#execute if entity @s[type=item,nbt={Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{skill:1}}}}] on origin run function neofunction:asset/skill/1


# 終了
kill @s