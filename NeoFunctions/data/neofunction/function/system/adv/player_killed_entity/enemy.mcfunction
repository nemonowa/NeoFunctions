# 命名：enemy
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:player_killed_entity/enemy
# =/function neofunction:system/adv/player_killed_entity/enemy



## 内容
scoreboard players add @s enemyKillCount 1


# 進化式シールド
# 頭
execute if entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:custom_model_data":{floats:[870.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:custom_model_data":{floats:[874.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:custom_model_data":{floats:[878.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:custom_model_data":{floats:[882.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{head:{components:{"minecraft:custom_model_data":{floats:[886.0f]}}}}},predicate=neofunction:random_chance/20] run loot spawn ~ ~ ~ loot neofunction:item/146

# 胴
execute if entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:custom_model_data":{floats:[871.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:custom_model_data":{floats:[875.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:custom_model_data":{floats:[879.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:custom_model_data":{floats:[883.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{chest:{components:{"minecraft:custom_model_data":{floats:[887.0f]}}}}},predicate=neofunction:random_chance/20] run loot spawn ~ ~ ~ loot neofunction:item/146

# 脚
execute if entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:custom_model_data":{floats:[872.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:custom_model_data":{floats:[876.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:custom_model_data":{floats:[880.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:custom_model_data":{floats:[884.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{legs:{components:{"minecraft:custom_model_data":{floats:[888.0f]}}}}},predicate=neofunction:random_chance/20] run loot spawn ~ ~ ~ loot neofunction:item/146

# 足
execute if entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:custom_model_data":{floats:[873.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:custom_model_data":{floats:[877.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/145
execute if entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:custom_model_data":{floats:[881.0f]}}}}},predicate=neofunction:random_chance/10] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:custom_model_data":{floats:[885.0f]}}}}},predicate=neofunction:random_chance/15] run loot spawn ~ ~ ~ loot neofunction:item/146
execute if entity @s[nbt={Inventory:[],equipment:{feet:{components:{"minecraft:custom_model_data":{floats:[889.0f]}}}}},predicate=neofunction:random_chance/20] run loot spawn ~ ~ ~ loot neofunction:item/146

# 再利用
advancement revoke @s only neofunction:player_killed_entity/enemy
