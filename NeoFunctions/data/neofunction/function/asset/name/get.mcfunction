# 命名：get
# 説明：自分の異名を取得 neofunction:name nameに保存される
# >いっぱい
# =/function neofunction:asset/name/get

summon item_display ~ ~ ~ {view_range:0,Tags:["name","del"]}
loot replace entity @e[tag=name,limit=1,sort=nearest,distance=..1] container.0 loot neofunction:player_head
function neofunction:asset/name/get_macro with entity @e[tag=name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"
kill @e[tag=name,limit=1,sort=nearest,distance=..1]