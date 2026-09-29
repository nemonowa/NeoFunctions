# 命名：levarmor
# 説明：levarmorを着ていて殴られた時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/entity_hurt_player/levarmor



## 内容
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=3] run effect give @s[tag=!boss] minecraft:levitation 2
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=3] run effect give @s[tag=!boss] minecraft:glowing 2
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=2] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=2] run playsound entity.iron_golem.attack record @a[distance=..8] ~ ~ ~ 0.4 0.5 0.01
