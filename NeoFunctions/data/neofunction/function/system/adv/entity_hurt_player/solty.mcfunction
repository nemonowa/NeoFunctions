# 命名：solty
# 説明：entity_hurt_player
# 説明：soltyタグ持ち全般からの追加処理
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/solty



## 内容

#現状動作はするがsoltyタグを削除する処理を設定していないので、アクティブエフェクト検知式に変更でタグを必要なくする。


execute if entity @s[tag=solty3] run effect give @e[tag=enemy,distance=..16] speed 5 2
execute if entity @s[tag=solty3] run return run effect give @s minecraft:slowness 5 2

execute if entity @s[tag=solty2] run effect give @e[tag=enemy,distance=..16] speed 5 2
execute if entity @s[tag=solty2] run effect give @s minecraft:slowness 5 2
execute if entity @s[tag=solty2] run tag @s add solty3
execute if entity @s[tag=solty2] run return run tag @s remove solty2

execute if entity @s[tag=solty1] run effect give @e[tag=enemy,distance=..16] speed 5 1
execute if entity @s[tag=solty1] run effect give @s minecraft:slowness 5 1
execute if entity @s[tag=solty1] run tag @s add solty2
execute if entity @s[tag=solty1] run return run tag @s remove solty1

effect give @e[tag=enemy,distance=..16] speed 5 0
effect give @s slowness 5 0
tag @s add solty1





#execute if entity @e[distance=..32,limit=1,tag=solty] run playsound minecraft:entity.generic.explode record @s ~ ~ ~ 2.0 1.5

#execute if entity @e[distance=..32,limit=1,tag=solty] run effect give @s minecraft:levitation 3 200

#execute if entity @e[distance=..32,limit=1,tag=solty] run damage @s 10 minecraft:explosion
#execute if entity @e[distance=..32,limit=1,tag=solty] run return run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

