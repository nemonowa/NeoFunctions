# 命名：0
# 説明：クエスト個別タグ付与&重複受注検知
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/tag/0

#内容
#クエストキャンセル起動します 
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" 依頼書の破棄を申請します"}]
tellraw @s [{"text":"<"},{"selector":"@s"},{"text":">"},{"text":" 契約印が消え去った！"}]
function neofunction:asset/event/quest/init


