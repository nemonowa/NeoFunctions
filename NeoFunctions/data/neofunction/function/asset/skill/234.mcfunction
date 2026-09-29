# 命名：234
# 説明：召鉄像【サモン・アイアンゴーレム】
# >
# =/function neofunction:asset/skill/234

# 内容
# 鉄ゴーレムの使い魔を1体召喚する。PlayerCreated:1bによりプレイヤーに対して中立化され、
# 周囲の敵を殴り飛ばすノックバック攻撃で複数の敵を同時に妨害する（攻撃AIはvanillaそのまま）。


#召喚上限カウント
data modify storage neofunction:tamer OwnerUUID set from entity @s UUID
execute store result score #Calc2 temp run function neofunction:asset/skill/tamer/count with storage neofunction:tamer
execute if score #Calc2 temp matches -1 run return -100

# 【変更：2026-09-12 成長段階タグを新規追加（232と同じ10レベル刻み、lv9まで）。
#   習得Lv30のため実質的にはlv3スタートになる】
execute if score @s LVL matches ..19 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 20..29 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv2","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 30..39 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv3","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 40..49 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv4","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 50..59 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv5","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 60..69 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv6","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 70..79 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv7","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 80..89 run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv8","familiar","ironGolemFamiliar","ownerPending234"]}
execute if score @s LVL matches 90.. run summon minecraft:iron_golem ~ ~ ~ {PortalCooldown:2100,PlayerCreated:1b,Team:"white",DeathLootTable:"empty",Tags:["lv9","familiar","ironGolemFamiliar","ownerPending234"]}
#足装備に飼い主のUUIDを保存
data modify entity @e[tag=ownerPending234,limit=1,sort=nearest] equipment.feet set value {id:"minecraft:iron_ingot",count:1,components:{}}
data modify entity @e[tag=ownerPending234,limit=1,sort=nearest] equipment.feet.components."minecraft:custom_data".Owner set from entity @s UUID

# 【追加：2026-09-12 スニーク召喚（sneak_time 1以上）時はTPしない使い魔にする。
#   スコア・ストレージ・タグを増やさず、レギンス(ArmorItems[1])にフラグを仕込む方式】
execute if score @s sneak_time matches 1.. run data modify entity @e[tag=ownerPending234,limit=1,sort=nearest] equipment.legs set value {id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_data":{NoFollow:1b}}}

tag @e[tag=ownerPending234] remove ownerPending234

# 演出
playsound block.anvil.land record @s ~ ~ ~ 1.0 0.6
particle minecraft:cloud ~ ~1 ~ 0.4 0.6 0.4 0.02 25 force

# SP消費：30SP消費
scoreboard players remove @s SP 30

