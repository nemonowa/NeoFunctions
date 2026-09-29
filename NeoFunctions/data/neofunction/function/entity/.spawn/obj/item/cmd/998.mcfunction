# 命名：998
# 説明：裁洪神の約櫃
# >
# =/function neofunction:entity/.spawn/obj/item/cmd/998


#アイテム
execute as @s on origin run loot give @s loot neofunction:item/999
execute as @s on origin at @s run function neofunction:asset/particle/transform
kill @s

