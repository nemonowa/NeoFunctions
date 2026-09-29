# 命名：data
# 説明：
# >/function neofunction:entity/skill/aj/.neo
# =/function neofunction:entity/skill/aj/data

execute store result entity @s item.components."minecraft:custom_data".aj.id int 1 run scoreboard players get @s aj.id
execute store result entity @s item.components."minecraft:custom_data".aj.is_rig_loaded int 1 run scoreboard players get @s aj.is_rig_loaded