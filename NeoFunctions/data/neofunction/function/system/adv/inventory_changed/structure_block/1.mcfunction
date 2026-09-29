# 命名：1
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block/1

## 内容
tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> SEQUENCE-000を起動します。"},{"text":"over.","color":"light_purple"}]

tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> 現在、貴官は[§a豊穣の大自然島セレスタフェスタ§r]の探索任務を遂行中です。\n"},{"selector":"@p"},{"text":" is currently in operation for Main Objective 1. "},{"text":"over.","color":"light_purple"}]



clear @s minecraft:structure_block
