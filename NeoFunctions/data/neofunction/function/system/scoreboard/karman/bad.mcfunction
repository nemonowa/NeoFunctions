# 命名：bad
# 説明：カルマ値の処理
# >/function neofunction:system/scoreboard/karman
# =/function neofunction:system/scoreboard/karman/bad


# 内容
team join black @s
tellraw @a [{"selector":"@s"},{"text":"はカルマ値が飽和して","color":"gray"},{"text":"ブラックネーム","color":"black","bold":true},{"text":"になった！","color":"gray"}]