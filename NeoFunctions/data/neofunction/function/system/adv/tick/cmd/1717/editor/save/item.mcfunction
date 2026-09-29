# 命名：item
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/save/.neo
# =/function neofunction:system/adv/tick/cmd/1717/editor/save/item

data modify storage neofunction:item/1717 Temp.Id set from storage neofunction:item/1717 Temp.List[0]
function neofunction:system/adv/tick/cmd/1717/editor/save/item_macro with storage neofunction:item/1717 Temp
data modify storage neofunction:item/1717 Temp.Items append from entity @s item
data remove storage neofunction:item/1717 Temp.List[0]
execute if data storage neofunction:item/1717 Temp.List[0] run function neofunction:system/adv/tick/cmd/1717/editor/save/item