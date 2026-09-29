# 命名：structure_block
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/structure_block



# 内容
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[0.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/0
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[1.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/1
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[2.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/2
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[3.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/3
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[4.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/4
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[5.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/5
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[6.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/6
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[7.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/7
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[8.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/8
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_model_data":{floats:[9.0f]}}}] run function neofunction:system/adv/inventory_changed/structure_block/9

#Bossとかplayerkilledentity関連
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/604"}}}] run function neofunction:system/adv/player_killed_entity/604
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/621"}}}] run function neofunction:system/adv/player_killed_entity/621
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/662"}}}] run function neofunction:system/adv/player_killed_entity/662
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/666"}}}] run function neofunction:system/adv/player_killed_entity/666
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/670"}}}] run function neofunction:system/adv/player_killed_entity/670
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/676"}}}] run function neofunction:system/adv/player_killed_entity/676
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/674"}}}] run function neofunction:system/adv/player_killed_entity/674
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/738"}}}] run function neofunction:system/adv/player_killed_entity/738
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/752"}}}] run function neofunction:system/adv/player_killed_entity/752
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/768"}}}] run function neofunction:system/adv/player_killed_entity/768
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/769"}}}] run function neofunction:system/adv/player_killed_entity/769
execute if data entity @s Inventory[{id:"minecraft:structure_block",components:{"minecraft:custom_data":{DeathLootTable:"neofunction:asset/summon/777"}}}] run function neofunction:system/adv/player_killed_entity/777

clear @s[gamemode=!creative] minecraft:structure_block