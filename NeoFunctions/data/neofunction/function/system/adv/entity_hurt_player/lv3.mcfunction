# 命名：lv3
# 説明：entity_hurt_player
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/lv3


## 内容

function neofunction:system/adv/entity_hurt_player/.get_entity {Name:"lv3"}

execute as @e[tag=soul1,tag=attacker,limit=1,sort=nearest] run damage @p 10 in_fire by @s
execute as @e[tag=soul2,tag=attacker,limit=1,sort=nearest] run damage @p 10 arrow by @s
execute as @e[tag=soul3,tag=attacker,limit=1,sort=nearest] run damage @p 10 explosion by @s
execute as @e[tag=soul4,tag=attacker,limit=1,sort=nearest] run damage @p 10 fall by @s

tag @e[tag=attacker] remove attacker





