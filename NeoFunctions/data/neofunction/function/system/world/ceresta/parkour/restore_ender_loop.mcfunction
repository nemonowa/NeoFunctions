# 命名：restore_ender_loop.mcfunction
# 説明：エンダーチェストの復元対象を1件ずつ処理する再帰ループ
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore_do, neofunction:system/world/ceresta/parkour/restore_ender_loop(自身の再帰)
# =/function neofunction:system/world/ceresta/parkour/restore_ender_loop

execute unless data storage neofunction:dungeon_tmp ender[0] run return 0

# 【変更：2026-09-27 26.3対応】復元するアイテムを item_display に載せる（マクロでアイテムの中身を埋め込めなくなったため。旧：tag が無ければ空の tag を補う処理）
data modify entity @e[type=item_display,tag=parkour_restore,limit=1] item set from storage neofunction:dungeon_tmp ender[0]

execute store result storage neofunction:dungeon_tmp ender[0].count int 1 run data get storage neofunction:dungeon_tmp ender[0].count

function neofunction:system/world/ceresta/parkour/restore_ender_item

data remove storage neofunction:dungeon_tmp ender[0]
function neofunction:system/world/ceresta/parkour/restore_ender_loop
