# 命名：4
# 説明：lv4
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/4


# エピック・アイテム
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Epic:","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FF8330"}],"color":"#FFAC34"}],"color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"light_purple","bold":true}

# 通知
title @a[scores={LVL=..40},distance=..64] actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"エピック・アイテム","color":"light_purple","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"大きな武器屋でも異彩を放つようなアイテム"}]}},{"text":"がドロップした！","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

#音
playsound minecraft:item.goat_horn.sound.1 record @a[scores={LVL=..40},distance=..64] ~ ~ ~ 0.5 1.5
playsound minecraft:block.amethyst_block.break record @a[scores={LVL=..40},distance=..64] ~ ~ ~ 1 0.5

