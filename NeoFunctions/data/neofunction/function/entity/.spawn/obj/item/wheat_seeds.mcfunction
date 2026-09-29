# 命名：wheat_seeds
# 説明：
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/wheat_seeds

# セレスタなら置き換える
execute unless data entity @s Thrower at @s if dimension neodimension:ceresta_festa run data modify entity @s Item.components set value {"minecraft:can_place_on":[{blocks:"farmland"}],"minecraft:can_break":[{blocks:"wheat"}],"minecraft:lore":[{"text":"\u00A7a\u00A7lルクスイーファ\u00A77の名産品である\u00A76\u00A7l上質な小麦\u00A77の\u00A7a\u00A7l種\u00A77。","color": "gray","italic": false}],"minecraft:custom_name":{"text":"黄金麦の種","color": "green","bold": true,"italic": false},"minecraft:custom_model_data":{floats:[1584.0f]},"minecraft:custom_data":{rare:["1",]}}