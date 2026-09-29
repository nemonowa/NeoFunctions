# 命名：2
# 説明：ワールドの正常性確認。ErrorCode=1
# 説明：Χがいない。初ログイン。エンティティデータの破損。kill @e
# >/function neofunction:asset/event/log-in/.neo
# =/function neofunction:asset/event/log-in/2


# 通知
say ワールドの破損を確認。ErrorCode=2

execute in neodimension:nexus run setblock 1288 128 1288 minecraft:redstone_block destroy
# execute in neodimension:nexus run setblock 1280 128 1280 minecraft:lodestone destroy

execute as 00000000-0000-0000-0000-000000000001 run tellraw @a[advancements={neoadvancement:anchor/root/nexus=true}] [{"text":"<","color":"white","bold":false,"italic":false},{"selector":"@s","underlined":false},{"text":">","color":"white","bold":false,"italic":false},{"text":" コード承認。これより「戦闘解析知性体C.A.I.」の権限により002シーケンスを開始します。","color":"white",hover_event:{"action":"show_text","value":[{"text":"log > neofunction:asset/event/log-in/2"}]}}]


# 戻り値
schedule function neofunction:asset/event/log-in/.neo 3s replace
