# 命名：item_use
# 説明：familiarへのアイテム使用の共通入口。ポーション/パウダー系アイテムを判定して振り分ける。
# =/function neofunction:system/adv/player_interacted_with_entity/familiar/item_use

#飲用ポーションの場合
function neofunction:system/hand
execute if data storage neofunction:hand {item:{id:"minecraft:potion"}} if entity @s run function neofunction:system/adv/player_interacted_with_entity/familiar/potion

#パウダー系(CustomModelDataのみで判定、ベースアイテムは問わない)
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[1062.0f]}}}} if entity @s run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_fire
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[1063.0f]}}}} if entity @s run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_resistance
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[1105.0f]}}}} if entity @s run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_speed
function neofunction:system/hand
execute if data storage neofunction:hand {item:{components:{"minecraft:custom_model_data":{floats:[1106.0f]}}}} if entity @s run function neofunction:system/adv/player_interacted_with_entity/familiar/powder_regen
