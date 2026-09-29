# 命名：なんか砂を積み上げるやつ
# 説明：（説明未記載）
# >/function neofunction:entity/.spawn/obj/item/3_item_to_summon
# =/function neofunction:asset/summon/428

summon firework_rocket ~ ~ ~ {LifeTime:200,Invulnerable:1b,Passengers:[{id:"minecraft:spawner_minecart",NoGravity:1b,SpawnCount:1,SpawnRange:0,Delay:10s,MinSpawnDelay:1s,MaxSpawnDelay:1s,MaxNearbyEntities:16, RequiredPlayerRange: 99s,Tags:["upper"],SpawnData:{entity:{id:"minecraft:falling_block",BlockState:{id:"minecraft:sand"},Time:200,DropItem:0b}}}],FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",colors:[I;16739399],fade_colors:[I;6553583],has_trail:true,has_twinkle:true}]}}},Tags:[ex,],DeathLootTable:"neofunction:asset/summon/428"}