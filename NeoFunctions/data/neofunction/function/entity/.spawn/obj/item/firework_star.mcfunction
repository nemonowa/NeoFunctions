# 命名：花火の星
# 説明：両替処理：execute as @s at @s run tp @e[type=item,nbt={Item:{id:"minecraft:firework_star"}},distance=..8] ~ ~ ~
# >/function neofunction:entity/tick
# =/function neofunction:entity/.spawn/obj/item/firework_star


# 花火の星
data merge entity @s {Glowing:1b,PickupDelay:20}

# スター
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[1.0f]}}}}] at @s run function neofunction:system/exchange/give/s1
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[2.0f]}}}}] at @s run function neofunction:system/exchange/give/s2
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[3.0f]}}}}] at @s run function neofunction:system/exchange/give/s3
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[4.0f]}}}}] at @s run function neofunction:system/exchange/give/s4
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[5.0f]}}}}] at @s run function neofunction:system/exchange/give/s5
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[6.0f]}}}}] at @s run function neofunction:system/exchange/give/s6
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[7.0f]}}}}] at @s run function neofunction:system/exchange/give/s7
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[8.0f]}}}}] at @s run function neofunction:system/exchange/give/s8
#execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[9.0f]}}}}] at @s run function neofunction:system/exchange/give/s9

# マモン
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[11.0f]}}}}] run function neofunction:system/exchange/give/m1
execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[12.0f]}}}}] run function neofunction:system/exchange/give/m2
#execute as @s[nbt={Item:{count:64,components:{"minecraft:custom_model_data":{floats:[13.0f]}}}}] run function neofunction:system/exchange/give/m3

#
execute as @s at @s run playsound minecraft:block.enchantment_table.use record @a[distance=..4] ~ ~ ~ 1 0.5

# ここで消すのはダメ
#tag @s add del
