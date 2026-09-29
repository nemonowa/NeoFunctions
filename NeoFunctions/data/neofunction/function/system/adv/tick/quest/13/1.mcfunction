# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/13
# =/function neofunction:system/adv/tick/quest/13/1

## 内容
execute if entity @s[tag=quest13] run function neofunction:asset/event/quest/clear
loot spawn ~ ~1 ~ loot neofunction:item/mamon/30
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
loot spawn ~ ~1 ~ loot neofunction:item/1334
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}
advancement grant @s only neoadvancement:ceresta-archive/root/2/3
advancement grant @s only neofunction:location/ceresta/archive/root/2/3

execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":{floats:[1352.0f]}}}]},predicate=neofunction:random_chance/10] run function neofunction:system/adv/tick/quest/item/yakusoku30
## 初期化処理
function neofunction:asset/event/quest/init
