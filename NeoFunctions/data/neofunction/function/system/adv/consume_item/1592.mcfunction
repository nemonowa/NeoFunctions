# 命名：1592
# 説明：（説明未記載）
# >adv
# =/function neofunction:system/adv/consume_item/1592

# 内容
scoreboard players add @s SP 10
title @s actionbar [{"text":"SP回復 +10｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal
