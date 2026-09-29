# 命名：soul4
# 説明：entity_hurt_player
# 説明：土属性攻撃
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/soul4


## 内容
# execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run return run effect clear @s minecraft:fire_resistance

execute at @s run playsound minecraft:entity.player.hurt_sweet_berry_bush record @s ~ ~ ~ 1 1.5 1

execute at @s anchored eyes run particle dust{color:[1.0,1.0,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force
execute at @e[tag=soul4,distance=..16] run particle dust{color:[1.0,1.0,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force

# 実ダメージ付与処理はレベルごとに譲渡
# damage @s 2 fall by @e[tag=soul4,tag=lv0,limit=1,distance=..16]
# damage @s 2 fall by @e[tag=soul4,tag=lv1,limit=1,distance=..16]
# damage @s 6 fall by @e[tag=soul4,tag=lv2,limit=1,distance=..16]
# damage @s 10 fall by @e[tag=soul4,tag=lv3,limit=1,distance=..16]
# damage @s 20 fall by @e[tag=soul4,tag=lv4,limit=1,distance=..16]
# damage @s 50 fall by @e[tag=soul4,tag=lv5,limit=1,distance=..16]
# damage @s 100 fall by @e[tag=soul4,tag=lv6,limit=1,distance=..16]
# damage @s 200 fall by @e[tag=soul4,tag=lv7,limit=1,distance=..16]
# damage @s 500 fall by @e[tag=soul4,tag=lv8,limit=1,distance=..16]
# damage @s 1024 fall by @e[tag=soul4,tag=lv9,limit=1,distance=..16]

