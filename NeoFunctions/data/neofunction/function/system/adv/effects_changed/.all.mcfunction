# 命名：.all
# 説明：effects_changedは変化したとき
# >
# =/function neofunction:system/adv/effects_changed/.all


# インベントリの右上確認
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[853.0f]}}}]}] run effect clear @s slowness
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[854.0f]}}}]}] run effect clear @s darkness
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[855.0f]}}}]}] run effect clear @s weakness
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[856.0f]}}}]}] run effect clear @s nausea
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1391.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1392.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1393.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1394.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1395.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1396.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1397.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1398.0f]}}}]}] run title @s actionbar {"text":"🔯スペル発動【魔眼】","color":"light_purple","bold":true,"italic":false}
execute if entity @s[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_model_data":{floats:[1399.0f]}}}]}] run tag @s add argonaute


# 実行条件：inv_assasin：透明じゃなければ防具を戻す
execute as @s[tag=inv_assasin] unless data entity @s active_effects[{id:"minecraft:invisibility"}] run function neofunction:player/job/assasin/enarmor

# 1tクロックじゃ足りないので自己はく奪
advancement revoke @s only neofunction:effects_changed/.all
