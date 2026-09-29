# 命名：cai1
# 説明：ワールドの正常性確認。ErrorCode=5
# 説明：MCver確認
# >/function neofunction:asset/event/log-in/.main
# =/function neofunction:asset/event/log-in/cai1



# 通知
execute as 0-0-0-0-1 run tellraw @a[sort=arbitrary,limit=1,advancements={neoadvancement:anchor/root/nexus=true},gamemode=creative] [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"@s","underlined":false},{"text":">","color":"white","bold":false,"italic":false},{"text":" コード承認。これより「戦闘解析知性体C.A.I.」の権限で001シーケンスを実行します。","color":"white",hover_event:{"action":"show_text","value":[{"text":"log > neofunction:asset/event/log-in/.main"}]}}]