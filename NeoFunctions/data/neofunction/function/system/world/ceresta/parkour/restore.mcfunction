# 命名：restore.mcfunction
# 説明：保存済みバックアップがあれば復元処理を呼び出す(ダンジョン退出/クリア/死亡時用)
# > 呼び出し元Functionのパス：
# =/function neofunction:system/world/ceresta/parkour/restore

$execute if data storage neofunction:dungeon_backup entries[{uuid:$(UUID)}] run function neofunction:system/world/ceresta/parkour/restore_do with entity @s
