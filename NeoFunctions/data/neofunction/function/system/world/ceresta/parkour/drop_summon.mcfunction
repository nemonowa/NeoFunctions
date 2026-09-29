# 命名：drop_summon.mcfunction
# 説明：渡されたid/tag/Countのアイテムを、その場に(空気状態を経由せず)最初から中身入りで召喚してドロップさせる
# > 呼び出し元Functionのパス：neofunction:system/world/ceresta/parkour/restore_inventory_item, neofunction:system/world/ceresta/parkour/restore_ender_item
# =/function neofunction:system/world/ceresta/parkour/drop_summon

# 【変更：2026-09-27 26.3対応】26.3 のアイテム形式（id / count / components）に合わせる（呼び出し元なし）
$summon minecraft:item ~ ~ ~ {Item:{id:$(id),count:$(count),components:$(components)},Motion:[0.0,0.2,0.0]}
