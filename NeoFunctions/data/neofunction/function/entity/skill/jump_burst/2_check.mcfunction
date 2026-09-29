# 命名：2_check
# 説明：
# >/function neofunction:entity/skill/jump_burst/2_schedule
# =/function neofunction:entity/skill/jump_burst/2_check

data modify storage neofunction:skill/jump_burst Motion set from entity @s Motion[1]
execute if data storage neofunction:skill/jump_burst {Motion:0d} run return 1
return 0