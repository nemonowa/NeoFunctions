# 命名：=/function neofunction:asset/summon/738
# 説明：スカルリメインのエリートボス
# 説明：タグ：boss
# >
# =/function neofunction:asset/summon/738

execute in neodimension:ceresta_festa run setblock 398 42 1031 minecraft:air
execute in neodimension:ceresta_festa run setblock 398 43 1031 minecraft:air

execute in neodimension:ceresta_festa run summon wither_skeleton 398 41 1031 {CustomName:[{"text":"|||","color":"dark_blue","bold":true,"obfuscated":true},{"text":" The Pirates Doom《Salazar》 ","color":"dark_red","bold":true,"italic":false,"obfuscated":false},{"text":"|||","color":"dark_blue","bold":true,"italic":false}],attributes:[{id:"minecraft:max_health",base:160},{id:"minecraft:follow_range",base:32},{id:"minecraft:movement_speed",base:0.2}],Tags:[lv3,boss,elitepirate1,elitepirate2,elitetridentthrow,tridentforcus8],DeathLootTable:"neofunction:asset/summon/738",equipment:{mainhand:{id:"minecraft:trident",count:1,components:{"minecraft:custom_name":{"text":"波葬エル・マタドール","color":"dark_blue","bold":true,"italic":false},"minecraft:lore":[{"text":"「サイレント・メアリー号」を操るスペイン海軍の艦長 ","color":"dark_gray","bold":true,"italic":false},{"text":"Dead Man Tell No Tales（死人に口なし） ","color":"dark_gray","bold":true,"italic":false}],"minecraft:enchantments":{"minecraft:riptide":5}}},offhand:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1091866435,-2000597246,-1893483860,1320546635],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTk4MWM0ZjAwNTVhZWE2OGNlOWI4MWMwY2NiMWUzY2NhMjIyYTJkMjA3NzBlMDc0YzQ1ZTg1MGY3NTM4MmFmMiJ9fX0="}]}}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_name":{"text":"サラザールなりきりセット","color":"dark_blue","bold":true,"italic":false},"minecraft:dyed_color":1723542,"minecraft:enchantments":{"minecraft:depth_strider":3},"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:rib"}}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_name":{"text":"サラザールなりきりセット","color":"dark_blue","bold":true,"italic":false},"minecraft:dyed_color":2860505,"minecraft:trim":{material:"minecraft:netherite",pattern:"minecraft:eye"}}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:custom_name":{"text":"サラザールなりきりセット","color":"dark_blue","bold":true,"italic":false},"minecraft:dyed_color":2860505,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:rib"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":{"text":"深海の悪霊の首","color":"dark_blue","bold":true,"italic":false},"minecraft:enchantments":{"minecraft:projectile_protection":10,"minecraft:protection":5,"minecraft:binding_curse":10},"minecraft:attribute_modifiers":[{type:"max_health",id:"neofunction:2c216000-527b-4ef6-8727-e747dd5ba9f6",amount:400,operation:"add_value",slot:"head"}],"minecraft:profile":{id:[I;1191505505,-522892800,-1866621670,284728437],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDVmNmE2Nzc0MmFiZTQ4N2VkNmNmZjVjM2Y4MmIyZmNkZjk3NDVmYjVmMjk5Nzg2ZWM2YjZjNzdlZDI5MjA3MSJ9fX0="}]}}}}}

execute as @e[tag=elitepirate1] at @s run summon item 398 41 1046 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 398 41 1016 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 383 41 1031 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

execute as @e[tag=elitepirate1] at @s run summon item 413 41 1031 {PickupDelay:32767,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Almirante Salazar","color":"dark_red","bold":true,"italic":false}],Item:{id:"minecraft:paper",count:1,components:{"minecraft:custom_data":{summon:739}}}}

effect clear @a[tag=temp232] minecraft:darkness

execute in neodimension:ceresta_festa run tp @a[tag=temp232] 406 42 1031 90 0

tag @a remove temp232
