# 命名：spawner_check
# 説明：
# >/function neofunction:asset/summon/other/779
# =/function neofunction:entity/skill/boss/frog_boss/elite/spawner_check

execute as @e[type=spawner_minecart,distance=..0.01] on vehicle run kill @s
kill @e[type=spawner_minecart,distance=..0.01]
setblock ~ ~ ~ spawner
summon armor_stand ~ ~ ~ {CustomName:{"text":"ノーチラス位相鋲","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},CustomNameVisible:0b,Team:"dark_blue",NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["air"],Pose:{Head:[180f,0f,0f]},Passengers:[{id:"minecraft:spawner_minecart",Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomDisplayTile:1b,CustomName:{"text":"高次擬態性増殖体","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:item",PickupDelay:-1s,Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_name":{"text":"SummonScroll"},"minecraft:custom_data":{summon:780}}}}},MaxNearbyEntities:99s,SpawnRange:0s,Delay:0s,MinSpawnDelay:1800s,MaxSpawnDelay:3600s,RequiredPlayerRange:20s,SpawnCount:1s,Tags:["vanilla","FrogBossSpawner"]}],equipment:{head:{id:"minecraft:spawner",count:1}}}