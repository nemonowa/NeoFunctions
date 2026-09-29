# 命名：soul3
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_killed_entity/boss
# =/function neofunction:system/adv/player_killed_entity/soul3



## 内容
scoreboard players add soul3 temp 1
title @s actionbar [{"text":"風属性討伐数：","color":"green","bold":true},{"score":{"name":"soul3","objective":"temp"}}]
