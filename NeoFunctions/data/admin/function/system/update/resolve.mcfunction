# 命名：resolve
# 説明：≠/function neofunction:entity/.spawn/obj/item/rare
# >
# =/function admin:system/update/resolve

summon item ~ ~ ~ {Tags:["resolveItem","del"],Item:{id:"stone",count:1}}
data modify entity @e[tag=resolveItem,distance=..1,limit=1,sort=nearest] Item set from storage admin:update Item
execute as @e[tag=resolveItem,distance=..1,limit=1,sort=nearest] at @s run function neofunction:entity/.spawn/obj/item/rare
data modify storage admin:update Item set from entity @e[tag=resolveItem,distance=..1,limit=1,sort=nearest] Item
kill @e[tag=resolveItem,distance=..1,limit=1,sort=nearest]