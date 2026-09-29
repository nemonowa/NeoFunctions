# 命名：run
# 説明：
# >/function neofunction:entity/skill/aj/.neo
# =/function neofunction:entity/skill/aj/run

execute store result storage neofunction:aj id int 1 run scoreboard players get @s aj.id
# Data Manager: Read
execute if function neofunction:entity/skill/aj/server_check unless function neofunction:entity/skill/aj/check run function neofunction:entity/skill/aj/new
execute unless data entity @s item.components."minecraft:custom_data".data run function neofunction:entity/skill/aj/get_data

function animated_java:global/root/on_tick