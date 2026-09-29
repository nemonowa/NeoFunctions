# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/4
# =/function neofunction:system/adv/tick/quest/4/1

## 内容
execute if entity @s[tag=quest4] run function neofunction:asset/event/quest/clear
loot spawn ~ ~1 ~ loot neofunction:item/mamon/10
loot spawn ~ ~1 ~ loot neofunction:item/413
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:4}
advancement grant @s only neoadvancement:ceresta-archive/root/1/4
advancement grant @s only neofunction:location/ceresta/archive/root/1/4
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":{floats:[1352.0f]}}}]},predicate=neofunction:random_chance/10] run function neofunction:system/adv/tick/quest/item/yakusoku10
## 初期化処理
function neofunction:asset/event/quest/init
