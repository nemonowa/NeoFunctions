# 命名：return
# 説明：カスタムインベントリーGUI
# 説明：異物を返します
# >/function neofunction:tick/csgui/fsanvil/tick
# =/function neofunction:player/inventory/csgui/fsanvil/return

# 内容

##異物が入ったバアイストップ
$execute if data entity @s Items[{Slot:$(num)b,components:{"minecraft:custom_data":{GuiItem:1b}}}] run return 0
$execute if data entity @s Items[{Slot:$(num)b}] run data modify storage neofunction:gui Temp.slot set from entity @s Items[{Slot:$(num)b}]
execute at @p run summon minecraft:chest_minecart ~ ~ ~ {Tags:[ReturnItem]}
data modify entity @e[tag=ReturnItem,sort=nearest,limit=1] Items append from storage neofunction:gui Temp.slot
damage @e[tag=ReturnItem,sort=nearest,limit=1] 5 minecraft:out_of_world
kill @e[type=item,sort=nearest,limit=1,nbt={Item:{id:"minecraft:chest_minecart"}}]
data modify storage neofunction:gui Temp.slot set value {}


