# 命名：air-pot
# 説明：壺を引いた時の演出(tag=potchance)
# 説明：アマスタ起点
# >/function neofunction:entity/skill/air
# =/function neofunction:entity/skill/air-pot

particle firework ~ ~ ~ 0.3 0.3 0.3 0.25 30 normal
tellraw @a[distance=..8] "ランダムな壺がドロップした！"


#ランダムに召喚される壺群
execute if predicate neofunction:random_chance/20 run return run setblock ~ ~ ~ minecraft:decorated_pot{item:{count:1,id:"minecraft:paper",components:{"minecraft:custom_data":{summon:290}}},sherds:["minecraft:heart_pottery_sherd","minecraft:heart_pottery_sherd","minecraft:heart_pottery_sherd","minecraft:heart_pottery_sherd"]}

execute if predicate neofunction:random_chance/20 run return run setblock ~ ~ ~ minecraft:decorated_pot{LootTable:"neofunction:item/star/1",sherds:["minecraft:shelter_pottery_sherd","minecraft:shelter_pottery_sherd","minecraft:shelter_pottery_sherd","minecraft:shelter_pottery_sherd"]}

execute if predicate neofunction:random_chance/20 run return run setblock ~ ~ ~ minecraft:decorated_pot{LootTable:"neofunction:item/mamon/potrandom",sherds:["minecraft:plenty_pottery_sherd","minecraft:plenty_pottery_sherd","minecraft:plenty_pottery_sherd","minecraft:plenty_pottery_sherd"]}

execute if predicate neofunction:random_chance/20 run return run setblock ~ ~ ~ minecraft:decorated_pot{item:{count:1,id:"minecraft:paper",components:{"minecraft:custom_data":{summon:291}}},sherds:["minecraft:burn_pottery_sherd","minecraft:burn_pottery_sherd","minecraft:burn_pottery_sherd","minecraft:burn_pottery_sherd"]}

execute if predicate neofunction:random_chance/30 run return run setblock ~ ~ ~ minecraft:decorated_pot{item:{count:1,id:"minecraft:paper",components:{"minecraft:custom_data":{summon:311}}},sherds:["minecraft:arms_up_pottery_sherd","minecraft:arms_up_pottery_sherd","minecraft:arms_up_pottery_sherd","minecraft:arms_up_pottery_sherd"]}

execute if predicate neofunction:random_chance/30 run return run setblock ~ ~ ~ minecraft:decorated_pot{item:{count:1,id:"minecraft:paper",components:{"minecraft:custom_data":{summon:312}}},sherds:["minecraft:howl_pottery_sherd","minecraft:howl_pottery_sherd","minecraft:howl_pottery_sherd","minecraft:howl_pottery_sherd"]}

execute if predicate neofunction:random_chance/30 run return run setblock ~ ~ ~ minecraft:decorated_pot{LootTable:"neofunction:item/star/2",sherds:["minecraft:shelter_pottery_sherd","minecraft:shelter_pottery_sherd","minecraft:shelter_pottery_sherd","minecraft:shelter_pottery_sherd"]}

setblock ~ ~ ~ minecraft:decorated_pot{item:{count:1,id:"minecraft:paper",components:{"minecraft:custom_data":{summon:343}}},sherds:["minecraft:danger_pottery_sherd","minecraft:danger_pottery_sherd","minecraft:danger_pottery_sherd","minecraft:danger_pottery_sherd"]}


