# 命名：2
# 説明：lv2
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/2


# レア・アイテム
# 部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Rare:","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"aqua","bold":true}

# 通知
title @a[scores={LVL=..20},distance=..64] actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"レア・アイテム","color":"aqua","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"一般的で有用なアイテム。"}]}},{"text":"がドロップした！","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

#音
playsound minecraft:item.goat_horn.sound.1 record @a[scores={LVL=..20},distance=..64] ~ ~ ~ 0.5 1.5
playsound minecraft:block.amethyst_block.break record @a[scores={LVL=..20},distance=..64] ~ ~ ~ 1 0.5

