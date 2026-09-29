# 命名：sir
# 説明：形態変化
# 説明：ウォルターがHP減ったとき
# >
# =/function neofunction:entity/skill/sir



#
team join dark_purple @s
execute as @s at @s as @a[distance=..64] run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.1 1.3 1
execute as @s at @s run title @a[distance=..64] title [{"text":"꧁","color":"dark_red","bold":true,"italic":false,"obfuscated":true},{"text":" MODE CHANGE ","color":"red","obfuscated":false},{"text":"꧂"}]



#
effect give @s minecraft:levitation 1 5
effect give @s minecraft:slow_falling 3 0

#
execute as @s at @s as @a[distance=..32] run playsound entity.zombie_villager.cure record @s

#
execute as @s at @s run summon spawner_minecart ~ ~5 ~ {PortalCooldown:10,NoGravity:1b,Silent:1b,Glowing:0b,Invulnerable:1b,SpawnCount:5,SpawnRange:1,Delay:0,MinSpawnDelay:72000,MaxSpawnDelay:72000,RequiredPlayerRange:64,Motion:[0.0,2.0,0.0],CustomName:{"text":"即時複製式高次元門","color":"dark_blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},DisplayState:{id:"minecraft:air"},SpawnData:{entity:{id:"minecraft:experience_orb",Age:5990,Passengers:[{id:"minecraft:vex",Silent:1b,CustomNameVisible:1b,Tags:["dawner"],Passengers:[{id:"minecraft:item_frame",ItemDropChance:0f,Facing:1b,ItemRotation:1b,Invisible:1b,Fixed:1b,Tags:["upper"],CustomName:{"text":"四大元素・火","color":"red","bold":true,"italic":false},Item:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_name":{"text":"四大元素・火","color":"red","bold":true,"italic":false},"minecraft:enchantment_glint_override":true}}},{id:"minecraft:item_frame",ItemDropChance:0f,Facing:0b,ItemRotation:1b,Invisible:1b,Fixed:1b,Tags:["upper"],CustomName:{"text":"四大元素・火","color":"red","bold":true,"italic":false},Item:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_name":{"text":"四大元素・火","color":"red","bold":true,"italic":false},"minecraft:enchantment_glint_override":true}}},{id:"minecraft:item_frame",ItemDropChance:0f,Facing:2b,ItemRotation:1b,Invisible:1b,Fixed:1b,Tags:["upper"],CustomName:{"text":"四大元素・火","color":"red","bold":true,"italic":false},Item:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_name":{"text":"四大元素・火","color":"red","bold":true,"italic":false},"minecraft:enchantment_glint_override":true}}},{id:"minecraft:item_frame",ItemDropChance:0f,Facing:3b,ItemRotation:1b,Invisible:1b,Fixed:1b,Tags:["upper"],CustomName:{"text":"四大元素・火","color":"red","bold":true,"italic":false},Item:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_name":{"text":"四大元素・火","color":"red","bold":true,"italic":false},"minecraft:enchantment_glint_override":true}}},{id:"minecraft:item_frame",ItemDropChance:0f,Facing:4b,ItemRotation:1b,Invisible:1b,Fixed:1b,Tags:["upper"],CustomName:{"text":"四大元素・火","color":"red","bold":true,"italic":false},Item:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_name":{"text":"四大元素・火","color":"red","bold":true,"italic":false},"minecraft:enchantment_glint_override":true}}},{id:"minecraft:item_frame",ItemDropChance:0f,Facing:5b,ItemRotation:1b,Invisible:1b,Fixed:1b,Tags:["upper"],CustomName:{"text":"四大元素・火","color":"red","bold":true,"italic":false},Item:{id:"minecraft:red_stained_glass",count:1,components:{"minecraft:custom_name":{"text":"四大元素・火","color":"red","bold":true,"italic":false},"minecraft:enchantment_glint_override":true}}},{id:"minecraft:area_effect_cloud",custom_particle:{type:"minecraft:dust",color:[1.0f,0.349f,0.22f],scale:1.0f},Radius:0.6f,Duration:20,Tags:["upper"],CustomName:{"text":"【根源精霊】プライマリエレメンタル","color":"red","bold":true,"italic":false},potion_contents:{custom_effects:[{id:"minecraft:conduit_power",amplifier:11b,duration:20,show_particles:0b}]}}],CustomName:{"text":"【根源精霊】プライマリエレメンタル","color":"red","bold":true,"italic":false},active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1}],Tags:[lv3,],DeathLootTable:"neofunction:asset/summon/210"}]}}}


# モブのメインハンドのアイテムのIDを変える
data modify entity @s equipment.mainhand.id set value "minecraft:wooden_sword"

item replace entity @s armor.legs with leather_leggings[minecraft:dyed_color=10355480,minecraft:trim={material:"minecraft:netherite",pattern:"minecraft:eye"}] 1
item replace entity @s armor.chest with leather_chestplate[minecraft:dyed_color=10355480,minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1
item replace entity @s armor.feet with leather_boots[minecraft:dyed_color=10355480,minecraft:trim={material:"minecraft:gold",pattern:"minecraft:rib"}] 1

tag @s remove sir