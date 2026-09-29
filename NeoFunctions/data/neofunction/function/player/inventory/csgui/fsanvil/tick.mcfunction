# 命名：tick
# 説明：カスタムインベントリーGUI
# 説明：カスタムスロットGUIトロッコのインベントリをクリックしたか検知
# >/function neofunction:tick/csgui/anvil
# =/function neofunction:player/inventory/csgui/fsanvil/tick

# 内容

##視点先にGUIが存在するか
function neofunction:player/inventory/csgui/fsanvil/search

##データが違うなら更新(装飾品や金床をクリックしたか)
data modify storage neofunction:gui Temp.in.B set from entity @e[tag=fsanvil,sort=nearest,limit=1]
execute store result storage neofunction:gui Temp.out byte 1 run function neofunction:asset/nbt/equal with storage neofunction:gui Temp.in
execute if data storage neofunction:gui Temp{out:0b} run tag @s add reset
execute if entity @s[tag=reset] run clear @s #neofunction:gui_all[minecraft:custom_data~{GuiItem:true}]

data modify storage neofunction:gui Temp.in set value {}

##アイテム捨てた時の対策
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{GuiItem:1b}}}}] run tag @s add reset
execute if entity @s[tag=reset] run kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{GuiItem:1b}}}}]

##合成
execute as @e[tag=fsanvil,sort=nearest,limit=1] unless data entity @s Items[{Slot:14b,id:"minecraft:anvil"}] if data entity @s Items[{Slot:10b}] if data entity @s Items[{Slot:12b}] run return run function neofunction:player/inventory/csgui/fsanvil/combine/main

## 削除
execute as @e[tag=fsanvil,sort=nearest,limit=1] unless data entity @s Items[{Slot:26b}] run return run function neofunction:player/inventory/csgui/fsanvil/delete

##異物が入ったバアイストップ
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"0"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"1"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"2"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"3"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"4"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"5"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"6"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"7"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"8"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"9"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"11"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"13"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"14"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"15"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"17"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"18"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"19"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"20"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"21"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"22"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"23"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"24"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"25"}
execute as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/return {num:"26"}

##消音
stopsound @s * minecraft:block.enchantment_table.use

##init
execute if entity @s[tag=reset] as @e[tag=fsanvil,sort=nearest,limit=1] run function neofunction:player/inventory/csgui/fsanvil/update {item:"minecraft:pink_stained_glass_pane{GuiItem:true}"}
execute as @s[tag=reset] run tag @s remove reset

##前データを保存
data modify storage neofunction:gui Temp.in.A set from entity @e[tag=fsanvil,sort=nearest,limit=1]
