# 命名：score
# 説明：
# >/function neofunction:entity/skill/aj/.neo
# =/function neofunction:entity/skill/aj/score

execute store result score @s aj.id run data get entity @s item.components."minecraft:custom_data".aj.id
execute store result score @s aj.is_rig_loaded run data get entity @s item.components."minecraft:custom_data".aj.is_rig_loaded
