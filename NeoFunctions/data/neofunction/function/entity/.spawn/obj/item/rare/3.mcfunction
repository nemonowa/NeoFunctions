# 命名：3
# 説明：lv3
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/3


# レガシー・アイテム
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Legacy:","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FFAC34"}],"color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"dark_aqua","bold":true}

# 通知
title @a[distance=..64,scores={LVL=..30}] actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"レガシー・アイテム","color":"dark_aqua","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"冒険家が自慢するようなアイテム。"}]}},{"text":"がドロップした！","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

#音
playsound minecraft:item.goat_horn.sound.1 record @a[distance=..64,scores={LVL=..30}] ~ ~ ~ 0.5 1.5
playsound minecraft:block.amethyst_block.break record @a[distance=..64,scores={LVL=..30}] ~ ~ ~ 1 0.5

