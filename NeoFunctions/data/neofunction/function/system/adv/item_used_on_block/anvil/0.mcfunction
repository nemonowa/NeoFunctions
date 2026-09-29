# 命名：0
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:item_used_on_block/anvil
# =/function neofunction:system/adv/item_used_on_block/anvil/0

## 内容

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:item_used_on_block/anvil

# 視点先に金床ブロックがあるか
execute anchored eyes positioned ^ ^ ^ if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1
execute anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1
execute anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1
execute anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1
execute anchored eyes positioned ^ ^ ^5 if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1
execute anchored eyes positioned ^ ^ ^6 if block ~ ~ ~ minecraft:anvil if block ~ ~1 ~ minecraft:heavy_weighted_pressure_plate run return run function neofunction:system/adv/item_used_on_block/anvil/1




