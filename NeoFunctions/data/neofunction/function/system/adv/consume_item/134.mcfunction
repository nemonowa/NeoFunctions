# 命名：134
# 説明：
# >/function neofunction:consume_item/134
# =/function neofunction:system/adv/consume_item/134


# 内容
scoreboard players add @s SP 70
title @s actionbar [{"text":"SP回復 +70｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal




