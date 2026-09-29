# 命名：elite_throw_trident
# 説明：
# >
# =/function neofunction:entity/skill/elite_throw_trident
execute if entity @s[nbt={NoAI:1b}] run return 0
execute at @s anchored eyes run summon trident ^ ^ ^1 {crit:1b,Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s run playsound item.trident.throw ambient @a ~ ~ ~ 5 1
execute at @s as @e[type=trident,tag=needsMotion,limit=1] run function neofunction:entity/skill/motion/mid_speed
execute as @e[tag=boss] at @s run tp @s ~ ~ ~ facing entity @p eyes