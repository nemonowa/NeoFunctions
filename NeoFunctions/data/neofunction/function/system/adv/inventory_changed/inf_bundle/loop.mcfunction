# 命名：loop
# 説明：
# >/function neofunction:system/adv/inventory_changed/inf_bundle/.neo
# =/function neofunction:system/adv/inventory_changed/inf_bundle/loop

data modify storage neofunction:inf_bundle Item.components."minecraft:bundle_contents" append from storage neofunction:inf_bundle CMD
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if score #Calc1 temp matches ..64 store result storage neofunction:inf_bundle Item.components."minecraft:bundle_contents"[-1].count int 1 run scoreboard players get #Calc1 temp
execute if score #Calc1 temp matches ..64 run scoreboard players set #Calc1 temp 0
# 【変更：2026-09-28 26.3対応】アイテムの数の項目が 26.3 では Count（byte）から count（int）に変わった
execute if score #Calc1 temp matches 65.. run data modify storage neofunction:inf_bundle Item.components."minecraft:bundle_contents"[-1].count set value 64
execute if score #Calc1 temp matches 65.. run scoreboard players remove #Calc1 temp 64

execute if score #Calc1 temp matches 1.. run function neofunction:system/adv/inventory_changed/inf_bundle/loop