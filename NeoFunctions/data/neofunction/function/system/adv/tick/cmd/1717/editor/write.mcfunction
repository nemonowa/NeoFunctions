# 命名：write
# 説明：（説明未記載）
# >/function neofunction:system/trigger/code
# =/function neofunction:system/adv/tick/cmd/1717/editor/write

summon item_display ~ ~ ~ {view_range:0,Tags:["resolve","del"]}
loot replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 loot neofunction:player_head
function neofunction:system/adv/tick/cmd/1717/editor/get_data with entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:profile"

execute if score @s code matches 11739 run function neofunction:system/adv/tick/cmd/1717/editor/del
execute if score @s code matches 11740 store result storage neofunction:item/1717 data.Cursor int 1 run data get storage neofunction:item/1717 data.Cursor 0.9999
execute if score @s code matches 11741 run function neofunction:system/adv/tick/cmd/1717/editor/cursor_right
execute if score @s code matches 11742 run function neofunction:system/adv/tick/cmd/1717/editor/save/.neo
execute if score @s code matches 11743..11760 run function neofunction:system/adv/tick/cmd/1717/editor/load/.neo

execute unless score @s code matches 11739..11760 run scoreboard players remove @s code 10000
execute unless score @s code matches 11739..11760 run data modify storage neofunction:item/1717 Temp.Id set value 0
execute unless score @s code matches 11739..11760 run execute store result storage neofunction:item/1717 Temp.Id int 1 run scoreboard players get @s code
execute unless score @s code matches 11739..11760 unless data storage neofunction:item/1717 data.Cursor run data modify storage neofunction:item/1717 data.Cursor set value 0
execute unless score @s code matches 11739..11760 run function neofunction:system/adv/tick/cmd/1717/editor/insert with storage neofunction:item/1717 data
execute unless score @s code matches 11739..11760 store result storage neofunction:item/1717 data.Cursor int -1 run data get storage neofunction:item/1717 data.Cursor -1.0000001
execute unless score @s code matches 11739..11760 if data storage neofunction:item/1717 data{Cursor:0} run data modify storage neofunction:item/1717 data.Cursor set value 1

function neofunction:system/adv/tick/cmd/1717/editor/set_data with entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:profile"

kill @e[tag=resolve,limit=1,sort=nearest]

function neofunction:system/adv/tick/cmd/1717/editor/view