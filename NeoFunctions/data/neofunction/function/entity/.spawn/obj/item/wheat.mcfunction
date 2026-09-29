# 命名：wheat
# 説明：小麦
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/wheat

# セレスタなら置き換える
# 【変更：2026-09-27 26.3対応】1.20.4 の「Item.tag が無い＝NBTを持たない素のアイテム」判定は 26.3 では Item.components の有無に相当する
execute unless data entity @s Thrower unless data entity @s Item.components at @s if dimension neodimension:ceresta_festa run data modify entity @s Item.components set value {"minecraft:lore":[{"text":"\u00A7a\u00A7lルクスイーファ\u00A77の名産品である\u00A76\u00A7l上質な小麦\u00A77。","color": "gray","italic": false}],"minecraft:custom_name":{"text":"ルクスの黄金麦","color": "gold","bold": true,"italic": false},"minecraft:custom_model_data":{floats:[1422.0f]},"minecraft:custom_data":{rare:["1",]}}