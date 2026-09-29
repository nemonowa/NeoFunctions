# 命名：1850
# 説明：進捗達成時
# >/function neofunction:consume_item/1850
# =/function neofunction:system/adv/consume_item/1850


# 内容
scoreboard players add @s SP 125
title @s actionbar [{"text":"SP回復 +125｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal

