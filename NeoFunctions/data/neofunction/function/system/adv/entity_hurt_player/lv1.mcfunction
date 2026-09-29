# 命名：lv1
# 説明：entity_hurt_player
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/lv1


## 内容

function neofunction:system/adv/entity_hurt_player/.get_entity {Name:"lv1"}

execute as @e[tag=soul1,tag=attacker,limit=1,sort=nearest] run damage @p 2 in_fire by @s
execute as @e[tag=soul2,tag=attacker,limit=1,sort=nearest] run damage @s 2 arrow by @s
execute as @e[tag=soul3,tag=attacker,limit=1,sort=nearest] run damage @s 2 explosion by @s
execute as @e[tag=soul4,tag=attacker,limit=1,sort=nearest] run damage @s 2 fall by @s

tag @e[tag=attacker] remove attacker





