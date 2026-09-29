# 命名：update
# 説明：カスタムインベントリーGUI
# 説明：カスタムスロットGUIトロッコのインベントリをロードする(macroのためitem指定が必要)
# 説明：内容
# >/function neofunction:player/inventory/csgui/fsanvil/tick
# =/function neofunction:player/inventory/csgui/fsanvil/update

## 上書き
$item replace entity @s container.0 with $(item)
$item replace entity @s container.1 with $(item)
$item replace entity @s container.2 with $(item)
$item replace entity @s container.3 with $(item)
$item replace entity @s container.4 with $(item)
$item replace entity @s container.5 with $(item)
$item replace entity @s container.6 with $(item)
$item replace entity @s container.7 with $(item)
$item replace entity @s container.8 with $(item)
$item replace entity @s container.9 with $(item)
$item replace entity @s container.11 with $(item)
$item replace entity @s container.13 with $(item)
item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成できません","color":"red","bold":true},minecraft:custom_data={GuiItem:true}]
$item replace entity @s container.15 with $(item)
$item replace entity @s container.17 with $(item)
$item replace entity @s container.18 with $(item)
$item replace entity @s container.19 with $(item)
$item replace entity @s container.20 with $(item)
$item replace entity @s container.21 with $(item)
$item replace entity @s container.22 with $(item)
$item replace entity @s container.23 with $(item)
$item replace entity @s container.24 with $(item)
$item replace entity @s container.25 with $(item)
item replace entity @s container.26 with minecraft:red_stained_glass_pane[minecraft:custom_name={"text":"削除","color":"red","bold":true},minecraft:custom_data={GuiItem:true}]

execute as @e[tag=fsanvil,sort=nearest,limit=1] unless data entity @s Items[{Slot:10b}] unless data entity @s Items[{Slot:12b}] run return 0

execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:0}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銅貨15枚","color":"dark_red"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["1"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銅貨30枚","color":"dark_red"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["2"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銅貨60枚","color":"dark_red"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["3"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銀貨5枚","color":"gray"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["4"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銀貨20枚","color":"gray"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["5"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銀貨40枚","color":"gray"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["6"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:銀貨60枚","color":"gray"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["7"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:金貨20枚","color":"gold"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["8"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:金貨40枚","color":"gold"}],minecraft:custom_data={GuiItem:true}]
execute as @e[tag=fsanvil,sort=nearest,limit=1] if data entity @s Items[{Slot:10b}].components{"minecraft:custom_data":{rare:["9"]}} run item replace entity @s container.14 with minecraft:anvil[minecraft:custom_name={"text":"合成！","color":"green","bold":true},minecraft:lore=[{"text":"COST:金貨60枚","color":"gold"}],minecraft:custom_data={GuiItem:true}]


# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute as @e[tag=fsanvil,sort=nearest,limit=1,tag=short] run data modify entity @s Items[{Slot:14b}].components."minecraft:custom_name" set value {"text":"合成できません","color":"red","bold":true}
execute as @e[tag=fsanvil,sort=nearest,limit=1,tag=short] run data modify entity @s Items[{Slot:14b}].components."minecraft:lore" set value ['{"text":"研磨度が足りません","color":"aqua"}']

# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute as @e[tag=fsanvil,sort=nearest,limit=1,tag=nopay] run data modify entity @s Items[{Slot:14b}].components."minecraft:custom_name" set value {"text":"合成できません","color":"red","bold":true}
# 【変更：2026-09-28 26.3対応】名前・説明文・文字表示の中身は 1.21.5 から JSON の文字列ではなく文章の部品として読まれる。文字列のままだと {"text":…} がそのまま表示されるため、部品の形（引用符なし）に直す
execute as @e[tag=fsanvil,sort=nearest,limit=1,tag=nopay] unless data entity @s Items[{Slot:14b}].components."minecraft:lore"[1] run data modify entity @s Items[{Slot:14b}].components."minecraft:lore" append value {"text":"お金が足りません","color":"aqua"}

