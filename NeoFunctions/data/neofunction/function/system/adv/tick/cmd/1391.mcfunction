# 命名：1391
# 説明：進捗達成時
# >1s
# =/function neofunction:system/adv/tick/cmd/1391


# 内容
tellraw @s [{"text":"🔯【六眼】","color":"light_purple"}]
scoreboard players add @s SP 20
title @s actionbar [{"text":"SP回復 +20｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal




