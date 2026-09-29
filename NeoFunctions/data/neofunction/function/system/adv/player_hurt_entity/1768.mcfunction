# 命名：1768
# 説明：
# >
# =/function neofunction:system/adv/player_hurt_entity/1768


# 内容

execute store result score random temp run random value 0..2

execute if score random temp matches 0 run effect give @e[tag=hit] minecraft:poison 15 0
execute if score random temp matches 1 run effect give @e[tag=hit] minecraft:slowness 15 0
execute if score random temp matches 2 run effect give @e[tag=hit] minecraft:weakness 15 0