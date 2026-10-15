# 命名：黒い滴り（終章）
# 説明：虚の海の黒い水が人の形になったもの（ゾンビ。夜でも昼でも襲ってくる）。歩いた跡に黒い水（黒いカーペット）を垂らす（rubra_void/ink_*）
# >/function neofunction:entity/skill/boss/rubra_void/drip
# >/function neofunction:entity/skill/boss/rubra_void/child_wave
# =/function neofunction:asset/summon/915

summon zombie ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CanBreakDoors:0b,IsBaby:0b,CustomName:{"text":"黒い滴り","color":"#3A3F55","bold":true,"italic":false},Tags:[lv3,rubra_drip,rubra_fin_drip,rubra_fin],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:30.0d},{id:"minecraft:attack_damage",base:6.0d},{id:"minecraft:movement_speed",base:0.27d},{id:"minecraft:follow_range",base:48.0d}],Health:30.0f,equipment:{head:{id:"minecraft:black_stained_glass",count:1},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":1315860}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":1315860}},feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":1315860}}},drop_chances:{head:0.0f,chest:0.0f,legs:0.0f,feet:0.0f}}
