# 命名：restore_inventory_loop.mcfunction
# 説明：通常インベントリの復元対象を1件ずつ処理する再帰ループ
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore_do, neofunction:system/world/ceresta/parkour/restore_inventory_loop(自身の再帰)
# =/function neofunction:system/world/ceresta/parkour/restore_inventory_loop

execute unless data storage neofunction:dungeon_tmp work[0] run return 0

# 復元するアイテムを item_display に載せる
data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp work[0]

execute store result storage neofunction:dungeon_tmp work[0].count int 1 run data get storage neofunction:dungeon_tmp work[0].count

function neofunction:system/world/ceresta/parkour/restore_inventory_item

data remove storage neofunction:dungeon_tmp work[0]
function neofunction:system/world/ceresta/parkour/restore_inventory_loop
