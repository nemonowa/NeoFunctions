# 命名：crossbow
# 説明：
# >/function neofunction:entity/.spawn/obj/item/cmd/.neo
# =/function neofunction:entity/.spawn/obj/item/cmd/crossbow


# 内容
tag @s add del
execute as @s on origin at @s run function neofunction:asset/particle/transform0
execute as @s on origin at @s run loot give @s loot neofunction:item/other/written_book