# 命名：fix_spawner
# 説明：（説明未記載）
# >
# =/function admin:fix_spawner
execute unless entity @e[type=spawner_minecart,nbt={SpawnData:{entity:{Item:{NoGravity:1b}}}}] run return run tellraw @s {"text": "対象となるスポナーがありません","color": "dark_red","bold": true}
tag @e[type=spawner_minecart,nbt={SpawnData:{entity:{Item:{NoGravity:1b}}}}] add FixSpawner
execute as @e[tag=FixSpawner] run data modify entity @s SpawnData.entity.NoGravity set value 1b
execute as @e[tag=FixSpawner] run data modify entity @s SpawnData.entity.PickupDelay set value -1s
execute as @e[tag=FixSpawner] run data modify entity @s SpawnData.entity.Age set value 5900
execute as @e[tag=FixSpawner] run data modify entity @s SpawnData.entity.Invulnerable set value 1b
execute as @e[tag=FixSpawner] run data modify entity @s SpawnPotentials[0].data.entity.NoGravity set value 1b
execute as @e[tag=FixSpawner] run data modify entity @s SpawnPotentials[0].data.entity.PickupDelay set value -1s
execute as @e[tag=FixSpawner] run data modify entity @s SpawnPotentials[0].data.entity.Age set value 5900
execute as @e[tag=FixSpawner] run data modify entity @s SpawnPotentials[0].data.entity.Invulnerable set value 1b

execute as @e[tag=FixSpawner] run data remove entity @s SpawnData.entity.Item.NoGravity
execute as @e[tag=FixSpawner] run data remove entity @s SpawnData.entity.Item.PickupDelay
execute as @e[tag=FixSpawner] run data remove entity @s SpawnData.entity.Item.Age
execute as @e[tag=FixSpawner] run data remove entity @s SpawnData.entity.Item.Invulnerable
execute as @e[tag=FixSpawner] run data remove entity @s SpawnPotentials[0].data.entity.Item.NoGravity
execute as @e[tag=FixSpawner] run data remove entity @s SpawnPotentials[0].data.entity.Item.PickupDelay
execute as @e[tag=FixSpawner] run data remove entity @s SpawnPotentials[0].data.entity.Item.Age
execute as @e[tag=FixSpawner] run data remove entity @s SpawnPotentials[0].data.entity.Item.Invulnerable

execute store result score #Calc1 temp if entity @e[tag=FixSpawner]

tag @e[tag=FixSpawner] remove FixSpawner

tellraw @s {"translate": "%1$s個のスポナーを修正しました！","with": [{"score": {"name": "#Calc1","objective": "temp"}}]}