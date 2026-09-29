# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/57


# 内容

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 803.46 42.00 1080.55 -675.42 27.74

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

execute in neodimension:ceresta_festa run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run effect give @s glowing infinite 127 true

tellraw @a [{"text":"新しい目標","color":"gold","bold":true,"italic":false},{"text":"：","bold":true,"italic":false,"underlined":false},{"text":"フルクを探しに海岸へ向かう","color":"white","bold":true,"italic":false,"underlined":false}]
execute as @a at @s run playsound entity.player.levelup record @s ~ ~ ~ 2.0 0.7

#イベント用アマスタ設置

execute in neodimension:ceresta_festa run summon minecraft:armor_stand 797.94 41.50 1085.70 {NoGravity: 1b, Brain: {memories: {}}, HurtByTimestamp: 0, attributes: [{base: 0.699999988079071d, id: "minecraft:movement_speed"}, {base: 9999.0d, id: "minecraft:max_absorption"}, {base: 0.0d, id: "minecraft:armor"}, {base: 0.0d, id: "minecraft:armor_toughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 1b, PortalCooldown: 0, AbsorptionAmount: 0.0f, fall_distance: 0.0f, DisabledSlots: 4144959, DeathTime: 0s, Pose: {LeftLeg: [265.0f, 0.0f, 0.0f], RightLeg: [265.0f, 0.0f, 0.0f]}, Invisible: 0b, Tags: ["mob", "lv1", "safe", "check", "event", "vanilla"], Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Silent: 1b, Air: 300s, OnGround: 1b, Rotation: [176.57326f, 31.18454f], CustomName: "護衛", Fire: 0s, NoBasePlate: 1b, HurtTime: 0s,equipment:{mainhand:{id: "minecraft:iron_sword", count: 1, components: {"minecraft:damage":0}},offhand:{id: "minecraft:shield", count: 1, components: {"minecraft:damage":0}},feet:{id: "minecraft:leather_boots", count: 1, components: {"minecraft:damage":0}},legs:{id: "minecraft:leather_leggings", count: 1, components: {"minecraft:damage":0}},chest:{id: "minecraft:leather_chestplate", count: 1, components: {"minecraft:damage":0}},head:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile":{id:[I; 828922402, -1626127593, -1586408291, 1718285182],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJmNTYwYzZlYmYxMDY2OGMyYzY0OWQ2YjJiNDI5MzVhOGE2NjBmMjlmZWYwNTZjNTE4Mzk3ODQ2ZDdlMTRmIn19fQ=="}]}}}}}

#案内開始フラグを設定
scoreboard players set #temp main_story 12
scoreboard players set #progressing main_story 0