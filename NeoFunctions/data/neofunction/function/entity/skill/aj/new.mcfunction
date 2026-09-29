# 命名：new
# 説明：
# >/function neofunction:entity/skill/aj/run
# =/function neofunction:entity/skill/aj/new

execute store result score @s aj.id run scoreboard players add aj.last_id aj.id 1
execute store result entity @s item.components."minecraft:custom_data".aj.id int 1 run scoreboard players get @s aj.id
data modify storage animated_java:temp entry set from entity @s item.components."minecraft:custom_data".data
execute store result storage animated_java:temp args.id int 1 run scoreboard players get @s aj.id
function animated_java:global/data_manager/write with storage animated_java:temp args