# 命名：tarai1
# 説明：
# >/function neofunction:entity/skill/boss/larusha/skill 実行者as @e[type=wither_skeleton,tag=larusha,tag=!nowskilling] if score @s temp matches 70..85 実行位置@s
# =/function neofunction:entity/skill/boss/larusha/tarai1
execute in neodimension:ceresta_festa run tp @s 216.33 -19.00 1966.51 2069.08 -4.59
me §fは§6§l§n黄金の金たらい§fを発動した！！
summon spawner_minecart 218 8 1966 {SpawnCount:25,SpawnRange:25,Delay:1,MinSpawnDelay:100,MaxSpawnDelay:100,MaxNearbyEntities:20,RequiredPlayerRange:32,Tags:["fly0"],CustomName:{"text":"門となるスポナー"},DisplayState:{id:"minecraft:glowstone"},CustomDisplayTile:1b,SpawnData:{entity:{id:"minecraft:shulker_bullet",NoGravity:1b,Motion:[0.1,0.0,0.0],Passengers:[{id:"minecraft:spawner_minecart",DisplayState:{id:"minecraft:glowstone"},CustomDisplayTile:1b,SpawnCount:25,SpawnRange:20,MinSpawnDelay:15,MaxSpawnDelay:15,MaxNearbyEntities:20,RequiredPlayerRange:32,Tags:["fly0"],SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{id:"minecraft:light_weighted_pressure_plate"},Time:1,DropItem:0b,CancelDrop:1b,HurtEntities:1b,FallHurtMax:20,FallHurtAmount:5f,Tags:["fly0"]}}}]}}}

schedule function neofunction:entity/skill/boss/larusha/tarai2 15t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 30t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 45t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 60t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 75t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 90t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 105t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 120t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 135t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 150t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 165t append
schedule function neofunction:entity/skill/boss/larusha/tarai2 180t append
