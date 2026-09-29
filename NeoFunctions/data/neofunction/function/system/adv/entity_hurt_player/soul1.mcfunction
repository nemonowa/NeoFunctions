# 命名：soul1
# 説明：entity_hurt_player
# 説明：炎属性攻撃
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# 説明：属性攻撃を受けたとき、周りの全てのエンティティの属性レベルに合わせたダメージを受ける
# >
# =/function neofunction:system/adv/entity_hurt_player/soul1


## 内容
# execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run return run effect clear @s minecraft:fire_resistance

execute at @s run playsound minecraft:entity.player.hurt_on_fire record @s ~ ~ ~ 1 1.5 1

execute at @s anchored eyes run particle dust{color:[1.0,1,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force
execute at @e[tag=soul4,distance=..16] run particle dust{color:[1.0,1,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force


# 実ダメージ付与処理はレベルごとに譲渡
# damage @s 1024 in_fire by @e[tag=soul1,tag=lv9,limit=1,type=!villager,distance=..16]
# damage @s 500 in_fire by @e[tag=soul1,tag=lv8,limit=1,type=!villager,distance=..16]
# damage @s 200 in_fire by @e[tag=soul1,tag=lv7,limit=1,type=!villager,distance=..16]
# damage @s 100 in_fire by @e[tag=soul1,tag=lv6,limit=1,type=!villager,distance=..16]
# damage @s 50 in_fire by @e[tag=soul1,tag=lv5,limit=1,type=!villager,distance=..16]
# damage @s 20 in_fire by @e[tag=soul1,tag=lv4,limit=1,type=!villager,distance=..16]
# damage @s 10 in_fire by @e[tag=soul1,tag=lv3,limit=1,type=!villager,distance=..16]
# damage @s 6 in_fire by @e[tag=soul1,tag=lv2,limit=1,type=!villager,distance=..16]
# damage @s 2 in_fire by @e[tag=soul1,tag=lv1,limit=1,type=!villager,distance=..16]
# damage @s 2 in_fire by @e[tag=soul1,tag=lv0,limit=1,type=!villager,distance=..16]

