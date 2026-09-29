# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/23
# =/function neofunction:system/adv/tick/quest/23/1

## 内容
tellraw @s [{"text":"「よくやった。」","color":"gold","bold":true,"italic":false,hover_event:{"action":"show_text","value":[{"text":"","bold":true}]}},{"text":"\n「種は植え直しただろうな？」","color":"dark_red","bold":true,"italic":true,"underlined":true,hover_event:{"action":"show_text","value":[{"text":"","bold":true}]}}]
execute if entity @s[tag=quest23] run function neofunction:asset/event/quest/clear
loot spawn ~ ~1 ~ loot neofunction:item/mamon/64
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}
clear @s minecraft:hay_block[minecraft:custom_model_data={floats:[1591.0f]}]
advancement grant @s only neoadvancement:ceresta-archive/root/3/3
advancement grant @s only neofunction:location/ceresta/archive/root/3/3
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":{floats:[1352.0f]}}}]},predicate=neofunction:random_chance/10] run function neofunction:system/adv/tick/quest/item/yakusoku64
## 初期化処理
function neofunction:asset/event/quest/init
