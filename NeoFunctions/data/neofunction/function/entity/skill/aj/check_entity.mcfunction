# 命名：check_entity
# 説明：
# >/function neofunction:entity/skill/aj/check
# =/function neofunction:entity/skill/aj/check_entity

$tag $(root_uuid) add AJCheck
execute if entity @s[tag=AJCheck] run return run tag @s remove AJCheck
tag @e[tag=AJCheck] remove AJCheck
return 0