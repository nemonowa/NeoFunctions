# 命名：trident16forcus
# 説明：16本のトライデントを召喚し、視線方向に向かって3秒後から0.25秒毎に投げつける。
# 説明：Yawは設定したけど、トライデントの仕様上意味がないみたい
# >
# =/function neofunction:asset/skill/55

execute at @s anchored eyes run summon trident ~1.500 ~3 ~0.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~1.387 ~3 ~0.574 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~1.061 ~3 ~1.061 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.574 ~3 ~1.387 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.000 ~3 ~1.500 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-0.574 ~3 ~1.387 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.061 ~3 ~1.061 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.387 ~3 ~0.574 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.500 ~3 ~0.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.387 ~3 ~-0.574 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.061 ~3 ~-1.061 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-0.574 ~3 ~-1.387 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.000 ~3 ~-1.500 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.574 ~3 ~-1.387 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~1.061 ~3 ~-1.061 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~1.387 ~3 ~-0.574 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}


effect give @s minecraft:slowness 10 7 true
execute at @s run playsound item.trident.throw ambient @a[distance=..32] ~ ~ ~ 5 1
execute at @s run playsound entity.wither.ambient master @a[distance=..32] ~ ~ ~ 1.0 0.8
tag @s add tridentforcus

schedule function neofunction:asset/skill/55-1 60t append
schedule function neofunction:asset/skill/55-1 65t append
schedule function neofunction:asset/skill/55-1 70t append
schedule function neofunction:asset/skill/55-1 75t append
schedule function neofunction:asset/skill/55-1 80t append
schedule function neofunction:asset/skill/55-1 85t append
schedule function neofunction:asset/skill/55-1 90t append
schedule function neofunction:asset/skill/55-1 95t append
schedule function neofunction:asset/skill/55-1 100t append
schedule function neofunction:asset/skill/55-1 105t append
schedule function neofunction:asset/skill/55-1 110t append
schedule function neofunction:asset/skill/55-1 115t append
schedule function neofunction:asset/skill/55-1 120t append
schedule function neofunction:asset/skill/55-1 125t append
schedule function neofunction:asset/skill/55-1 130t append
schedule function neofunction:asset/skill/55-1 135t append
schedule function neofunction:asset/skill/55-1 140t append
schedule function neofunction:asset/skill/55-1 145t append

schedule function neofunction:asset/skill/55-2 150t append


# 消費SP
scoreboard players remove @s SP 50

