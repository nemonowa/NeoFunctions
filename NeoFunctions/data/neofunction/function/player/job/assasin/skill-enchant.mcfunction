# 命名：火遁の術
# 説明：発動時、自身に火炎耐性、敵に30s(16m)の炎上状態を付与する。（SP10消費）
# >/function neofunction:asset/skill/255
# =/function neofunction:player/job/assasin/skill-enchant


# 着火
effect give @s minecraft:fire_resistance 15 0
execute as @e[tag=enemy,distance=..16] at @s run data merge entity @s {Fire:600s}

# 炎パーティクル演出
particle minecraft:lava ~ ~0.8 ~ 0.2 0.2 0.2 0 10 force
particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 30 force
execute as @e[tag=enemy,distance=..16] at @s run particle minecraft:lava ~ ~0.8 ~ 0.2 0.2 0.2 0 10 force
execute as @e[tag=enemy,distance=..16] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0.02 10 force

# 着火音
playsound minecraft:entity.zombie.infect master @a[distance=..16] ~ ~ ~ 1 0.5 0
execute as @e[tag=enemy,distance=..16] at @s run playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 1 1


# SP消費：
scoreboard players remove @s SP 10




