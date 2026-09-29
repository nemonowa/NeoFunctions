# 命名：cmd_check
# 説明：サーバープロパティでコマンドブロックが無効化されてる時の通知
# >/function neofunction:asset/event/log-in
# =/function neofunction:asset/event/log-in/cmd_check

execute if score #cmd_check temp matches 0 run title @a title {"text":"【警告】コマンドブロックが無効です！","color":"red"}
execute if score #cmd_check temp matches 0 run title @a subtitle {"text":"server.properties の enable-command-block を true にしてください","color":"gray"}
execute in neodimension:nexus run setblock 1286 130 1294 air
