# 命名：5
# 説明：ワールドの正常性確認。ErrorCode=5
# 説明：MCver確認
# >/function neofunction:asset/event/log-in/.neo
# =/function neofunction:asset/event/log-in/5



# 通知
# say ワールドの破損を確認。ErrorCode=5

tellraw @a [{"text":"<","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"log > neofunction:event/main/1"}]}},{"selector":"00000000-0000-0000-0000-000000000001"},{"text":">","bold":false,"italic":false},{"text":" システム起動バージョンの齟齬を確認。推奨はver1.20.4です。\nステータス「"},{"text":"レッド-シグナル","color":"red"},{"text":"」。"},{"text":"over.","color":"light_purple"}]

#execute as 00000000-0000-0000-0000-000000000001 run tellraw @a [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"@s","underlined":false},{"text":">","color":"white","bold":false,"italic":false},{"text":" コード承認。これより「戦闘解析知性体C.A.I.」の権限により005シーケンスを開始します。","color":"white",hover_event:{"action":"show_text","value":[{"text":"log > neofunction:asset/event/log-in/5"}]}}]

#function neofunction:asset/event/hello_world

# 戻り値
# schedule function neofunction:asset/event/log-in/.neo 3s replace
