# 命名：1270
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1270



## 内容
title @s actionbar [{"text":"スペルアイテム🔯発動【天候同調 Ⅱ】","color":"light_purple"}]
playsound ambient.underwater.exit record @s ~ ~ ~ 0.1 0.8
execute if predicate neofunction:weather_check/sunny run effect give @s minecraft:speed 10 0
execute if predicate neofunction:weather_check/rainy run effect give @s minecraft:speed 10 2
