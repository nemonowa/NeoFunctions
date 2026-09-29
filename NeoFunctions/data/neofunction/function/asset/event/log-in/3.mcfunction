# 命名：3
# 説明：ワールドの正常性確認。ErrorCode=1
# 説明：ストレージがない。初ログイン。ストレージデータの破損。data modify
# >/function neofunction:asset/event/log-in/.neo
# =/function neofunction:asset/event/log-in/3



# 通知
say ワールドの破損を確認。ErrorCode=3

data modify storage neofunction:asset version set value '{"text":"ver 0.0.0","color":"green"}'

execute as 00000000-0000-0000-0000-000000000001 run tellraw @a[advancements={neoadvancement:anchor/root/nexus=true}] [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"@s","underlined":false},{"text":">","color":"white","bold":false,"italic":false},{"text":" コード承認。これより「戦闘解析知性体C.A.I.」の権限により003シーケンスを開始します。","color":"white",hover_event:{"action":"show_text","value":[{"text":"log > neofunction:asset/event/log-in/3"}]}}]

# 戻り値
schedule function neofunction:asset/event/log-in/.neo 3s replace
