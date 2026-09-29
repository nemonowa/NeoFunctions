# 命名：lv8
# 説明：entity_hurt_player
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/lv8


## 内容

function neofunction:system/adv/entity_hurt_player/.get_entity {Name:"lv8"}

execute as @e[tag=soul1,tag=attacker,limit=1,sort=nearest] run damage @p 500 in_fire by @s
execute as @e[tag=soul2,tag=attacker,limit=1,sort=nearest] run damage @p 500 arrow by @s
execute as @e[tag=soul3,tag=attacker,limit=1,sort=nearest] run damage @p 500 explosion by @s
execute as @e[tag=soul4,tag=attacker,limit=1,sort=nearest] run damage @p 500 fall by @s

tag @e[tag=attacker] remove attacker





