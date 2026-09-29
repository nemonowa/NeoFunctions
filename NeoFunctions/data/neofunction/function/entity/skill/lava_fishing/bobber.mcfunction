# 命名：bobber
# 説明：
# >/function neofunction:entity/skill/lava_fishing
# =/function neofunction:entity/skill/lava_fishing/bobber

execute if block ~ ~1 ~ lava align y run summon area_effect_cloud ~ ~1.4 ~ {Tags:["lava_fishing","lava_fishing_wait","lava_fishing_summon","downer"],Duration:2147483647,Age:-2147483648,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}
execute unless block ~ ~1 ~ lava align y run summon area_effect_cloud ~ ~0.4 ~ {Tags:["lava_fishing","lava_fishing_wait","lava_fishing_summon","downer"],Duration:2147483647,Age:-2147483648,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"}}
execute on origin run data modify entity @e[tag=lava_fishing_summon,limit=1,sort=nearest] Owner set from entity @s UUID
scoreboard players set #Calc2 temp 0
execute on origin if data entity @s SelectedItem{id:"minecraft:fishing_rod"} if data entity @s SelectedItem.components."minecraft:enchantments" store result score #Calc2 temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:lure"
execute on origin unless data entity @s SelectedItem{id:"minecraft:fishing_rod"} if data entity @s equipment.offhand if data entity @s equipment.offhand.components."minecraft:enchantments" store result score #Calc2 temp run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:lure"
execute on origin if data entity @s SelectedItem{id:"minecraft:fishing_rod"} if data entity @s SelectedItem.components."minecraft:enchantments" store result score #Calc2 temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:lure"
execute on origin unless data entity @s SelectedItem{id:"minecraft:fishing_rod"} if data entity @s equipment.offhand if data entity @s equipment.offhand.components."minecraft:enchantments" store result score #Calc2 temp run data get entity @s equipment.offhand.components."minecraft:enchantments"."minecraft:lure"
execute store result score #Calc1 temp run random value 100..600
scoreboard players operation #Calc2 temp *= $100 const
scoreboard players operation #Calc1 temp -= #Calc2 temp
execute if score #Calc1 temp matches ..1 run scoreboard players set #Calc1 temp 2
execute store result entity @e[tag=lava_fishing_summon,limit=1,sort=nearest] Duration int 1 run scoreboard players get #Calc1 temp
execute store result entity @e[tag=lava_fishing_summon,limit=1,sort=nearest] Rotation[0] float 1 run random value -179..180
ride @s mount @e[tag=lava_fishing_summon,limit=1,sort=nearest]
data modify entity @s Fire set value 32767s

tag @e[tag=lava_fishing_summon] remove lava_fishing_summon