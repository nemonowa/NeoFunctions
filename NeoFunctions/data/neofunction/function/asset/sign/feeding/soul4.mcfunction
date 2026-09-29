# 命名：soul4
# 説明：エサ場システム看板
# 説明：execute in neodimension:ceresta_festa run tp @s 853.25 43.00 1085.57 355.42 40.17
# 説明：https://discord.com/channels/1233036571243188296/1439571263113662606
# >
# =/function neofunction:asset/sign/feeding/soul4


# 内容：名前を表示したかったが置き換え処理の時間待ちでできない
title @a[distance=..16] subtitle [{"text":"～feeding place～","color":"gold"}]
title @a[distance=..16] title [{"text":"反重の祭壇","color":"red"}]
playsound minecraft:item.goat_horn.sound.5 record @a[distance=..16] ~ ~ ~ 1 1 1
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.01 99 normal

# 額縁いない場合補充
execute unless entity @e[distance=..3,type=glow_item_frame] run return run summon glow_item_frame 1120.50 45.03 1667.50 {Facing:1b,Invulnerable:1b,Rotation:[0.0f,-90.0f],Fixed: 0b}

# 空の場合の条件分岐
execute unless entity @e[distance=..3,type=glow_item_frame,nbt={Item:{}}] run return run function neofunction:asset/sign/feeding/.neo

# 指定外アイテムの場合の条件分岐
# execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item: {id:"minecraft:air"}}] run function neofunction:asset/sign/feeding/.neo

# 対応するエンティティを召喚：
# 指定外アイテムの場合の条件分岐
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:rotten_flesh"}}] run function neofunction:asset/summon/349
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:rotten_flesh"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:bone"}}] run function neofunction:asset/summon/673
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:bone"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"}}] run function neofunction:asset/summon/672
execute if entity @e[distance=..3,type=glow_item_frame,nbt={Item:{id:"minecraft:sweet_berries"}}] run return run execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}

execute unless entity @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1282.0f]}}}}] run damage @e[type=glow_item_frame,distance=..3,limit=1] 1 minecraft:out_of_world
execute unless entity @e[type=glow_item_frame,nbt={Item:{components:{"minecraft:custom_model_data":{floats:[1282.0f]}}}}] run return run tellraw @a[distance=..8] {"text":"指定のアイテムが必要です：ウィンドコア、腐肉、骨、スウィートベリー","color":"white","bold":true,"italic":false,"underlined":true,click_event:{"action":"open_url",url:"https://discord.com/channels/1233036571243188296/1439571263113662606"}}



#魔術師保護起動
execute in neodimension:ceresta_festa run setblock 1120 42 1655 minecraft:redstone_block
execute in neodimension:ceresta_festa run setblock 1120 39 1655 minecraft:chain_command_block[conditional=true,facing=down]{Command:'tellraw @a[distance=..64] "司祭は祭壇に戻った！"',CustomName:"@",LastExecution:109486835L,SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:1b,conditionMet:0b,powered:0b}

#スポナー設置
execute in neodimension:ceresta_festa run setblock 1111 44 1664 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1108 44 1655 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1111 44 1646 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1120 44 1643 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1129 44 1646 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1132 44 1655 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1129 44 1664 minecraft:spawner
#入口
execute in neodimension:ceresta_festa run setblock 1120 45 1658 air
execute in neodimension:ceresta_festa run setblock 1120 46 1658 minecraft:spawner
execute in neodimension:ceresta_festa run setblock 1117 45 1655 air
execute in neodimension:ceresta_festa run setblock 1120 45 1652 air
execute in neodimension:ceresta_festa run setblock 1123 45 1655 air
#魔導師スポナー
execute in neodimension:ceresta_festa run setblock 1120 44 1655 minecraft:spawner

#反重風精霊
execute in neodimension:ceresta_festa run summon armor_stand 1111 44 1664 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:675}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

execute in neodimension:ceresta_festa run summon armor_stand 1111 44 1646 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:675}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

execute in neodimension:ceresta_festa run summon armor_stand 1129 44 1646 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:675}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

execute in neodimension:ceresta_festa run summon armor_stand 1129 44 1664 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:675}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

#岩鎧ブレイズ
execute in neodimension:ceresta_festa run summon armor_stand 1108 44 1655 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:673}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

execute in neodimension:ceresta_festa run summon armor_stand 1120 44 1643 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:673}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

execute in neodimension:ceresta_festa run summon armor_stand 1132 44 1655 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:673}}}}},SpawnCount:1,SpawnRange:8,Delay:0s,MinSpawnDelay:300s,MaxSpawnDelay:300s,RequiredPlayerRange:16}],equipment:{head:{id:"minecraft:spawner",count:1}}}

#デコイ
execute in neodimension:ceresta_festa run summon armor_stand 1120 44 1655 {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",NoGravity:1b,PickupDelay:-1s,Age:5900,Invulnerable:1b,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:99999}}}}},MaxNearbyEntities:99,SpawnRange:4,Delay:0s,MinSpawnDelay:32000s,MaxSpawnDelay:32000s,RequiredPlayerRange:16,SpawnCount:1}],equipment:{head:{id:"minecraft:spawner",count:1}}}

#魔女
execute positioned 1120 44 1655 run function neofunction:asset/summon/674


# 額縁の中身を消す
execute as @e[type=glow_item_frame,distance=..3] run data modify entity @s Item set value {id:"minecraft:air"}


#/setblock ~ ~1 ~ minecraft:bamboo_sign[rotation=8,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:0b,messages:['{"bold":true,"clickEvent":{"action":"run_command","value":"function neofunction:asset/sign/feeding/soul4"},"color":"green","text":"～反重の祭壇～"}','{"bold":true,"color":"gold","text":"「ウィンドコア」"}','{"bold":true,"color":"white","text":"襲撃レベル：lv18~","underlined":true}','{"color":"light_purple","text":"۞スペルサイン۞"}']},is_waxed:0b}








