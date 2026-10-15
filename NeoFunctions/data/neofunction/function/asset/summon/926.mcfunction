# 命名：サンドウォーカー
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（ゾンビ枠）。メサの砂の中から起き上がる、坑道で倒れた鉱夫の亡者。紅鉄のかけらを握っていることがある。生成は scratchpad の mesa_mob_gen.py
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/926

summon husk ~ ~ ~ {Silent:1b,CustomName:{"text":"サンドウォーカー","color":"#D8B07A","bold":true,"italic":false},Tags:[lv2,rubra_mesa],DeathLootTable:"neofunction:asset/summon/926",equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":9067056}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":13151872}},mainhand:{id:"minecraft:iron_pickaxe",count:1}}}
