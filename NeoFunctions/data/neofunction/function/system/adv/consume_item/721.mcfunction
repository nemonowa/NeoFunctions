# 命名：721
# 説明：進捗達成時：特大！レッドベルベットケーキ
# >/function neofunction:consume_item/721
# =/function neofunction:system/adv/consume_item/721


# 内容
scoreboard players add @s SP 15

title @s actionbar [{"text":"SP回復 +15｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]

function neofunction:asset/particle/.mp_heal
