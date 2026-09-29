# 命名：1585
# 説明：
# >/function neofunction:system/adv/inventory_changed/1585_schedule
# =/function neofunction:system/adv/inventory_changed/1585

execute if entity @s[nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:10b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:11b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:12b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:13b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:14b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:15b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:16b}]},nbt=!{Inventory:[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:17b}]}] run return 0

execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:10b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:10b,CMD:1422,inventory:1,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:11b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:11b,CMD:1422,inventory:2,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:12b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:12b,CMD:1422,inventory:3,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:13b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:13b,CMD:1422,inventory:4,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:14b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:14b,CMD:1422,inventory:5,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:15b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:15b,CMD:1422,inventory:6,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:16b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:16b,CMD:1422,inventory:7,id:"wheat"}
execute if data entity @s Inventory[{components:{"minecraft:custom_model_data":{floats:[1585.0f]}},Slot:17b}] run function neofunction:system/adv/inventory_changed/inf_bundle/.neo {Slot:17b,CMD:1422,inventory:8,id:"wheat"}

# tick内にいっぱい来てもいいように
#advancement revoke @s only neofunction:inventory_changed/1585

# おのれもやん