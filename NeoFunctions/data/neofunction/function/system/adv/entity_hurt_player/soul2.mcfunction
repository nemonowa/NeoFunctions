# 命名：soul2
# 説明：entity_hurt_player
# 説明：水属性攻撃
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/soul2


## 内容
# execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run return run effect clear @s minecraft:fire_resistance

execute at @s run playsound minecraft:entity.player.hurt_drown record @s ~ ~ ~ 1 1.5 1

execute at @s anchored eyes run particle dust{color:[1,1,1.0],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force
execute at @e[tag=soul4,distance=..16] run particle dust{color:[1,1,1.0],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force

# 実ダメージ付与処理はレベルごとに譲渡
# damage @s 2 arrow by @e[tag=soul2,tag=lv0,limit=1,distance=..16]
# damage @s 2 arrow by @e[tag=soul2,tag=lv1,limit=1,distance=..16]
# damage @s 6 arrow by @e[tag=soul2,tag=lv2,limit=1,distance=..16]
# damage @s 10 arrow by @e[tag=soul2,tag=lv3,limit=1,distance=..16]
# damage @s 20 arrow by @e[tag=soul2,tag=lv4,limit=1,distance=..16]
# damage @s 50 arrow by @e[tag=soul2,tag=lv5,limit=1,distance=..16]
# damage @s 100 arrow by @e[tag=soul2,tag=lv6,limit=1,distance=..16]
# damage @s 200 arrow by @e[tag=soul2,tag=lv7,limit=1,distance=..16]
# damage @s 500 arrow by @e[tag=soul2,tag=lv8,limit=1,distance=..16]
# damage @s 1024 arrow by @e[tag=soul2,tag=lv9,limit=1,distance=..16]

