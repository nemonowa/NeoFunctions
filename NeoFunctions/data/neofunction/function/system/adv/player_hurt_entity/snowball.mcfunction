# 命名：snowball
# 説明：
# >
# =/function neofunction:system/adv/player_hurt_entity/snowball

function neofunction:system/adv/player_hurt_entity/.get_entity {Name:"snowball"}
# 内容
damage @e[tag=hit,limit=1] 1 generic by @s

tag @e[tag=hit] remove hit