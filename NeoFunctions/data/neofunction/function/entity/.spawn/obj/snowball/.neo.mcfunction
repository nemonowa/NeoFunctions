# 命名：雪玉機構
# 説明：
# >/function neofunction:entity/.spawn/hp-obj
# =/function neofunction:entity/.spawn/obj/snowball/.neo


# 雪玉への個別処理
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[130.0f]}}}}] run data merge entity @s {PortalCooldown:12}
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[130.0f]}}}}] at @s run playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 0.8 1.2 0
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[130.0f]}}}}] at @s run playsound minecraft:entity.mooshroom.shear master @a[distance=..32] ~ ~ ~ 1 1.2 0.1
execute as @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[130.0f]}}}}] at @s run particle minecraft:sweep_attack ~ ~-0.3 ~ 0 0 0 0 1 force

#ペットのスノーゴーレムが射出した雪玉についての処理
tag @s add snowgolemchecking
execute on origin if entity @s[tag=snowGolemFamiliar] run tag @e[tag=snowgolemchecking] add familiarshot
execute on origin if entity @s[tag=snowGolemFamiliar] run tag @e[tag=snowgolemchecking] remove vanilla
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv2] run tag @e[tag=snowgolemchecking] add familiarshotlv2
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv3] run tag @e[tag=snowgolemchecking] add familiarshotlv3
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv4] run tag @e[tag=snowgolemchecking] add familiarshotlv4
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv5] run tag @e[tag=snowgolemchecking] add familiarshotlv5
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv6] run tag @e[tag=snowgolemchecking] add familiarshotlv6
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv7] run tag @e[tag=snowgolemchecking] add familiarshotlv7
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv8] run tag @e[tag=snowgolemchecking] add familiarshotlv8
execute on origin if entity @s[tag=snowGolemFamiliar,tag=lv9] run tag @e[tag=snowgolemchecking] add familiarshotlv9
tag @s remove snowgolemchecking