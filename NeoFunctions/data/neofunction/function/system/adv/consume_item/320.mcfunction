# 命名：320
# 説明：進捗達成時：ブルーベリー
# >/function neofunction:consume_item/320
# =/function neofunction:system/adv/consume_item/320


# 内容
scoreboard players add @s SP 5
title @s actionbar [{"text":"SP回復 +5｜現在値：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"SP"}}]
function neofunction:asset/particle/.mp_heal

effect give @s minecraft:speed 30 0

tellraw @s [{"text":"<","color":"white",hover_event:{"action":"show_text","value":[{"text":"説明：萼 (がく)が星形のレアな果実。30sの加速を得る。"}]}},{"selector":"@s","color":"white"},{"text":"> 「この味は..."},{"text":"ブルーベリー","color":"blue","bold":true,"underlined":true},{"text":"だと思う！」"}]