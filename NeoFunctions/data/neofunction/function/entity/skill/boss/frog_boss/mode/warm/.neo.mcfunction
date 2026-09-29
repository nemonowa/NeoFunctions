# 命名：.neo
# 説明：モードチェンジ
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/mode/warm/.neo
execute if score @s generaltimer matches 1000 run function neofunction:entity/skill/boss/frog_boss/mode/warm/first

execute if score @s generaltimer matches 1600 run function neofunction:entity/skill/boss/frog_boss/mode/cold/warp
execute if score @s generaltimer matches 1800 run function neofunction:entity/skill/boss/frog_boss/mode/cold/warp

execute if score @s generaltimer matches 1700 run function neofunction:entity/skill/boss/frog_boss/mode/warm/frogspread

execute if score @s generaltimer matches 1750 run summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"pearlescent_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread2","needsMotion"]}
execute if score @s generaltimer matches 1750 as @e[tag=FrogSpread,tag=needsMotion] at @s run function neofunction:entity/skill/motion/mid_speed
execute if score @s generaltimer matches 1750 run playsound entity.witch.throw hostile @a[distance=..16] ~ ~ ~ 100 0.5


execute if score @s generaltimer matches 1710.. as @e[tag=FrogSpread] if predicate neofunction:is_in_water at @s positioned ~ ~1 ~ run function neofunction:entity/skill/boss/frog_boss/mode/warm/aec
execute if score @s generaltimer matches 1710.. as @e[tag=FrogSpread] if data entity @s {OnGround:1b} at @s run function neofunction:entity/skill/boss/frog_boss/mode/warm/aec
execute if score @s generaltimer matches 1760.. as @e[tag=FrogSpread2] if predicate neofunction:is_in_water at @s positioned ~ ~1 ~ run function neofunction:entity/skill/boss/frog_boss/mode/warm/aec
execute if score @s generaltimer matches 1760.. as @e[tag=FrogSpread2] if data entity @s {OnGround:1b} at @s run function neofunction:entity/skill/boss/frog_boss/mode/warm/aec