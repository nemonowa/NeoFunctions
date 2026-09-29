# 命名：item_use
# 説明：familiarへのアイテム使用の共通入口。ポーション/パウダー系アイテムを判定して振り分ける。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/item_use

#飲用ポーションの場合
execute if entity @s[nbt={SelectedItem:{id:"minecraft:potion"}}] run function neofunction:system/adv/player_interacted_with_entity/familiar/potion

#パウダー系(CustomModelDataのみで判定、ベースアイテムは問わない)
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1062.0f]}}}}] run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_fire
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1063.0f]}}}}] run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_resistance
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1105.0f]}}}}] run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_speed
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1106.0f]}}}}] run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_regen
