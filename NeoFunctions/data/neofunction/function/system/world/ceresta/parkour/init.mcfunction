# 命名：init.mcfunction
# 説明：dungeon_backupストレージのentriesリストを保険として初期化する
# > 呼び出し元Functionのパス：(function呼び出しではなく #minecraft:load タグ経由で自動実行)
# =/function neofunction:system/world/ceresta/parkour/init

execute unless data storage neofunction:dungeon_backup entries run data modify storage neofunction:dungeon_backup entries set value []
