# 命名：set
# 説明：自分の異名を設定 neofunction:name name から neofunction:name <playername>に保存される
# >いっぱい
# =/function neofunction:asset/name/set

summon item_display ~ ~ ~ {view_range:0,Tags:["name","del"]}
loot replace entity @e[tag=name,limit=1,sort=nearest,distance=..1] container.0 loot neofunction:player_head
function neofunction:asset/name/set_macro with entity @e[tag=name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"
kill @e[tag=name,limit=1,sort=nearest,distance=..1]