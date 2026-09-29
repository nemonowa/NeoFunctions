# 命名：restore_do.mcfunction
# 説明：対象プレイヤーのバックアップを取り出してバックアップを削除し、復元ループを開始する
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore
# =/function neofunction:system/world/ceresta/parkour/restore_do

$data modify storage neofunction:dungeon_tmp work set from storage neofunction:dungeon_backup entries[{uuid:$(UUID)}].Inventory
$data modify storage neofunction:dungeon_tmp ender set from storage neofunction:dungeon_backup entries[{uuid:$(UUID)}].EnderItems
# 【変更：2026-09-27 26.3対応】防具・オフハンド（equipment）も復元用に取り出す
$data modify storage neofunction:dungeon_tmp equip set from storage neofunction:dungeon_backup entries[{uuid:$(UUID)}].equipment
$data remove storage neofunction:dungeon_backup entries[{uuid:$(UUID)}]

# 【変更：2026-09-27 26.3対応】マクロでアイテムの中身($(tag))を埋め込めなくなったため、一時的な item_display に載せて item replace … from で復元する
summon item_display ~ ~ ~ {view_range:0f,Tags:["parkour_restore","del"]}
function neofunction:system/world/ceresta/parkour/restore_inventory_loop
function neofunction:system/world/ceresta/parkour/restore_ender_loop
function neofunction:system/world/ceresta/parkour/restore_equipment
kill @e[type=item_display,tag=parkour_restore]
