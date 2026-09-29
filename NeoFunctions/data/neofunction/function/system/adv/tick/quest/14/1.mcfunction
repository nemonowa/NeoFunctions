# 命名：1
# 説明：テスト用クエスト終了処理
# 実行条件：自動
# >neofunction/advancement/tick/quest/14
# =/function neofunction:system/adv/tick/quest/14/1

## 内容
execute if entity @s[tag=quest14] run function neofunction:asset/event/quest/clear

loot spawn ~ ~1 ~ loot neofunction:item/mamon/20
loot spawn ~ ~1 ~ loot neofunction:item/1345
loot spawn ~ ~1 ~ loot neofunction:item/1345
loot spawn ~ ~1 ~ loot neofunction:item/1346
loot spawn ~ ~1 ~ loot neofunction:item/1346
loot spawn ~ ~1 ~ loot neofunction:item/1347
loot spawn ~ ~1 ~ loot neofunction:item/1347
execute as @e[type=minecraft:item,distance=..1] at @s run data merge entity @s {PickupDelay:5}
advancement grant @s only neoadvancement:ceresta-archive/root/2/4
advancement grant @s only neofunction:location/ceresta/archive/root/2/4
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_model_data":{floats:[1352.0f]}}}]},predicate=neofunction:random_chance/10] run function neofunction:system/adv/tick/quest/item/yakusoku20

execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/680"},limit=3,sort=nearest] run effect clear @s minecraft:glowing
execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/681"},limit=3,sort=nearest] run effect clear @s minecraft:glowing

execute in neodimension:ceresta_festa run setblock 816 38 1644 minecraft:lapis_block
## 初期化処理
function neofunction:asset/event/quest/init
