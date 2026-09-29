# 命名：1018-2
# 説明：
# >/function neofunction:system/adv/entity_hurt_player/1018-1
# =/function neofunction:system/adv/entity_hurt_player/1018-2

$summon item ~ ~ ~ {Age:5900,PickupDelay:-1,Motion:$(Pos),Tags:["aaaaa"],Item:{id:"minecraft:wheat",count:1,components:{"minecraft:custom_model_data":{floats:[1422.0f]}}}}
execute as @e[type=item,tag=aaaaa] run data modify entity @s Item.components."minecraft:custom_data".UUID set from entity @s UUID
execute as @e[type=item,tag=aaaaa] run tag @s remove aaaaa