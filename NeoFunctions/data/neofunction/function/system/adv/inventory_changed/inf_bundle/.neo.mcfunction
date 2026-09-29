# 命名：.neo
# 説明：
# >/function neofunction:system/adv/inventory_changed/1585
# >/function neofunction:system/adv/inventory_changed/1586
# =/function neofunction:system/adv/inventory_changed/inf_bundle/.neo


$execute if data entity @s Inventory[{Slot:$(Slot)b}].components{"minecraft:custom_data":{Count:5120}} run return 0
# 個数を数える
$execute store result score #Calc1 temp run clear @s $(id)[minecraft:custom_model_data={floats:[$(CMD)f]}] 0

execute if score #Calc1 temp matches 0 run return 0

# アイテムをデータにする
$data modify storage neofunction:inf_bundle Item set from entity @s Inventory[{Slot:$(Slot)b}]

scoreboard players set #Calc2 temp 0
execute if data storage neofunction:inf_bundle Item.components."minecraft:custom_data".Count store result score #Calc2 temp run data get storage neofunction:inf_bundle Item.components."minecraft:custom_data".Count

# 残り個数の計算をする
scoreboard players operation #Calc2 temp += #Calc1 temp
execute if score #Calc2 temp matches 5120.. run data modify storage neofunction:inf_bundle Item.components."minecraft:custom_data".Count set value 5120
execute unless score #Calc2 temp matches 5120.. store result storage neofunction:inf_bundle Item.components."minecraft:custom_data".Count int 1 run scoreboard players get #Calc2 temp
# 【変更：2026-09-28 26.3対応】文章の中で読む NBT の場所が 1.20.4 のままだった（アイテムの独自データは components."minecraft:custom_data"、名前は components."minecraft:custom_name"、頭の防具は equipment.head に変わった）
summon text_display ~ ~ ~ {Tags:["resolveText","del"],text:[{"text": "","color": "gray","italic": false},{"nbt": 'Item.components."minecraft:custom_data".Count',"storage": "neofunction:inf_bundle"},{"text": "/5120"}],alignment:"center",view_range:0}
data modify storage neofunction:inf_bundle Item.components."minecraft:lore"[-1] set from entity @e[tag=resolveText,limit=1,sort=nearest] text
kill @e[tag=resolveText]
scoreboard players remove #Calc2 temp 5120

# アイテムを返す
summon item_display ~ ~ ~ {Tags:["resolve","del"],view_range:0}
data modify entity @e[tag=resolve,limit=1,sort=nearest] item set from storage neofunction:inf_bundle Item
$item replace entity @s inventory.$(inventory) from entity @e[tag=resolve,limit=1,sort=nearest] container.0

kill @e[tag=resolve,limit=1,sort=nearest]

# あふれなければ消して終わり
$execute if score #Calc2 temp matches ..0 run return run clear @s $(id)[minecraft:custom_model_data={floats:[$(CMD)f]}]

# 溢れたら
# アイテム数を取得
$execute store result score #Calc1 temp run clear @s $(id)[minecraft:custom_model_data={floats:[$(CMD)f]}] 0
# あふれる量を減らす
scoreboard players operation #Calc1 temp -= #Calc2 temp
# clear
execute store result storage neofunction:inf_bundle Clear.Count int 1 run scoreboard players get #Calc1 temp
$data modify storage neofunction:inf_bundle Clear.CMD set value $(CMD)
function neofunction:system/adv/inventory_changed/inf_bundle/clear_macro with storage neofunction:inf_bundle Clear
