# 命名：4
# 説明：ワールドの正常性確認。ErrorCode=1
# 説明：スコアボードがない。初ログイン。スコアボードデータの破損。
# >/function neofunction:asset/event/log-in/.neo
# =/function neofunction:asset/event/log-in/4



# 通知
# say ワールドの破損を確認。ErrorCode=4

execute as 00000000-0000-0000-0000-000000000001 run tellraw @a[advancements={neoadvancement:anchor/root/nexus=true}] [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"@s","underlined":false},{"text":">","color":"white","bold":false,"italic":false},{"text":" コード承認。これより「戦闘解析知性体C.A.I.」の権限により004シーケンスを開始します。","color":"white",hover_event:{"action":"show_text","value":[{"text":"log > neofunction:asset/event/log-in/4"}]}}]

function neofunction:asset/event/log-in/hello_world

function neofunction:system/setting
# scoreboard objectives setdisplay sidebar world


# 戻り値
schedule function neofunction:asset/event/log-in/.neo 3s replace
