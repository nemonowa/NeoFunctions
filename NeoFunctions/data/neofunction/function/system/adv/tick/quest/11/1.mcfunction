# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/11
# =/function neofunction:system/adv/tick/quest/11/1

## 内容
execute if entity @s[tag=quest11] run function neofunction:asset/event/quest/clear
loot spawn ~ ~1 ~ loot neofunction:item/mamon/10
loot spawn ~ ~1 ~ loot neofunction:item/1280
loot spawn ~ ~1 ~ loot neofunction:item/1281
loot spawn ~ ~1 ~ loot neofunction:item/1282
loot spawn ~ ~1 ~ loot neofunction:item/1283
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}


tellraw @s {"text":"《ルミス》うん...ちゃんと全部...応えてきたんだね...このコア...あなたならきっと...","color":"#D8A6FF","bold":true,"italic":false}

advancement grant @s only neoadvancement:ceresta-archive/root/2/1
advancement grant @s only neofunction:location/ceresta/archive/root/2/1
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":{floats:[1352.0f]}}}]},predicate=neofunction:random_chance/10] run function neofunction:system/adv/tick/quest/item/yakusoku10
## 初期化処理
function neofunction:asset/event/quest/init
