# 命名：1852
# 説明：進捗達成時
# >/function neofunction:consume_item/1852
# =/function neofunction:system/adv/consume_item/1852


# 内容
scoreboard players add @s SP 25
title @s actionbar [{"text":"SP回復 +25｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal

