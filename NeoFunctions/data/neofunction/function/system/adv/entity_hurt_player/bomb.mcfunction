# 命名：bomb
# 説明：entity_hurt_player
# 説明：bombタグ持ち全般からの追加処理
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/bomb


## 内容
execute if entity @e[distance=..32,limit=1,tag=bomb] run playsound minecraft:entity.generic.explode record @s ~ ~ ~ 2.0 1.5
execute if entity @e[distance=..32,limit=1,tag=bomb] run damage @s 10 minecraft:in_fire
execute if entity @e[distance=..32,limit=1,tag=bomb] run return run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

