# 命名：319
# 説明：進捗達成時
# 説明：ワイルドベリー
# >/function neofunction:consume_item/317
# =/function neofunction:system/adv/consume_item/319


## 内容
scoreboard players add @s SP 5
title @s actionbar [{"text":"SP回復 +5｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal


tellraw @s [{"text":"<","color":"white",hover_event:{"action":"show_text","value":[{"text":"説明：無毒な果実"}]}},{"selector":"@s","color":"white"},{"text":"> 「この味は..."},{"text":"ホワイトベリー","color":"#EDC2FF","bold":true,"underlined":true},{"text":"だと思う！」"}]
