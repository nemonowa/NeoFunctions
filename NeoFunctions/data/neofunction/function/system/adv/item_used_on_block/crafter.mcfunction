# 命名：crafter
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:item_used_on_block/crafter
# =/function neofunction:system/adv/item_used_on_block/crafter

## 内容
# 樽を黙らせる
execute if block 1328 128 1289 barrel[open=true] if entity @s run stopsound @a[distance=..32] * block.barrel.open

execute in neodimension:nexus if block 1328 128 1289 barrel[open=true] run schedule function neofunction:system/adv/item_used_on_block/crafter 1t replace
execute in neodimension:nexus positioned 1328 128 1289 if block ~ ~ ~ barrel[open=false] run stopsound @a[distance=..32] * block.barrel.close

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:item_used_on_block/crafter