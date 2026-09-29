# 命名：pirate1
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/pirate1

#サウンド
playsound entity.wither.death record @a[distance=..32] ~ ~ ~ 1.0 0.9
execute as @s[nbt=!{active_effects:[{id:"minecraft:luck",amplifier:40b}]}] at @s run playsound minecraft:neo/peritune/valiant record @a[distance=..32] ~ ~ ~ 2.0 1.0 1.0
effect give @s minecraft:luck 180 40 true

#ボスの見た目変更
item replace entity @e[limit=1,tag=pirate1] armor.legs with leather_leggings[minecraft:dyed_color=8722076,minecraft:trim={material:"minecraft:netherite",pattern:"minecraft:eye"}] 1
item replace entity @e[limit=1,tag=pirate1] armor.chest with leather_chestplate[minecraft:dyed_color=8722076,minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1
item replace entity @e[limit=1,tag=pirate1] armor.feet with leather_boots[minecraft:dyed_color=8722076,minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1

#行動の中身
##execute as @e[tag=pirate1] at @s run summon drowned 383 41 1031 {OnGround:1b,LeftHanded:1b,Team:"boss",IsBaby:0b,CanBreakDoors:0b,CustomName:{"text":"Pirates of the Ceresta","color":"aqua","bold":true,"italic":false},equipment:{mainhand:{id:"minecraft:trident",count:1,components:{"minecraft:damage":0}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":2860505,"minecraft:damage":0,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:rib"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I; -805324546, 169364057, -1784506179, 810663969],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTExY2ExOTk3ODM1NDk5ZmMzZmI3MzYzNjRhNjNlNGJjZjNjZmQ5N2E0ZmJlODAwYzdjMGViOWU2NGI2MzNkMyJ9fX0="}]}}}},drop_chances:{feet:NaNF,legs:NaNF,chest:NaNF,head:NaNF}}

execute as @e[tag=pirate1] at @s run summon drowned 398 41 1016 {OnGround:1b,LeftHanded:1b,Team:"boss",IsBaby:0b,CanBreakDoors:0b,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Salazar","color":"dark_blue","bold":true,"italic":false}],active_effects:[{id:"minecraft:glowing",amplifier:0b,duration:600,show_particles:0b}],Tags:[lv2,],DeathLootTable:"neofunction:asset/summon/605",equipment:{mainhand:{id:"minecraft:trident",count:1,components:{"minecraft:damage":0}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":2860505,"minecraft:damage":0,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:rib"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I; -805324546, 169364057, -1784506179, 810663969],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTExY2ExOTk3ODM1NDk5ZmMzZmI3MzYzNjRhNjNlNGJjZjNjZmQ5N2E0ZmJlODAwYzdjMGViOWU2NGI2MzNkMyJ9fX0="}]}}}}}

execute as @e[tag=pirate1] at @s run summon drowned 413 41 1031 {OnGround:1b,LeftHanded:1b,Team:"boss",IsBaby:0b,CanBreakDoors:0b,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Salazar","color":"dark_blue","bold":true,"italic":false}],active_effects:[{id:"minecraft:glowing",amplifier:0b,duration:600,show_particles:0b}],Tags:[lv2,],DeathLootTable:"neofunction:asset/summon/605",equipment:{mainhand:{id:"minecraft:trident",count:1,components:{"minecraft:damage":0}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":2860505,"minecraft:damage":0,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:rib"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I; -805324546, 169364057, -1784506179, 810663969],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTExY2ExOTk3ODM1NDk5ZmMzZmI3MzYzNjRhNjNlNGJjZjNjZmQ5N2E0ZmJlODAwYzdjMGViOWU2NGI2MzNkMyJ9fX0="}]}}}}}

execute as @e[tag=pirate1] at @s run summon drowned 398 41 1046 {OnGround:1b,LeftHanded:1b,Team:"boss",IsBaby:0b,CanBreakDoors:0b,CustomName:[{"text":"Pirates of the ","color":"aqua","bold":true,"italic":false},{"text":"Salazar","color":"dark_blue","bold":true,"italic":false}],active_effects:[{id:"minecraft:glowing",amplifier:0b,duration:600,show_particles:0b}],Tags:[lv2,],DeathLootTable:"neofunction:asset/summon/605",equipment:{mainhand:{id:"minecraft:trident",count:1,components:{"minecraft:damage":0}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":2860505,"minecraft:damage":0,"minecraft:trim":{material:"minecraft:lapis",pattern:"minecraft:rib"}}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I; -805324546, 169364057, -1784506179, 810663969],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTExY2ExOTk3ODM1NDk5ZmMzZmI3MzYzNjRhNjNlNGJjZjNjZmQ5N2E0ZmJlODAwYzdjMGViOWU2NGI2MzNkMyJ9fX0="}]}}}}}

tag @s add tridentforcus4

tag @s remove pirate1