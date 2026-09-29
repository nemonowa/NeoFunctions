# 命名：run
# 説明：改良型作業台のクラフトを実行
# 実行条件：看板をクリック
# >改良型作業台の2マス上の看板
# =/function neofunction:system/crafter/run

#データ整理
#neofunction:crafter {crafter_recipe:[{recipe:[],result:[]}]}
data remove storage neofunction:crafter Temp
data modify storage neofunction:crafter Temp.recipe set from storage neofunction:crafter crafter_recipe
data modify storage neofunction:crafter Temp.block set value []
function neofunction:system/crafter/get_data {Slot:0b}
function neofunction:system/crafter/get_data {Slot:1b}
function neofunction:system/crafter/get_data {Slot:2b}
function neofunction:system/crafter/get_data {Slot:9b}
function neofunction:system/crafter/get_data {Slot:10b}
function neofunction:system/crafter/get_data {Slot:11b}
function neofunction:system/crafter/get_data {Slot:18b}
function neofunction:system/crafter/get_data {Slot:19b}
function neofunction:system/crafter/get_data {Slot:20b}
data remove storage neofunction:crafter Temp.block[].count

data modify storage neofunction:crafter CanCraft set value 0b

function neofunction:system/crafter/check_loop
# ごみ処理
data remove storage neofunction:crafter Temp
# 演出
execute if data storage neofunction:crafter {CanCraft:1b} run playsound block.anvil.use master @a[distance=..12] ~ ~-2 ~ 1 1.5
execute if data storage neofunction:crafter {CanCraft:1b} run return run particle minecraft:happy_villager ~ ~-2 ~ 1 1 1 0 50 force

playsound minecraft:entity.item.break master @a[distance=..12] ~ ~-2 ~ 1 1.5
particle smoke ~ ~-2 ~ 1 1 1 0 50 force