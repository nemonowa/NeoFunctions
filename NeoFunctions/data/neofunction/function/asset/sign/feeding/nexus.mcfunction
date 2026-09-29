# 命名：nexus
# 説明：エサ場システム看板（nexus
# 説明：execute in neodimension:ceresta_festa run tp @s 853.25 43.00 1085.57 355.42 40.17
# 説明：https://discord.com/channels/1233036571243188296/1439571263113662606
# >
# =/function neofunction:asset/sign/feeding/nexus


# 空の場合の条件分岐
execute unless entity @e[distance=..3,type=glow_item_frame,nbt={Item:{}}] run return run function neofunction:asset/sign/feeding/.neo

# 名前を表示したかったが置き換え処理の時間待ちでできない
title @a[distance=..16] subtitle [{"text":"～feeding place～","color":"gold"}]
title @a[distance=..16] title [{"text":"野営地のえさ場","color":"gold"}]
playsound minecraft:item.goat_horn.sound.5 record @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 99 normal

# 対応するエンティティを召喚：
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1.0f]}}}}] run function neofunction:asset/summon/123
execute as @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1.0f]}}}}] run return run data modify entity @s Item set value {id:"minecraft:air"}

execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[2.0f]}}}}] run function neofunction:asset/summon/123
execute as @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1.0f]}}}},distance=..3] run return run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[3.0f]}}}}] run function neofunction:asset/summon/123
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[4.0f]}}}}] run function neofunction:asset/summon/123
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[5.0f]}}}}] run function neofunction:asset/summon/123
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[6.0f]}}}}] run function neofunction:asset/summon/123
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[7.0f]}}}}] run function neofunction:asset/summon/123
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[8.0f]}}}}] run function neofunction:asset/summon/123
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[9.0f]}}}}] run function neofunction:asset/summon/123

# 指定外アイテムの場合の処理
function neofunction:asset/summon/123
execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}

