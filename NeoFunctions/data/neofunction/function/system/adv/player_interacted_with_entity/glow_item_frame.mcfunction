# 命名：glow_item_frame
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/player_interacted_with_entity/glow_item_frame


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_interacted_with_entity/glow_item_frame

## 内容
playsound minecraft:block.bamboo_sapling.place master @s ~ ~ ~ 1 0.61
execute if entity @e[limit=1,sort=nearest,distance=..8,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[159.0f]}}}}] run return run loot give @s loot neofunction:item/glow_item_frame/159


