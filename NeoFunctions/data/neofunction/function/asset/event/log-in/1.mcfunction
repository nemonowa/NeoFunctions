# 命名：1
# 説明：ワールドの正常性確認。ErrorCode=1
# 説明：Χがいない。初ログイン。エンティティデータの破損。kill @e
# >/function neofunction:asset/event/log-in/.neo
# =/function neofunction:asset/event/log-in/1



# 通知
# say ワールドの初期起動を確認。Code=1

function neofunction:asset/summon/1

execute as 00000000-0000-0000-0000-000000000001 run tellraw @a[advancements={neoadvancement:anchor/root/nexus=true}] [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"@s","underlined":false},{"text":">","color":"white","bold":false,"italic":false},{"text":" コード承認。これより「戦闘解析知性体C.A.I.」の権限により初期化シーケンスを開始します。","color":"white",hover_event:{"action":"show_text","value":[{"text":"log > neofunction:asset/event/hello_world"}]}}]

# 戻り値
schedule function neofunction:asset/event/log-in/.neo 3s replace
