# 命名：confiscate.mcfunction
# 説明：プレイヤーの持ち物一式を保存してから全没収する(ダンジョン入場時用)
# > 呼び出し元Functionのパス：
# =/function neofunction:system/world/ceresta/parkour/confiscate

data modify storage neofunction:dungeon_backup entries append value {}
$data modify storage neofunction:dungeon_backup entries[-1].uuid set value $(UUID)
data modify storage neofunction:dungeon_backup entries[-1].Inventory set from entity @s Inventory
data modify storage neofunction:dungeon_backup entries[-1].EnderItems set from entity @s EnderItems
# 【変更：2026-09-27 26.3対応】防具・オフハンドは 26.3 では Inventory ではなく equipment に保存されるため併せて退避する
data modify storage neofunction:dungeon_backup entries[-1].equipment set from entity @s equipment

# 持ち物を丸ごと没収する。
function neofunction:system/world/ceresta/parkour/clear_all_slots