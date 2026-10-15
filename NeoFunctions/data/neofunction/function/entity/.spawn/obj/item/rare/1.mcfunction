# 命名：1
# 説明：lv1
# >/function neofunction:entity/.spawn/obj/item/rare
# =/function neofunction:entity/.spawn/obj/item/rare/1


# コモン・アイテム
# 文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
data modify entity @s Item.components."minecraft:lore" append value {"text":"Common:","extra":[{"text":"✯","italic":false,"color":"#FFE33B"}],"italic":false,"color":"white","bold":true}

# 通知
# title @p[scores={LVL=..10}] actionbar [{"text":"* ","color":"white","bold":false,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}},{"text":"コモン・アイテム","bold":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"即席であったり劣化したアイテム。"}]}},{"text":"がドロップした！",hover_event:{"action":"show_text","value":[{"text":"","bold":false,"italic":false}]}}]

# 音
# playsound minecraft:item.goat_horn.sound.1 record @p[scores={LVL=..10}] ~ ~ ~ 0.5 1.5
# playsound minecraft:block.amethyst_block.break record @p[scores={LVL=..10}] ~ ~ ~ 1 0.5

