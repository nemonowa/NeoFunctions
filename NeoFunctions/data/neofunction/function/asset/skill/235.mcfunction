# 命名：235
# 説明：召猫【サモン・ヒーリングキャット】
# >
# =/function neofunction:asset/skill/235

# 内容
# 懐いた猫の使い魔を1体召喚する。猫に乗せたスポナーマインカートが1秒おきに
# 周囲2mへ回復スプラッシュポーションを自動生成し、着弾範囲を継続的に回復させる。
# Tame:1b + Ownerで、vanillaの追従・防衛AIをそのまま利用する（232の狼と同じ手法）。
# 召喚から15秒(300tick)で自動消滅する

#召喚上限カウント
data modify storage neofunction:tamer OwnerUUID set from entity @s UUID
execute store result score #Calc2 temp run function neofunction:asset/skill/tamer/count with storage neofunction:tamer
execute if score #Calc2 temp matches -1 run return -100

# 【変更：2026-09-12 成長段階タグを新規追加（232と同じ10レベル刻み、lv9まで）。
#   習得Lv15のため実質的にはlv1(無印)スタートになる】
execute if score @s LVL matches ..19 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:0b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 20..29 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv2","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:0b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
# 【追加：2026-09-12 Lv30以上は即時回復ポーションのamplifierを+1する】
execute if score @s LVL matches 30..39 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv3","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 40..49 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv4","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 50..59 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv5","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 60..69 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv6","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 70..79 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv7","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 80..89 run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv8","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}
execute if score @s LVL matches 90.. run summon cat ~ ~ ~ {Invulnerable:1b,PortalCooldown:300,DeathLootTable:"empty",Team:"white",Tags:["lv9","familiar","healingCatFamiliar","ownerPending235"],Passengers:[{id:"minecraft:spawner_minecart",CustomDisplayTile:1b,SpawnCount:1,SpawnRange:2,Delay:1,MinSpawnDelay:20,MaxSpawnDelay:20,Tags:["upper"],DisplayState:{id:"minecraft:cherry_leaves"},SpawnPotentials:[{weight:1,data:{entity:{id:"minecraft:allay"}}},{weight:1,data:{entity:{id:"minecraft:potion",Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:16753123,custom_effects:[{id:"minecraft:instant_health",amplifier:1b,duration:1}]}}}}}}]}],CustomName:{"text":"ぬこぬこぬこぬこぬこ","color":"light_purple","bold":true,"italic":false}}

data modify entity @e[tag=ownerPending235,limit=1,sort=nearest] Owner set from entity @s UUID

# 【追加：2026-09-12 スニーク召喚（sneak_time 1以上）時はTPしない使い魔にする。
#   スコア・ストレージ・タグを増やさず、レギンス(ArmorItems[1])にフラグを仕込む方式】
execute if score @s sneak_time matches 1.. run data modify entity @e[tag=ownerPending235,limit=1,sort=nearest] equipment.legs set value {id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_data":{NoFollow:1b}}}

tag @e[tag=ownerPending235] remove ownerPending235

# 演出
playsound entity.cat.purr record @s ~ ~ ~ 1.0 1.2
particle minecraft:heart ~ ~1 ~ 0.3 0.5 0.3 0.05 15 force

# SP消費：20SP消費
scoreboard players remove @s SP 40
