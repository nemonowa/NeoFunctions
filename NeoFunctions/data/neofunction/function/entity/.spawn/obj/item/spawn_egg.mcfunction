# 命名：spawn_egg
# 説明：
# >/function neofunction:entity/.spawn/obj/item/.neo
# =/function neofunction:entity/.spawn/obj/item/spawn_egg

data merge entity @s {PickupDelay:0}
execute if entity @s[nbt={Item:{components:{"minecraft:custom_model_data":{floats:[993.0f]}}}}] run return 0

#演出
execute at @s run playsound minecraft:block.amethyst_block.resonate record @a[distance=..4] ~ ~ ~ 2.0 1.66

# redがあればgreenに変更
execute on origin if entity @s[tag=tamerred] run title @s subtitle [{"text":"||","color":"green","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Emerald ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin if entity @s[tag=tamerred] run title @s title ""
execute on origin if entity @s[tag=tamerred] run tag @s add tamergreen
execute on origin if entity @s[tag=tamerred] run return run tag @s remove tamerred

# greenがあればblueに変更
execute on origin if entity @s[tag=tamergreen] run title @s subtitle [{"text":"||","color":"aqua","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Lapis ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin if entity @s[tag=tamergreen] run title @s title ""
execute on origin if entity @s[tag=tamergreen] run tag @s add tamerblue
execute on origin if entity @s[tag=tamergreen] run return run tag @s remove tamergreen

# blueがあればredに変更
execute on origin if entity @s[tag=tamerblue] run title @s subtitle [{"text":"||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Garnet ","color":"red","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin if entity @s[tag=tamerblue] run title @s title ""
execute on origin if entity @s[tag=tamerblue] run tag @s add tamerred
execute on origin if entity @s[tag=tamerblue] run return run tag @s remove tamerblue

#なんもなければredを付ける
execute on origin run title @s subtitle [{"text":"||","color":"red","bold":true,"italic":false,"obfuscated":true},{"text":"||","color":"gray"},{"text":"||"},{"text":" Form=Garnet ","obfuscated":false},{"text":"||"},{"text":"||","color":"gray"},{"text":"||"}]
execute on origin run tag @s add tamerred
execute on origin run title @s title ""