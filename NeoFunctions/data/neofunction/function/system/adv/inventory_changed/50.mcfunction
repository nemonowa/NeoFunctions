# 命名：50
# 説明：インベントリ左上にカスタムスロットがない場合
# >/advancement
# =/function neofunction:system/adv/inventory_changed/50


# 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/50

# スキルスロット基礎処理
clear @s minecraft:bundle[minecraft:custom_model_data={floats:[50.0f]}]
playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9 1

# 特定のものが入った時の処理
execute if data entity @s Inventory[{Slot:9b}].components."minecraft:custom_data".slot run function neofunction:system/exchange/slotreset
execute if data entity @s Inventory[{Slot:9b}].components."minecraft:custom_data".rare run function neofunction:system/exchange/starshard-score

# なにこの何？は？なんでここでやってんの？
function neofunction:asset/name/get
loot replace entity @s container.9 loot neofunction:item/other/skillslot

# SP消費：初期は除外
execute as @s[advancements={neoadvancement:nexus/root/1/0=false}] run return 0
scoreboard players remove @s SP 1
function neofunction:player/sp/.neo

# 旧カスタムインベントリ処理
# execute as @s[tag=csgui] run function neofunction:player/inventory/load
# execute as @s[tag=csgui] run tellraw @s [{"text":"メニューを閉じた！"}]
# tag @s remove csgui

