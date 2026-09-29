# 命名：set_unique_storage
# 説明：
# >/function neofunction:asset/event/tutorial/go/.neo
# =/function neofunction:asset/event/tutorial/go/set_unique_storage

summon item_display ~ ~ ~ {view_range:0,Tags:["name","del"]}
loot replace entity @e[tag=name,limit=1,sort=nearest,distance=..1] container.0 loot neofunction:player_head
function neofunction:asset/event/tutorial/go/set_unique_storage_macro with entity @e[tag=name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"
kill @e[tag=name,limit=1,sort=nearest,distance=..1]