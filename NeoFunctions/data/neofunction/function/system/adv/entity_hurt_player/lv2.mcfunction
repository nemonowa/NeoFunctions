# 命名：lv2
# 説明：entity_hurt_player
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/lv2


## 内容

function neofunction:system/adv/entity_hurt_player/.get_entity {Name:"lv2"}

execute as @e[tag=soul1,tag=attacker,limit=1,sort=nearest] run damage @p 6 in_fire by @s
execute as @e[tag=soul2,tag=attacker,limit=1,sort=nearest] run damage @p 6 arrow by @s
execute as @e[tag=soul3,tag=attacker,limit=1,sort=nearest] run damage @p 6 explosion by @s
execute as @e[tag=soul4,tag=attacker,limit=1,sort=nearest] run damage @p 6 fall by @s

tag @e[tag=attacker] remove attacker





