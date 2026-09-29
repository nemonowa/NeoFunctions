# 命名：throw_trident
# 説明：
# >
# =/function neofunction:entity/skill/throw_trident
execute at @s anchored eyes run summon trident ^ ^ ^1 {crit:1b,Tags:["needsMotion"]}
execute at @s run playsound item.trident.throw ambient @a[distance=..16] ~ ~ ~ 5 1
execute at @s as @e[type=trident,tag=needsMotion,limit=1] run function neofunction:entity/skill/motion/mid_speed