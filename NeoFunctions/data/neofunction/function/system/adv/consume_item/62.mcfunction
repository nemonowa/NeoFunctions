# 命名：62
# 説明：ウィルポーション
# >/function neofunction:consume_item/62
# =/function neofunction:system/adv/consume_item/62


## 内容（もとamp110~119 SP関係 
execute as @s if score @s SP <= @s SPmax run scoreboard players add @s SP 50
title @s actionbar [{"text":"SP回復 +50｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal

