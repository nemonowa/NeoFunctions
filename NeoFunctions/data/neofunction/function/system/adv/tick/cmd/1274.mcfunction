# 命名：1274
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1274



## 内容
title @s actionbar [{"text":"スペルアイテム🔯発動【天候同調 Ⅲ】","color":"light_purple"}]
playsound entity.warden.sonic_boom record @s ~ ~ ~ 0.1 0.7
execute if predicate neofunction:weather_check/sunny run effect give @s minecraft:speed 10 0
execute if predicate neofunction:weather_check/rainy run effect give @s minecraft:speed 10 2
execute if predicate neofunction:weather_check/thunder run effect give @s minecraft:speed 10 4