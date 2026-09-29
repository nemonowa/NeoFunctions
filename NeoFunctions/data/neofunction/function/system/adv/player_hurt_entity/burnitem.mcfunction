# 命名：burnitem
# 説明：
# >
# =/function neofunction:system/adv/player_hurt_entity/burnitem

# 直近で殴られたエンティティを捕捉して着火
execute as @e[tag=hit] at @s run data merge entity @s {Fire:200s}

# 炎パーティクル演出
execute as @e[tag=hit] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0.02 10 force

# 魂の炎っぽい補助演出（soul_torch対策）
execute as @e[tag=hit] at @s run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.6 0.3 0.02 5 force

# 余熱・火花演出
execute at @s as @e[tag=hit] run particle minecraft:lava ~ ~0.8 ~ 0.2 0.2 0.2 0 10 force


# 着火音
execute at @s run playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 1 1

