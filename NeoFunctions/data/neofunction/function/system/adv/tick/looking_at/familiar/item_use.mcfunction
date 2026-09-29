# 命名：item_use
# 説明：familiarへのアイテム使用の共通入口。ポーション/パウダー系アイテムを判定して振り分ける。
# =/function neofunction:system/adv/tick/looking_at/familiar/item_use

#飲用ポーションの場合
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion"}}] run function neofunction:system/adv/tick/looking_at/familiar/potion

#パウダー系(CustomModelDataのみで判定、ベースアイテムは問わない)
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1062.0f]}}}}] run function neofunction:system/adv/tick/looking_at/familiar/powder_fire
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1063.0f]}}}}] run function neofunction:system/adv/tick/looking_at/familiar/powder_resistance
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1105.0f]}}}}] run function neofunction:system/adv/tick/looking_at/familiar/powder_speed
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1106.0f]}}}}] run function neofunction:system/adv/tick/looking_at/familiar/powder_regen

#ベリー系(旧wolffamiliar/blackberry・sweetberryを共通化)
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries",components:{"minecraft:custom_model_data":{floats:[318.0f]}}}}] run function neofunction:system/adv/tick/looking_at/familiar/blackberry
execute if entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:sweet_berries",components:{"minecraft:custom_model_data":{floats:[318.0f]}}}}] run function neofunction:system/adv/tick/looking_at/familiar/sweetberry
