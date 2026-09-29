# 命名：1
# 説明：name：1767
# 説明：description：When item/1767 throw
# >/function neofunction:entity/.spawn/obj/item/cmd/.neo
# =/function neofunction:entity/.spawn/obj/item/cmd/1767/1

# contents
# item
summon item_display ~ ~ ~ {view_range:0f,Tags:["temp_display","del"]}
data modify entity @e[tag=temp_display,limit=1,sort=nearest] item set from entity @s Item

# changed the number of SakuraBreathes. If you are sneaking, increase this. But, you are not sneaking, decrease this.

# 10>1 inc
execute on origin unless predicate neofunction:is_sneaking as @e[tag=temp_display,limit=1,sort=nearest] if data entity @s item.components{"minecraft:custom_data":{SakuraBreathes:10}} run data modify entity @s item.components."minecraft:custom_data".SakuraBreathes set value 0
# 1>10 dec
execute on origin if predicate neofunction:is_sneaking as @e[tag=temp_display,limit=1,sort=nearest] if data entity @s item.components{"minecraft:custom_data":{SakuraBreathes:1}} run data modify entity @s item.components."minecraft:custom_data".SakuraBreathes set value 11
# inc
execute on origin unless predicate neofunction:is_sneaking as @e[tag=temp_display,limit=1,sort=nearest] unless data entity @s item.components{"minecraft:custom_data":{SakuraBreathes:10}} store result entity @s item.components."minecraft:custom_data".SakuraBreathes int -1 run data get entity @s item.components."minecraft:custom_data".SakuraBreathes -1.00000001
# dec
execute on origin if predicate neofunction:is_sneaking as @e[tag=temp_display,limit=1,sort=nearest] unless data entity @s item.components{"minecraft:custom_data":{SakuraBreathes:1}} store result entity @s item.components."minecraft:custom_data".SakuraBreathes int 0.9999999 run data get entity @s item.components."minecraft:custom_data".SakuraBreathes

execute on origin unless predicate neofunction:is_sneaking as @e[tag=temp_display,limit=1,sort=nearest] if data entity @s item.components{"minecraft:custom_data":{SakuraBreathes:0}} run data modify entity @s item.components."minecraft:custom_data".SakuraBreathes set value 1
execute on origin if predicate neofunction:is_sneaking as @e[tag=temp_display,limit=1,sort=nearest] if data entity @s item.components{"minecraft:custom_data":{SakuraBreathes:11}} run data modify entity @s item.components."minecraft:custom_data".SakuraBreathes set value 10

# summon text_display and rename your item 
function neofunction:entity/.spawn/obj/item/cmd/1767/2 with entity @e[tag=temp_display,limit=1,sort=furthest] item.components."minecraft:custom_data"
# return your item which is remodelled by item_display
execute on origin run item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0

# I like this sound
execute at @s run playsound minecraft:ui.button.click master @a[distance=..4] ~ ~ ~ 1 1
# show the title in your display
execute on origin run title @s subtitle [{"text":"||","color":"blue","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form Changed ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run title @s title ""

kill @s

