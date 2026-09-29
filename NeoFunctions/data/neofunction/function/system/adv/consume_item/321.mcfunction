# 命名：321
# 説明：進捗達成時：クランベリー
# >/function neofunction:consume_item/317
# =/function neofunction:system/adv/consume_item/321


# 内容
scoreboard players add @s SP 5
title @s actionbar [{"text":"SP回復 +5｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal

tellraw @s [{"text":"<","color":"white",hover_event:{"action":"show_text","value":[{"text":"説明：鶴 (crane) が好むレアな果実"}]}},{"selector":"@s","color":"white"},{"text":"> 「この味は..."},{"text":"クランベリー","color":"red","bold":true,"underlined":true},{"text":"だと思う！」"}]

effect give @s minecraft:strength 30 0