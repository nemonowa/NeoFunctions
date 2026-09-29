# 命名：get_data
# 説明：
# >/function neofunction:entity/skill/aj/run
# =/function neofunction:entity/skill/aj/get_data

function animated_java:global/data_manager/read with storage neofunction:aj
data modify entity @s item.components."minecraft:custom_data".data set from storage animated_java:temp entry