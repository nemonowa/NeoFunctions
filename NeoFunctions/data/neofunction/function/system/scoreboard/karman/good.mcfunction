# 命名：good
# 説明：カルマ値の処理
# >/function neofunction:system/scoreboard/karman
# =/function neofunction:system/scoreboard/karman/good


# 内容
team join white @s
tellraw @a [{"selector":"@s"},{"text":"はカルマ値が飽和して","color":"gray"},{"text":"ホワイトネーム","color":"white","bold":true},{"text":"になった！","color":"gray"}]