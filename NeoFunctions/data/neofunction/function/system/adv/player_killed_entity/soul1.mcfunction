# 命名：soul1
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_killed_entity/boss
# =/function neofunction:system/adv/player_killed_entity/soul1



## 内容
scoreboard players add soul1 temp 1
title @s actionbar [{"text":"火属性討伐数：","color":"red","bold":true},{"score":{"name":"soul1","objective":"temp"}}]
