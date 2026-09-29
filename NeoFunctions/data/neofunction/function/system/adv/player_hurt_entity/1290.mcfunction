# 命名：1290
# 説明：soltheal武器で殴った時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/player_hurt_entity/1290



## 内容
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=1] run effect give @s minecraft:levitation 1
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=1] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=1] run playsound entity.iron_golem.attack record @a[distance=..8] ~ ~ ~ 0.4 0.5 0.01
