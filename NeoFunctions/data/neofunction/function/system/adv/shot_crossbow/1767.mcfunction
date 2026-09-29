# 命名：1767
# 説明：shot_crossbow
# 説明：刀事前モーション
# >
# =/function neofunction:system/adv/shot_crossbow/1767


# 内容
particle minecraft:cherry_leaves ~ ~ ~ 1 1 1 0 100 normal
#execute if data entity @s SelectedItem.tag{SakuraBreathes:1} run function
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:1}} run tellraw @s {"translate":"Breathes.sakura.1"}
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:2}} run function neofunction:system/adv/shot_crossbow/1767/2
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:2}} run tellraw @s {"translate":"Breathes.sakura.2"}
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:3}} run function neofunction:system/adv/shot_crossbow/1767/3
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:3}} run tellraw @s {"translate":"Breathes.sakura.3"}
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:4}} run function neofunction:system/adv/shot_crossbow/1767/4
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:4}} run tellraw @s {"translate":"Breathes.sakura.4"}
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:5}} run function neofunction:system/adv/shot_crossbow/1767/5
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:5}} run tellraw @s {"translate":"Breathes.sakura.5"}
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:6}} run function neofunction:system/adv/shot_crossbow/1767/6
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:6}} run tellraw @s {"translate":"Breathes.sakura.6"}
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:7}} run tellraw @s "WIP(本編modで実装されていません)"
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:7}} run tellraw @s {"translate":"Breathes.sakura.7"}
#execute if data entity @s SelectedItem.tag{SakuraBreathes:8} run function
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:8}} run tellraw @s {"translate":"Breathes.sakura.8"}
#execute if data entity @s SelectedItem.tag{SakuraBreathes:9} run function
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:9}} run tellraw @s {"translate":"Breathes.sakura.9"}
#execute if data entity @s SelectedItem.tag{SakuraBreathes:10} run function
execute if data entity @s SelectedItem.components{"minecraft:custom_data":{SakuraBreathes:10}} run tellraw @s {"translate":"Breathes.sakura.10"}

# 空気を戻す
summon item_display ~ ~ ~ {view_range:0f,Tags:["temp_display","del"]}
item replace entity @e[tag=temp_display,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
execute if entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify entity @e[tag=temp_display,limit=1,sort=nearest] item.components."minecraft:charged_projectiles" set value []
item replace entity @s weapon.mainhand from entity @e[tag=temp_display,limit=1,sort=nearest] container.0


# 再使用のために進捗剥奪
advancement revoke @s only neofunction:shot_crossbow/1767



