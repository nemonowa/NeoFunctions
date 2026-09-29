# 命名：.neo
# 説明：モードチェンジ
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/mode/cold/.neo
execute if score @s generaltimer matches 0 run function neofunction:entity/skill/boss/frog_boss/mode/cold/first

execute if score @s generaltimer matches 200 run function neofunction:entity/skill/boss/frog_boss/mode/cold/warp
execute if score @s generaltimer matches 400 run function neofunction:entity/skill/boss/frog_boss/mode/cold/warp

execute if score @s generaltimer matches 300 run function neofunction:entity/skill/boss/frog_boss/mode/cold/frogspread

execute if score @s generaltimer matches 350 run summon armor_stand ~ ~ ~ {Passengers:[{id:"item_display",item:{id:"verdant_froglight",count:1},Tags:["upper"]}],Invisible:1b,Invulnerable:1b,Small:1b,DisabledSlots:2097151,Tags:["FrogSpread","needsMotion"]}
execute if score @s generaltimer matches 350 as @e[tag=FrogSpread,tag=needsMotion] at @s run function neofunction:entity/skill/motion/mid_speed
execute if score @s generaltimer matches 350 run playsound entity.witch.throw hostile @a[distance=..16] ~ ~ ~ 100 0.5


execute if score @s generaltimer matches 310.. as @e[tag=FrogSpread] if predicate neofunction:is_in_water at @s positioned ~ ~1 ~ run function neofunction:entity/skill/boss/frog_boss/mode/cold/aec
execute if score @s generaltimer matches 310.. as @e[tag=FrogSpread] if data entity @s {OnGround:1b} at @s run function neofunction:entity/skill/boss/frog_boss/mode/cold/aec
