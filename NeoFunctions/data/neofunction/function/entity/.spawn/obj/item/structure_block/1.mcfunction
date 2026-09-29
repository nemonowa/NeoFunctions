# 命名：1
# 説明：
# >/function neofunction:entity/.spawn/obj/item/structure_block
# =/function neofunction:entity/.spawn/obj/item/structure_block/1

$execute as @p[advancements={neofunction:fishing_rod_hooked/fishing=true}] run loot spawn ~ ~ ~ loot $(AltLootTable)
advancement revoke @p[advancements={neofunction:fishing_rod_hooked/fishing=true}] only neofunction:fishing_rod_hooked/fishing
tag @e[tag=,distance=..0.1,type=item] add fishing_item
tag @e[tag=fishing_item] add del
execute as @e[tag=fishing_item,distance=..0.1,type=item] run data modify entity @s Motion set from storage neofunction:fishing Motion
