# 命名：
# 説明：ヴァレリカ
# 実行条件：
# >/neofunction:tick/.neo
# =/function neofunction:entity/skill/boss/valerica/start

# 内容：魔女召喚

summon ocelot ~ ~6 ~ {Invulnerable:0b,PersistenceRequired:0b,Passengers:[{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["downer"],Passengers:[{id:"minecraft:witch",DeathLootTable:"neofunction:asset/summon/777",PersistenceRequired:0b,Tags:["lv3","boss","healtoregen","summonliving","backstep","valerica"],CustomName:[{"text":"呪綴の祭主","color":"dark_blue","bold":true,"italic":false},{"text":"ヴァレリカ","color":"dark_purple"}],attributes:[{id:"minecraft:max_health",base:260},{id:"minecraft:follow_range",base:64},{id:"minecraft:movement_speed",base:0.05}],equipment:{feet:{id:"minecraft:acacia_trapdoor",count:1,components:{"minecraft:enchantments":{"minecraft:projectile_protection":5}}}}}]}],CustomName:[{"text":"呪綴の祭主","color":"dark_blue","bold":true,"italic":false},{"text":"ヴァレリカ","color":"dark_purple"}],active_effects:[{id:"minecraft:resistance",amplifier:4b,duration:-1},{id:"minecraft:slow_falling",amplifier:0b,duration:120}],Tags:[lv3,backstep,valerica,downer,enemy],DeathLootTable:"neofunction:asset/summon/777",equipment:{feet:{id:"minecraft:acacia_trapdoor",count:1,components:{"minecraft:attribute_modifiers":[{type:"movement_speed",id:"neofunction:04730762-43df-4b4b-90eb-b87249407f1b",amount:-0.8,operation:"add_multiplied_base",slot:"feet"}]}}}}

execute positioned 556 -43 1424 run function neofunction:asset/summon/774
execute positioned 543 -43 1412 run function neofunction:asset/summon/774
execute positioned 531 -43 1424 run function neofunction:asset/summon/774
execute positioned 543 -43 1436 run function neofunction:asset/summon/774


fill 543 -43 1424 543 -42 1424 air replace
setblock 543 -44 1424 minecraft:purple_stained_glass replace
fill 546 -43 1413 540 -36 1407 air

tag @e[tag=valerica,tag=boss,limit=1,sort=nearest] add valericaToYellow