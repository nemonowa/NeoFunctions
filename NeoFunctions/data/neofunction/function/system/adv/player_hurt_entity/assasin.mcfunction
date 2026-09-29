# 命名：assasin
# 説明：剣士が剣で殴った時
# >
# =/function neofunction:system/adv/player_hurt_entity/assasin

## 内容
effect clear @s minecraft:invisibility
effect clear @s minecraft:strength
effect clear @s minecraft:resistance
scoreboard players set @s sneak_time 0

execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball",count:16,components:{"minecraft:custom_model_data":{floats:[130.0f]}}}]}] run loot give @s[predicate=neofunction:random_chance/30] loot neofunction:item/130

