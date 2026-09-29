# 命名：full_check
# 説明：
# >/function neofunction:system/adv/inventory_changed/inf_bundle/.neo
# =/function neofunction:system/adv/inventory_changed/inf_bundle/full_check

$data modify storage neofunction:inf_bundle FullCheck set from entity @s Inventory[{Slot:$(Slot)b}].components."minecraft:bundle_contents"[79]
# 【変更：2026-09-27 26.3対応】バンドルの中身（アイテム）の個数は count(int) になった
execute if data storage neofunction:inf_bundle FullCheck{count:64} run scoreboard players set #Calc1 temp 0