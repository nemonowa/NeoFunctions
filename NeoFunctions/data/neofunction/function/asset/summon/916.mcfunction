# 命名：サンドグール
# 説明：【追加：2026-10-14 ルブラ編】ルブラの迷宮の共通の敵（パレット）。坑道で死んだ鉱夫が砂になった亡者。近接で、群れで来る（砂の亡者 809 の後継）
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >
# =/function neofunction:asset/summon/916

summon husk ~ ~ ~ {Silent:1b,PersistenceRequired:0b,CustomName:{"text":"サンドグール","color":"#D8C08A","bold":true,"italic":false},Tags:[lv2,rubra_dmob,rubra_ghoul],DeathLootTable:"neofunction:asset/summon/916",equipment:{head:{id:"minecraft:suspicious_sand",count:1},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":13151872}},mainhand:{id:"minecraft:wooden_shovel",count:1}},drop_chances:{head:0.0f,chest:0.0f,mainhand:0.0f}}
