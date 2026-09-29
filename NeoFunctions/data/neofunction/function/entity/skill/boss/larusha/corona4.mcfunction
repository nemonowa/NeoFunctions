# 命名：corona4
# 説明：
# >/function neofunction:entity/skill/boss/larusha/corona3 実行者as @e[type=wither_skeleton,tag=larusha] 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/corona4
execute as @a[distance=..30] at @s run playsound entity.evoker.prepare_attack master @a ~ ~ ~ 1.0 2.0
execute as @e[distance=6..24,team=white] unless entity @s[gamemode=spectator] run damage @s 20 explosion by @e[type=wither_skeleton,tag=larusha,limit=1]


execute rotated 0 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 22.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 45 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 67.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 90 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 112.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 135 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 157.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 180 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 202.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 225 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 247.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 270 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 292.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 315 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a
execute rotated 337.5 0 run particle explosion_emitter ^ ^ ^9 0 0 0 0 0 normal @a

execute rotated 0 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 22.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 45 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 67.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 90 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 112.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 135 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 157.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 180 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 202.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 225 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 247.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 270 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 292.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 315 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
execute rotated 337.5 0 run particle explosion_emitter ^ ^ ^20 0 0 0 0 0 normal @a
