# 命名：init
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/.neo
# =/function neofunction:entity/skill/boss/ekiriburiamu/final_benediction/wind/init

say 「反重の加護、空を知るがいい。」
item replace entity @s armor.chest with leather_chestplate[minecraft:dyed_color=5766966,minecraft:enchantments={"minecraft:blast_protection":4}] 1
item replace entity @s weapon.mainhand with carrot_on_a_stick[minecraft:custom_model_data={floats:[1288.0f]}] 1
execute positioned 1029 7 1765 as @a[distance=..32] at @s run playsound entity.wind_charge.wind_burst hostile @s ~ ~ ~ 1 0.7

summon spawner_minecart 1029 18 1765 {SpawnData:{entity:{id:"arrow",damage:10d,NoGravity:1b,Passengers:[{id:"area_effect_cloud",Radius:0.01f,custom_particle:{type:"minecraft:explosion"}}],Tags:["ekiriFinalArrow"],life:6000s,crit:1b}},SpawnCount:20s,MinSpawnDelay:32767s,MaxSpawnDelay:32767s,MaxNearbyEntities:32767s,SpawnRange:24s,PortalCooldown:10,Delay:0s,RequiredPlayerRange:64s}