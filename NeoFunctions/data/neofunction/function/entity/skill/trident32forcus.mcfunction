# 命名：trident32forcus
# 説明：4本のトライデントを召喚し、プレイヤーに向って3秒後から0.5秒毎に投げつける。
# 説明：Yawは設定したけど、トライデントの仕様上意味がないみたい
# >
# =/function neofunction:entity/skill/trident32forcus

execute if entity @s[nbt={NoAI:1b}] run return 0

execute as @s[nbt={DeathLootTable:"neofunction:asset/summon/738"}] run tellraw @p [{"text":"<"},{"selector":"@s"},{"text":">   波葬エル・マタドール！","color":"dark_blue","bold":true,"italic":false}]

data merge entity @s {NoAI:1b}

execute in neodimension:ceresta_festa run tp @s 398 42 1031

execute at @s anchored eyes run summon trident ~4.000 ~3 ~0.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~3.923 ~3 ~0.780 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~3.696 ~3 ~1.531 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~3.326 ~3 ~2.222 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~2.828 ~3 ~2.828 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~2.222 ~3 ~3.326 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~1.531 ~3 ~3.696 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.780 ~3 ~3.923 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.000 ~3 ~4.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-0.780 ~3 ~3.923 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.531 ~3 ~3.696 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-2.222 ~3 ~3.326 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-2.828 ~3 ~2.828 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-3.326 ~3 ~2.222 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-3.696 ~3 ~1.531 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-3.923 ~3 ~0.780 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-4.000 ~3 ~0.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-3.923 ~3 ~-0.780 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-3.696 ~3 ~-1.531 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-3.326 ~3 ~-2.222 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-2.828 ~3 ~-2.828 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-2.222 ~3 ~-3.326 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-1.531 ~3 ~-3.696 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~-0.780 ~3 ~-3.923 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.000 ~3 ~-4.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~0.780 ~3 ~-3.923 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~1.531 ~3 ~-3.696 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~2.222 ~3 ~-3.326 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~2.828 ~3 ~-2.828 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~3.326 ~3 ~-2.222 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~3.696 ~3 ~-1.531 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}
execute at @s anchored eyes run summon trident ~3.923 ~3 ~-0.780 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":30}}}}

execute at @s run playsound item.trident.throw ambient @a[distance=..32] ~ ~ ~ 5 1
execute at @s run playsound entity.wither.ambient master @a[distance=..32] ~ ~ ~ 2.0 0.8
tag @s add tridentforcus

schedule function neofunction:entity/skill/tridentforcusschedule 60t append
schedule function neofunction:entity/skill/tridentforcusschedule 63t append
schedule function neofunction:entity/skill/tridentforcusschedule 66t append
schedule function neofunction:entity/skill/tridentforcusschedule 69t append
schedule function neofunction:entity/skill/tridentforcusschedule 72t append
schedule function neofunction:entity/skill/tridentforcusschedule 75t append
schedule function neofunction:entity/skill/tridentforcusschedule 78t append
schedule function neofunction:entity/skill/tridentforcusschedule 81t append
schedule function neofunction:entity/skill/tridentforcusschedule 84t append
schedule function neofunction:entity/skill/tridentforcusschedule 87t append
schedule function neofunction:entity/skill/tridentforcusschedule 90t append
schedule function neofunction:entity/skill/tridentforcusschedule 93t append
schedule function neofunction:entity/skill/tridentforcusschedule 96t append
schedule function neofunction:entity/skill/tridentforcusschedule 99t append
schedule function neofunction:entity/skill/tridentforcusschedule 102t append
schedule function neofunction:entity/skill/tridentforcusschedule 105t append
schedule function neofunction:entity/skill/tridentforcusschedule 108t append
schedule function neofunction:entity/skill/tridentforcusschedule 111t append
schedule function neofunction:entity/skill/tridentforcusschedule 114t append
schedule function neofunction:entity/skill/tridentforcusschedule 117t append
schedule function neofunction:entity/skill/tridentforcusschedule 120t append
schedule function neofunction:entity/skill/tridentforcusschedule 123t append
schedule function neofunction:entity/skill/tridentforcusschedule 126t append
schedule function neofunction:entity/skill/tridentforcusschedule 129t append
schedule function neofunction:entity/skill/tridentforcusschedule 132t append
schedule function neofunction:entity/skill/tridentforcusschedule 135t append
schedule function neofunction:entity/skill/tridentforcusschedule 138t append
schedule function neofunction:entity/skill/tridentforcusschedule 141t append
schedule function neofunction:entity/skill/tridentforcusschedule 144t append
schedule function neofunction:entity/skill/tridentforcusschedule 147t append
schedule function neofunction:entity/skill/tridentforcusschedule 150t append
schedule function neofunction:entity/skill/tridentforcusschedule 153t append

schedule function neofunction:entity/skill/tridentforcusscheduleremove 155t append
