# 命名：water
# 説明：Waterモブは殴られたとき50%の確率で
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/player_hurt_entity/water



## 内容
execute if entity @e[tag=water,tag=hit] if predicate neofunction:random_chance/50 run function neofunction:asset/summon/664

execute as @e[tag=hit,tag=water] run effect give @s minecraft:regeneration 6 1
execute as @e[tag=hit,tag=water] at @s run particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
execute as @e[tag=hit,tag=water] at @s run return run playsound block.water.ambient record @s ~ ~ ~ 0.4 1.0
