# 命名：7
# 説明：lv7
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/7


# アルティメット・アイテム
# 文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Ultimate:","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FF3427"}],"color":"#FF4328"}],"color":"#FF602C"}],"color":"#FF8330"}],"color":"#FFAC34"}],"color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"dark_red","bold":true}

# 通知
title @a[scores={LVL=..70},distance=..64] actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"アルティメット・アイテム","color":"dark_red","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"究極の力を持つアイテム。"}]}},{"text":"がドロップした！","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

# 音
playsound minecraft:item.goat_horn.sound.1 record @a[scores={LVL=..70},distance=..64] ~ ~ ~ 0.5 1.5
playsound minecraft:block.amethyst_block.break record @a[scores={LVL=..70},distance=..64] ~ ~ ~ 1 0.5

