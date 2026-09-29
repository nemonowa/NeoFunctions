# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/write
# =/function neofunction:system/adv/tick/cmd/1717/editor/load/.neo

execute unless predicate neofunction:item/auto_skill_rule run return 0
data modify storage neofunction:item/1717 Temp.Items set from entity @s SelectedItem.components."minecraft:bundle_contents"
data modify storage neofunction:item/1717 data.List set value []
function neofunction:system/adv/tick/cmd/1717/editor/load/loop