# 命名：server
# 説明：サーバー通知
# 説明：[server]プレイヤーの世界層同期を確認。Code=001
# >/function neofunction:asset/event/log-in/.main
# =/function neofunction:asset/event/log-in/server


# 通知
execute unless entity @a[sort=arbitrary,advancements={neoadvancement:anchor/root/nexus=true}] run return 0
execute if entity @a[gamemode=creative] run say プレイヤーの世界層同期を確認。Code=001

