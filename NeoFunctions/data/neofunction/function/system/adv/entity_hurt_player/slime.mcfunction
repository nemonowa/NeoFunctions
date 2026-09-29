# 命名：slime
# 説明：entity_hurt_player
# 説明：スライム全般からの追加処理
# 説明：damage <target> <amount> [<damageType>] [by <entity>] [from <cause>]
# >
# =/function neofunction:system/adv/entity_hurt_player/slime




## 内容
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/639"}] run playsound ambient.underwater.enter record @s ~ ~ ~ 0.1 2.0
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/639"}] run damage @s 4 minecraft:drown
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/639"}] run return run effect give @s minecraft:slowness 3 2

execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/640"}] run playsound ambient.underwater.exit record @s ~ ~ ~ 0.1 0.8
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/640"}] run damage @s 6 minecraft:drown
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/640"}] run return run effect give @s minecraft:slowness 3 3

execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/641"}] run playsound entity.warden.sonic_boom record @s ~ ~ ~ 0.1 0.7
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/641"}] run effect give @s minecraft:levitation 3 200
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/641"}] run damage @s 8 minecraft:lightning_bolt
execute if entity @e[distance=..3,limit=1,nbt={DeathLootTable:"neofunction:asset/summon/641"}] run return run effect give @s minecraft:slowness 3 4
