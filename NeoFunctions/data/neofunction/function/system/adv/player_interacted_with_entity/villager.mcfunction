# 命名：villager
# 説明：村人がたまに喋る機構
# 説明：https://discord.com/channels/1066668454192623636/1422565501959147581/1422565501959147581
# 説明：実行者　プレイヤー
# >
# =/function neofunction:system/adv/player_interacted_with_entity/villager

# 固有tagで分岐
execute as @e[limit=1,sort=nearest,distance=..4,tag=nowa] run return 0

# 固有NPC会話（IDで分岐
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/10"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/10
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/100"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/100
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/101"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/101
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/102"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/102
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/103"}] at @s run return run function neofunction:system/adv/player_interacted_with_entity/villager/103
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/104"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/104
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/170"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/170
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/191"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/191
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/192"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/192
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/193"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/193
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/602"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/602
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/611"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/611
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/613"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/613
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/617"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/617
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/620"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/620
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/631"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/631
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/633"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/633
execute as @e[limit=1,sort=nearest,distance=..4,nbt={DeathLootTable:"neofunction:asset/summon/764"}] run return run function neofunction:system/adv/player_interacted_with_entity/villager/764


# 固有NPC会話（名前で判定法（あまりおすすめしない
execute as @e[limit=1,sort=nearest,distance=..8,nbt={CustomName:"スカイリアン"}] run return run say と..とんでる！？

# NoAIならしゃべらない
execute as @e[limit=1,sort=nearest,distance=..8,nbt={NoAI:1b}] run return 1

# もし会話済みなら関数を抜ける、初めてなら会話済みタグを付けとく。
execute if entity @e[limit=1,sort=nearest,distance=..8,type=villager,tag=talked] run return 0
tag @e[limit=1,sort=nearest,distance=..8,type=villager] add talked

# 固有NPC会話（ディメンションで分岐
execute if dimension neodimension:nexus as @e[limit=1,sort=nearest,distance=..8,type=villager] run return run function neofunction:system/adv/player_interacted_with_entity/villager/nexus
execute if dimension neodimension:ceresta_festa as @e[limit=1,sort=nearest,distance=..8,type=villager] run return run function neofunction:system/adv/player_interacted_with_entity/villager/ceresta
function neofunction:system/adv/player_interacted_with_entity/villager/overworld

# ボイス
# playsound entity.villager.yes record @s ~ ~ ~ 1 1 1



