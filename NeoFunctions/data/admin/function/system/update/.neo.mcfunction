# 命名：.neo
# 説明：（説明未記載）
# >
# =/function admin:system/update/.neo
data remove storage admin:update Item
# 【変更：2026-09-27 26.3対応】$(pass) には アイテム（コンテナのアイテム／村人の取引アイテム）が入るため、アイテムの 26.3 形式（count / components）で判定する。マクロへ渡す CustomModelData は custom_model_data(小数) を整数にして渡す
$execute store result storage admin:update CMD.CustomModelData int 1 run data get storage admin:update $(pass).components."minecraft:custom_model_data".floats[0]
$execute if data storage admin:update $(pass).components."minecraft:custom_model_data" unless data storage admin:update $(pass){id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":{floats:[284.0f]}}} unless data storage admin:update $(pass){id:"minecraft:paper",components:{"minecraft:custom_model_data":{floats:[1200.0f]}}} run function admin:system/update/macro with storage admin:update CMD
$execute if data storage admin:update Item.components."minecraft:damage" if data storage admin:update $(pass).components."minecraft:damage" run data modify storage admin:update Item.components."minecraft:damage" set from storage admin:update $(pass).components."minecraft:damage"
$execute if data storage admin:update Item if data storage admin:update $(pass).components."minecraft:custom_data".check run function admin:system/update/resolve
$execute if data storage admin:update Item run data modify storage admin:update $(pass).id set from storage admin:update Item.id
$execute if data storage admin:update Item run data modify storage admin:update $(pass).components set from storage admin:update Item.components