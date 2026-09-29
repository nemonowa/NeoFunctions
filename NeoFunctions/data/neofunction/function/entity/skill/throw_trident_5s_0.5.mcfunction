# 命名：throw_trident_5s_0.5
# 説明：
# >
# =/function neofunction:entity/skill/throw_trident_5s_0.5
execute unless entity @a[distance=..20] run return 0
execute at @s anchored eyes run summon trident ^ ^1 ^1 {crit:1b,Tags:["needsMotion"]}
execute at @s run playsound item.trident.throw ambient @a ~ ~ ~ 5 1
execute at @s as @e[type=trident,tag=needsMotion,limit=1] run function neofunction:entity/skill/motion/mid_speed_1500