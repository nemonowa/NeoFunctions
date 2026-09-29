# 命名：1266
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1266



## 内容
title @s actionbar [{"text":"スペルアイテム🔯発動【天候同調 Ⅰ】","color":"light_purple"}]
playsound ambient.underwater.enter record @s ~ ~ ~ 0.1 2.0
execute if predicate neofunction:weather_check/sunny run effect give @s minecraft:speed 10 0