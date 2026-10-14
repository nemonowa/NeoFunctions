# 命名：get
# 説明：自分の異名を取得 neofunction:name nameに保存される
# >いっぱい
# =/function neofunction:asset/name/get

summon item_display ~ ~ ~ {view_range:0,Tags:["name","del"]}
loot replace entity @e[tag=name,limit=1,sort=nearest,distance=..1] container.0 loot neofunction:player_head
function neofunction:asset/name/get_macro with entity @e[tag=name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"
kill @e[tag=name,limit=1,sort=nearest,distance=..1]

# 【追加：2026-10-14 26.3 対応】1.20.4 の JSON の文字（hoverEvent）のまま保存されている異名は、26.3 の文字の部品に置き換えて保存し直す
scoreboard players set #name_fix temp 0
execute if data storage neofunction:name {name:'{"text":"未選択","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：ここをクリックして称号を設定可能"}]}}'} run scoreboard players set #name_fix temp 1
execute if data storage neofunction:name {name:'{"text":"未選択","color":"red","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：ここをクリックして称号を設定可能"}]}}'} run data modify storage neofunction:name name set value {text:"未選択",color:"red",bold:1b,hover_event:{action:"show_text",value:[{text:"説明：ここをクリックして称号を設定可能"}]}}
execute if data storage neofunction:name {name:'{"text":"異空の艦隊員","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：異空機関の新兵の称号"}]}}'} run scoreboard players set #name_fix temp 1
execute if data storage neofunction:name {name:'{"text":"異空の艦隊員","color":"dark_aqua","bold":true,"hoverEvent":{"action":"show_text","value":[{"text":"説明：異空機関の新兵の称号"}]}}'} run data modify storage neofunction:name name set value {text:"異空の艦隊員",color:"dark_aqua",bold:1b,hover_event:{action:"show_text",value:[{text:"説明：異空機関の新兵の称号"}]}}
execute if score #name_fix temp matches 1 run function neofunction:asset/name/set
