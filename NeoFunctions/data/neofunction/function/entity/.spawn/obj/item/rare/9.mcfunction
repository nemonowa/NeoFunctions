# 命名：9
# 説明：lv9
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/9


# ワールズ・アイテム
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Worlds:","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","extra":[{"text":"✯","color":"#FF2525"}],"color":"#FF2D26"}],"color":"#FF3427"}],"color":"#FF4328"}],"color":"#FF602C"}],"color":"#FF8330"}],"color":"#FFAC34"}],"color":"#FFCC38"}],"italic":false,"color":"#FFE33B"}],"italic":false,"color":"gold","bold":true}

# 通知
title @a actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"ワールズ・アイテム","color":"gold","bold":true,"italic":false,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"世界の理を変える力を持つアイテム。"}]}},{"text":"がドロップした！","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

# 音
playsound minecraft:item.goat_horn.sound.1 record @a ~ ~ ~ 0.5 1.5
playsound minecraft:block.amethyst_block.break record @a ~ ~ ~ 1 0.5

