# 命名：6
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block/6

## 内容
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> SEQUENCE-004を起動します。"},{"text":"over.","color":"light_purple"}]

function neofunction:system/pos/gui

clear @s minecraft:structure_block
