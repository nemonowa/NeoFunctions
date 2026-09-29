# 命名：spawner_info
# 説明：（説明未記載）
# >/function admin:tellraw/spawner
# =/function admin:tellraw/spawner_info

tellraw @s {"text":"---------------------§6Spawner Info§f---------------------"}
tellraw @s [{"text":"SpawnCount: ","color":"gold"},{"nbt":"SpawnCount","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s [{"text":"SpawnRange: ","color":"gold"},{"nbt":"SpawnRange","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s [{"text":"Delay: ","color":"gold"},{"nbt":"Delay","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s [{"text":"MinSpawnDelay: ","color":"gold"},{"nbt":"MinSpawnDelay","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s [{"text":"MaxSpawnDelay: ","color":"gold"},{"nbt":"MaxSpawnDelay","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s [{"text":"MaxNearbyEntities: ","color":"gold"},{"nbt":"MaxNearbyEntities","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s [{"text":"RequiredPlayerRange: ","color":"gold"},{"nbt":"RequiredPlayerRange","entity":"@e[type=minecraft:spawner_minecart,distance=..4,limit=1,sort=nearest]","color":"white"}]
tellraw @s {"text":"---------------------------------------------------"}