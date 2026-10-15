# 命名：6
# 説明：lv6
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/6


# レジェンダリー・アイテム
# 文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Legendary:","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FF4328"}],"color":"#FF602C"}],"color":"#FF8330"}],"color":"#FFAC34"}],"color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"red","bold":true}

# 通知
title @a[scores={LVL=..60},distance=..64] actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"レジェンダリー・アイテム","color":"red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"伝説となり、歴史に残るようなアイテム。"}]}},{"text":"がドロップした！","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

# 音
playsound minecraft:item.goat_horn.sound.1 record @a[scores={LVL=..60},distance=..64] ~ ~ ~ 0.5 1.5
playsound minecraft:block.amethyst_block.break record @a[scores={LVL=..60},distance=..64] ~ ~ ~ 1 0.5

