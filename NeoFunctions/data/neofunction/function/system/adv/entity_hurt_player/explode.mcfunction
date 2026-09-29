# 命名：explode
# 説明：explode装備でで殴られた時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/entity_hurt_player/explode



## 内容
execute as @e[tag=enemy,distance=..8,sort=nearest,limit=3] at @s run playsound minecraft:entity.generic.explode record @a[distance=..16] ~ ~ ~ 0.5 1.5 0.01
execute as @e[tag=enemy,distance=..8,sort=nearest,limit=3] at @s run damage @s 10 minecraft:explosion by @p
execute as @e[tag=enemy,distance=..8,sort=nearest,limit=3] at @s run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0.1 200 force

