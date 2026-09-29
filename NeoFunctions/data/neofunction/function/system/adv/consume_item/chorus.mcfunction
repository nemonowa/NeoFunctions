# 命名：chorus
# 説明：進捗達成時（chorus消費
# >/function neofunction:consume_item/honey_bottle
# =/function neofunction:system/adv/consume_item/chorus


## 内容
scoreboard players remove @s SP 25
title @s actionbar [{"text":"SP消耗 -25｜現在値：","color":"red","bold":true},{"score":{"name":"@s","objective":"SP"}}]
tellraw @s [{"text":"<","color":"white",hover_event:{"action":"show_text","value":[{"text":"説明：食べるとテレポートする果実"}]}},{"selector":"@s","color":"white"},{"text":"> 「絶望的に不味い...」"}]

execute if dimension neodimension:nexus in neodimension:nexus run tp @s 1280 128 1280






