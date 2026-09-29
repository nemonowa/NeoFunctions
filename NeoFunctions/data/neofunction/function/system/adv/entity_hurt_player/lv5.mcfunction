# 命名：lv5
# 説明：entity_hurt_player
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/lv5


## 内容

function neofunction:system/adv/entity_hurt_player/.get_entity {Name:"lv5"}

execute as @e[tag=soul1,tag=attacker,limit=1,sort=nearest] run damage @p 50 in_fire by @s
execute as @e[tag=soul2,tag=attacker,limit=1,sort=nearest] run damage @p 50 arrow by @s
execute as @e[tag=soul3,tag=attacker,limit=1,sort=nearest] run damage @p 50 explosion by @s
execute as @e[tag=soul4,tag=attacker,limit=1,sort=nearest] run damage @p 50 fall by @s

tag @e[tag=attacker] remove attacker





