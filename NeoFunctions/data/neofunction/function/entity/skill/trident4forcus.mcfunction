# 命名：trident4forcus
# 説明：4本のトライデントを召喚し、プレイヤーに向って3秒後から1秒毎に投げつける。
# 説明：Yawは設定したけど、トライデントの仕様上意味がないみたい
# >
# =/function neofunction:entity/skill/trident4forcus

execute as @s[nbt={DeathLootTable:"neofunction:asset/summon/604"}] run tellraw @p [{"text":"<"},{"selector":"@s"},{"text":">   波葬エル・マタドール！","color":"dark_blue","bold":true,"italic":false}]

data merge entity @s {NoAI:1b}

execute in neodimension:ceresta_festa run tp @s 398 42 1031

execute at @s anchored eyes run summon trident ~3.000 ~3 ~0.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":20}}}}
execute at @s anchored eyes run summon trident ~0.000 ~3 ~3.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[-90F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":20}}}}
execute at @s anchored eyes run summon trident ~-3.000 ~3 ~0.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[180F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":20}}}}
execute at @s anchored eyes run summon trident ~0.000 ~3 ~-3.000 {NoGravity:1b,Glowing:1b,life:1000,crit:1b,Rotation:[0F,0F],Tags:["needsMotion"],item:{id:"minecraft:trident",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":20}}}}

execute at @s run playsound item.trident.throw ambient @a[distance=..32] ~ ~ ~ 5 1
execute at @s run playsound entity.wither.ambient master @a[distance=..32] ~ ~ ~ 2.0 0.8
tag @s add tridentforcus

schedule function neofunction:entity/skill/tridentforcusschedule 60t append
schedule function neofunction:entity/skill/tridentforcusschedule 70t append
schedule function neofunction:entity/skill/tridentforcusschedule 80t append
schedule function neofunction:entity/skill/tridentforcusschedule 90t append

schedule function neofunction:entity/skill/tridentforcusscheduleremove 100t append