# 命名：2
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block/2

## 内容
# tellraw @s [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> SEQUENCE-002を起動します。"},{"text":"over.","color":"light_purple"}]

tellraw @a [{"text":"<"},{"selector":"0-0-0-0-1"},{"text":"> "},{"selector":"@s"},{"text":" が"},{"text":"仮想戦闘訓練Level-δ","color":"dark_aqua","bold":true},{"text":"を開始しました。"},{"text":"over.","color":"light_purple"},{"text":"\n✔ 準備完了（アイテムの持ち込みや装着は不能）","color":"green",hover_event:{"action":"show_text","value":[{"text":"Go!!"}]},click_event:{"action":"run_command",command:"/trigger code set 55555"}},{"text":"\n✖ 退出する","color":"red",hover_event:{"action":"show_text","value":[{"text":"none"}]},click_event:{"action":"run_command",command:"/trigger code set 9"}}]

tag @s add go


#
schedule function neofunction:system/adv/inventory_changed/structure_block/2/10s 1s replace
schedule function neofunction:system/adv/inventory_changed/structure_block/2/5s 6s replace
schedule function neofunction:system/adv/inventory_changed/structure_block/2/3s 8s replace
schedule function neofunction:system/adv/inventory_changed/structure_block/2/2s 9s replace
schedule function neofunction:system/adv/inventory_changed/structure_block/2/1s 10s replace
schedule function neofunction:system/adv/inventory_changed/structure_block/2/0s 11s replace

#
clear @s minecraft:structure_block
