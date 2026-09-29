# 命名：view
# 説明：（説明未記載）
# >
# =/function admin:system/villager_edit/view
execute unless entity @e[tag=EditedVillager] run return run tellraw @s {"text": "Error> 対象となる村人がいません","color": "red","bold": true,click_event: {"action": "suggest_command",command: "/function admin:villager_edit"},hover_event: {"action": "show_text",value: {"text": "クリックでコマンドを入力"}}}

tellraw @s [{"text": "---------------------\n村人編集"},{"selector": "@e[tag=EditedVillager,limit=1]"},{"text": " 取引"},{"score": {"name": "#VillagerEdit.Slot","objective": "temp"}},{"text": "個目 "},{"text": "+","color": "green","bold": true,hover_event: {"action": "show_text",value: {"text": "この次に取引を増やす"}},click_event: {"action": "run_command",command: "/function admin:system/villager_edit/add"}},{"text": "  "},{"text": "-","color": "red","bold": true,hover_event: {"action": "show_text",value: {"text": "この取引を削除する"}},click_event: {"action": "run_command",command: "/function admin:system/villager_edit/remove"}}]
execute store result storage admin:villager_edit Slot int 1 run scoreboard players get #VillagerEdit.Slot temp
function admin:system/villager_edit/view/get_data with storage admin:villager_edit
# 【変更：2026-09-27 26.3対応】取引アイテムは 26.3 のアイテム形式。表示用に components と count（1個のときは省略される）を必ず用意する
execute unless data storage admin:villager_edit TradeData.buy.components run data modify storage admin:villager_edit TradeData.buy.components set value {}
execute unless data storage admin:villager_edit TradeData.buy.count run data modify storage admin:villager_edit TradeData.buy.count set value 1
execute if data storage admin:villager_edit TradeData.buyB unless data storage admin:villager_edit TradeData.buyB.components run data modify storage admin:villager_edit TradeData.buyB.components set value {}
execute if data storage admin:villager_edit TradeData.buyB unless data storage admin:villager_edit TradeData.buyB.count run data modify storage admin:villager_edit TradeData.buyB.count set value 1
execute unless data storage admin:villager_edit TradeData.sell.components run data modify storage admin:villager_edit TradeData.sell.components set value {}
execute unless data storage admin:villager_edit TradeData.sell.count run data modify storage admin:villager_edit TradeData.sell.count set value 1

# 【変更：2026-09-27 26.3対応】1.20.4 の show_item は tag を文字列で受け取っていたため文字列化していたが、26.3 は components をそのまま受け取るので不要（無効化）
# summon text_display ~ ~ ~ {text:{"storage":"admin:villager_edit","nbt":"TradeData.buy.tag"},view_range:0,Tags:["resolve","del"],alignment:"center"}
# data modify storage admin:villager_edit TradeData.buy.tag set string entity @e[tag=resolve,limit=1,sort=nearest] text 1 -1
data modify storage admin:villager_edit TradeData.buy.Slot set value "buy"
data modify storage admin:villager_edit TradeData.buy.Id set from storage admin:villager_edit Slot
function admin:system/villager_edit/view/item_text with storage admin:villager_edit TradeData.buy

# 【変更：2026-09-27 26.3対応】1.20.4 の show_item は tag を文字列で受け取っていたため文字列化していたが、26.3 は components をそのまま受け取るので不要（無効化）
# execute if data storage admin:villager_edit TradeData.buyB run data modify entity @e[tag=resolve,limit=1,sort=nearest] text set value '{"storage":"admin:villager_edit","nbt":"TradeData.buyB.tag"}'
# execute if data storage admin:villager_edit TradeData.buyB run data modify storage admin:villager_edit TradeData.buyB.tag set string entity @e[tag=resolve,limit=1,sort=nearest] text 1 -1
execute if data storage admin:villager_edit TradeData.buyB run data modify storage admin:villager_edit TradeData.buyB.Slot set value "buyB"
execute if data storage admin:villager_edit TradeData.buyB run data modify storage admin:villager_edit TradeData.buyB.Id set from storage admin:villager_edit Slot
execute if data storage admin:villager_edit TradeData.buyB run function admin:system/villager_edit/view/item_text with storage admin:villager_edit TradeData.buyB

tellraw @s {"text": "↓","bold": true}

# 【変更：2026-09-27 26.3対応】1.20.4 の show_item は tag を文字列で受け取っていたため文字列化していたが、26.3 は components をそのまま受け取るので不要（無効化）
# data modify entity @e[tag=resolve,limit=1,sort=nearest] text set value '{"storage":"admin:villager_edit","nbt":"TradeData.sell.tag"}'
# data modify storage admin:villager_edit TradeData.sell.tag set string entity @e[tag=resolve,limit=1,sort=nearest] text 1 -1
data modify storage admin:villager_edit TradeData.sell.Slot set value "sell"
data modify storage admin:villager_edit TradeData.sell.Id set from storage admin:villager_edit Slot
function admin:system/villager_edit/view/item_text with storage admin:villager_edit TradeData.sell

tellraw @s [{"text":""},{"text":"<---",hover_event:{"action":"show_text","value":{"text":"前の取引へ"}},click_event:{"action":"run_command",command:"/function admin:system/villager_edit/view/before"},"color": "yellow","bold": true},{"text":"   "},{"text":"--->",hover_event:{"action":"show_text","value":{"text":"次の取引へ"}},click_event:{"action":"run_command",command:"/function admin:system/villager_edit/view/next"},"color": "yellow","bold": true}]
tellraw @s {"text":"編集終了",hover_event:{"action":"show_text","value":{"text":"編集終了"}},click_event:{"action":"run_command",command:"/tag @e[tag=EditedVillager] remove EditedVillager"}}
tellraw @s {"text": "---------------------"}

playsound ui.button.click master @s ~ ~ ~ 1 1
data remove storage admin:villager_edit TradeData