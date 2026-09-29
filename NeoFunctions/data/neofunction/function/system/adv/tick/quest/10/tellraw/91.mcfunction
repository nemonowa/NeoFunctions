# 命名：1
# 説明：メインクエスト個別処理
# >advancemnet neofunction:advancements/tick/quest/<NUMBER>
# =/function neofunction:system/adv/tick/quest/10/tellraw/91


# 内容

#スカルリメインの入り口解放
execute in neodimension:ceresta_festa run forceload add 605 1154
execute in neodimension:ceresta_festa run fill 604 48 1154 607 46 1152 air
execute in neodimension:ceresta_festa run forceload remove 605 1154

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run particle minecraft:white_smoke ~ ~ ~ 0.2 1 0.2 0.01 200 force

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run tp @s 920.56 50.00 1050.59 -2513.85 6.56

execute in neodimension:ceresta_festa run execute as @a at @s run execute as @e[nbt={DeathLootTable:"neofunction:asset/summon/101"},sort=nearest,limit=1] at @s run playsound minecraft:entity.chicken.egg record @a ~ ~ ~ 1.5 0.5

#次の事項が実質的にフルクの救助なので、フルクを召喚
execute in neodimension:ceresta_festa run summon minecraft:villager 563.34 46.40 1070.70 {Brain: {memories: {}}, HurtByTimestamp: 0, attributes: [{base: 9999.0d, id: "minecraft:max_absorption"}, {base: 99.0d, id: "minecraft:knockback_resistance"}, {base: 0.0d, id: "minecraft:movement_speed"}], FoodLevel: 0b, Invulnerable: 1b, FallFlying: 0b, ForcedAge: 0, Gossips: [], PortalCooldown: 0, AbsorptionAmount: 0.0f, LastRestock: 0L, fall_distance: 0.0f, active_effects: [{duration: -1, show_icon: 0b, amplifier: 127b, ambient: 0b, id: "minecraft:glowing", show_particles: 0b}], DeathTime: 0s, Xp: 0, LastGossipDecay: 129745555L, PersistenceRequired: 0b, Tags: ["talked", "st", "mob", "ally", "check"], Age: 0, Motion: [0.0d, 0.16477328182606651d, 0.0d], Health: 20.0f, Silent: 1b, LeftHanded: 0b, Air: 300s, OnGround: 0b, Offers: {Recipes: [{maxUses: 2147483647, buyB: {id: "minecraft:warped_fungus_on_a_stick", count: 1, components: {"minecraft:custom_model_data":{floats:[284.0f]},"minecraft:damage":0,"minecraft:custom_name":{"text":"................","color":"#97D121","bold":true,"italic":false}}}, buy: {id: "minecraft:warped_fungus_on_a_stick", count: 1, components: {"minecraft:custom_model_data":{floats:[284.0f]},"minecraft:damage":0,"minecraft:custom_name":{"text":"................","color":"#97D121","bold":true,"italic":false}}}, sell: {id: "minecraft:warped_fungus_on_a_stick", count: 1, components: {"minecraft:custom_model_data":{floats:[284.0f]},"minecraft:damage":0,"minecraft:custom_name":{"text":"驚いた.....","color":"#97D121","bold":true,"italic":false}}}, xp: 1, uses: 0, priceMultiplier: 0.0f, specialPrice: 0, demand: 0, rewardExp: 0b}]}, Rotation: [348.5142f, 29.015293f], RestocksToday: 0, CustomName: {"text":"フルク","obfuscated":false,"italic":false,"underlined":false,"strikethrough":false,"bold":true}, Fire: -1s, CanPickUpLoot: 1b, VillagerData: {profession: "minecraft:weaponsmith", level: 99, type: "minecraft:plains"}, DeathLootTable: "neofunction:asset/summon/611", HurtTime: 0s, Inventory: [],equipment:{mainhand:{id: "minecraft:warped_fungus_on_a_stick", count: 1, components: {"minecraft:custom_model_data":{floats:[284.0f]},"minecraft:damage":0,"minecraft:custom_name":{"text":"驚いた.....","color":"#97D121","bold":true,"italic":false}}},head:{id: "minecraft:player_head", count: 1, components: {"minecraft:profile":{id:[I; 1367720872, 1669286160, -1667610930, -343787348],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmNiNjNiOWQ3NGEwMmFkMjQ4MjMwMGU4YmU2YzA3ZjFlNGU5YzBiYjI1YWFjODJjMmVjNmMxZDNlM2VhMzJmMyJ9fX0="}]}}}},drop_chances:{mainhand:0.0f,offhand:-327.67f,feet:-327.67f,legs:-327.67f,chest:-327.67f,head:-327.67f}}

#フルクを召喚したら強制読み込み解除
execute in neodimension:ceresta_festa run forceload remove 35 66

execute as @a at @s run tellraw @s [{"text":"▶ この先に進むと激しい戦闘を伴うメインストーリーが開始されます。\n十分に装備を整えてから挑戦してください。\n推奨レベル：18+\n\n準備が整ったら、","color":"#FFD4B8","bold":true,"italic":false},{"text":"スカルリメインに挑戦・フルクを救出したのち","color":"#E796FF","underlined":true},{"text":"\nビリーに再度話しかけると進行します。","color":"#FFD4B8"}]


#案内開始フラグを設定
scoreboard players set #temp main_story 16
scoreboard players set #progressing main_story 0