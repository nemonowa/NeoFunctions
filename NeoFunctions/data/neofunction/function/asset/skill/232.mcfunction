# 命名：232
# 説明：召狼【サモン・ウルフ】
# >(呼び出し元が見つかりませんでした)
# =/function neofunction:asset/skill/232

# 内容
# 狼の使い魔を1体召喚し、即座に懐かせて自身の使い魔として追従・戦闘させる
# （Ownerに召喚者UUIDを設定することでvanillaの追従・防衛AIをそのまま利用する）

#召喚上限カウント
data modify storage neofunction:tamer OwnerUUID set from entity @s UUID
execute store result score #Calc2 temp run function neofunction:asset/skill/tamer/count with storage neofunction:tamer
execute if score #Calc2 temp matches -1 run return -100

# 【変更：2026-09-12 成長段階タグをlv9まで拡張（10レベル刻み）。30..は30..39へ変更し40..90..を追加】
execute if score @s LVL matches ..19 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 20..29 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv2","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 30..39 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv3","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 40..49 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv4","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 50..59 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv5","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 60..69 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv6","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 70..79 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv7","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 80..89 run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv8","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
execute if score @s LVL matches 90.. run summon minecraft:wolf ~ ~ ~ {PortalCooldown:2100,Team:"white",CollarColor:4,DeathLootTable:"empty",Tags:["lv9","familiar","wolfFamiliar","ownerPending232"],attributes:[{id:"minecraft:max_health",base:20},{id:"minecraft:attack_damage",base:6}]}
data modify entity @e[tag=ownerPending232,limit=1,sort=nearest] Owner set from entity @s UUID

# 【追加：2026-09-12 スニーク召喚（sneak_time 1以上）時はTPしない使い魔にする。
#   スコア・ストレージ・タグを増やさず、レギンス(ArmorItems[1])にフラグを仕込む方式】
execute if score @s sneak_time matches 1.. run data modify entity @e[tag=ownerPending232,limit=1,sort=nearest] equipment.legs set value {id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_data":{NoFollow:1b}}}

tag @e[tag=ownerPending232] remove ownerPending232

# 演出
playsound entity.wolf.growl record @s ~ ~ ~ 1.0 1.0
particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0.02 20 force

# SP消費：20SP消費
scoreboard players remove @s SP 20
