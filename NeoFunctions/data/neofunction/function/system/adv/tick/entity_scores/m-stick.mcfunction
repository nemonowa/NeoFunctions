# 命名：m-stick
# 説明：五秒ごと
# 説明：impulse
# >/function neofunction:tick/sunrise
# =/function neofunction:system/adv/tick/entity_scores/m-stick


#内容
scoreboard players reset @s Mstick
execute unless data entity @s SelectedItem{id:"minecraft:warped_fungus_on_a_stick"} run return 0
item modify entity @s weapon.mainhand neofunction:set_damage/add/0.02
summon item_frame ~ ~ ~ {Silent:1b,Invisible:1b,Tags:["del","pheaditem"]}
item replace entity @e[tag=pheaditem,limit=1] container.0 from entity @s armor.head

#execute if entity @s[nbt={Inventory:[],equipment:{head:{}}}] as @s run return run tellraw @s [{"text":"すでに頭装備を装備しています。","color":"gray"}]

item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @e[tag=pheaditem,limit=1] container.0
playsound minecraft:item.armor.equip_elytra record @s ~ ~ ~ 2 1.5