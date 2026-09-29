# 命名：8
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block/8

## 内容
tellraw @a [{"text":"* ","color":"yellow"},{"selector":"@s","color":"yellow"},{"text":" left the game."}]
clear @s minecraft:structure_block
