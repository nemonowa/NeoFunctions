# 命名：砂の亡者
# 説明：【追加：2026-10-08 ルブラ編】紅脈の坑の三の層に出る、坑道で死んだ鉱夫が砂になったもの。星核の欠片の光の近くで弱る
# >/function neofunction:system/adv/tick/dungeon/rubra1/sanddead
# =/function neofunction:asset/summon/809

summon husk ~ ~ ~ {Silent:1b,PersistenceRequired:0b,CustomName:{"text":"砂の亡者","color":"#D8C08A","bold":true,"italic":false},Tags:[lv2,rubra_sanddead],DeathLootTable:"neofunction:asset/summon/809",attributes:[{id:"minecraft:max_health",base:30.0d},{id:"minecraft:attack_damage",base:5.0d},{id:"minecraft:movement_speed",base:0.21d}],Health:30.0f,equipment:{head:{id:"minecraft:suspicious_sand",count:1},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":13151872}}},drop_chances:{head:0.0f,chest:0.0f}}
