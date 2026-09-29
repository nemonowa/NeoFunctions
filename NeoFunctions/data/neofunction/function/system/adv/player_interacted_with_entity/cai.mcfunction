# 命名：cai
# 説明：カイの会話処理
# 説明：https://discord.com/channels/1066668454192623636/1241280896833683507
# >
# =/function neofunction:system/adv/player_interacted_with_entity/cai


## 内容
execute as @e[limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：チュートリアル未クリア","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/1/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第２章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/2/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第３章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/3/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第４章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/4/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第５章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/5/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第６章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/6/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第７章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/7/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第８章攻略中","color":"dark_aqua","bold":true}
execute as @e[advancements={neoadvancement:nexus/root/8/0=true},limit=1,sort=nearest,distance=..4,tag=cai] run title @a[distance=..8] actionbar {"text":"NEXUS進行状況：第９章攻略中","color":"dark_aqua","bold":true}



execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/1
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/2
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/3
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/4
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/5
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/6
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/7
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/8
execute as @e[predicate=neofunction:random_chance/20,limit=1,sort=nearest,distance=..4,tag=cai] run return run function neofunction:system/adv/player_interacted_with_entity/cai/9

execute as @e[limit=1,sort=nearest,distance=..4,tag=cai] run function neofunction:system/adv/player_interacted_with_entity/cai/9







