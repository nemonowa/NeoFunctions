# 命名：sword
# 説明：
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/sword


#内容
data merge entity @s {PickupDelay:0}
execute if entity @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[993.0f]}}}}] run return 0

#演出
execute at @s run playsound minecraft:block.amethyst_block.resonate master @a[distance=..4] ~ ~ ~ 0.25 1.66

# redがあればgreenに変更
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:red}}}}] on origin run title @s subtitle [{"text":"||","color":"green","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Emerald ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run title @s title ""
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:red}}}}] run return run data modify entity @s Item.components."minecraft:custom_data".slot set value green

# greenがあればblueに変更
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:green}}}}] on origin run title @s subtitle [{"text":"||","color":"aqua","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Lapis ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run title @s title ""
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:green}}}}] run return run data modify entity @s Item.components."minecraft:custom_data".slot set value blue

# blueがあればredに変更
execute as @s[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:blue}}}}] on origin run title @s subtitle [{"text":"||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Garnet ","color":"red","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run title @s title ""
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{slot:"blue"}}}}] run return run data modify entity @s Item.components."minecraft:custom_data".slot set value red

# blue：なんもなければredを付ける
execute on origin run title @s subtitle [{"text":"||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Garnet ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]

data modify entity @s Item.components."minecraft:custom_data".slot set value red

execute on origin run title @s title ""