# 命名：check
# 説明：
# >/function neofunction:entity/skill/aj/run
# =/function neofunction:entity/skill/aj/check

function animated_java:global/data_manager/read with storage neofunction:aj
execute if data storage animated_java:temp entry run return run function neofunction:entity/skill/aj/check_entity with storage animated_java:temp entry.data
return 0