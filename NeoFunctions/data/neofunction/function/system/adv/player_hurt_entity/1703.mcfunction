# 命名：1703
# 説明：
# >
# =/function neofunction:system/adv/player_hurt_entity/1703


# 内容
function neofunction:system/adv/player_hurt_entity/.get_entity {Name:"1703"}
damage @e[tag=hit,limit=1] 50 arrow by @s
tag @e[tag=hit] remove hit