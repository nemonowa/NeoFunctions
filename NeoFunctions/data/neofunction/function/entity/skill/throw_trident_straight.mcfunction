# 命名：throw_trident_straight
# 説明：
# >
# =/function neofunction:entity/skill/throw_trident_straight
execute at @s anchored eyes run summon trident ^ ^ ^1 {pickup:0b,life:1000,damage:15d,crit:1b,Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":20}}}}
tp @e[type=arrow,tag=needsMotion] ~ ~1.5 ~ ~ ~
execute at @s run playsound item.trident.throw ambient @a ~ ~ ~ 5 1
execute at @s as @e[type=trident,tag=needsMotion,limit=1] run function neofunction:entity/skill/motion/mid_speed_straight