# 命名：blue_corona
# 説明：
# >/function neofunction:entity/skill/clock/5s-1
# =/function neofunction:entity/skill/blue_corona3


execute as @e[tag=NowBlueCorona] at @s as @a[distance=..30] at @s run playsound entity.evoker.prepare_attack master @a ~ ~ ~ 1.0 2.0
execute as @e[tag=NowBlueCorona] at @s as @a[distance=..6] run damage @s 20 explosion by @e[tag=NowBlueCorona,limit=1,sort=nearest]


execute as @e[tag=NowBlueCorona] at @s rotated 0 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 22.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 45 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 67.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 90 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 112.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 135 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 157.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 180 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 202.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 225 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 247.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 270 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 292.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 315 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a
execute as @e[tag=NowBlueCorona] at @s rotated 337.5 0 run particle explosion_emitter ^ ^ ^3 0 0 0 0 0 normal @a

execute as @e[tag=NowBlueCorona] at @s run tag @s remove NowBlueCorona