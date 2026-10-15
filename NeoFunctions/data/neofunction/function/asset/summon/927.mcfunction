# 命名：赤砂の射手
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（スケルトン枠）。崖の上から旅人を狙う、乾いた骨の射手。骨のあいだに星見草が絡まっている。生成は scratchpad の mesa_mob_gen.py
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/927

summon skeleton ~ ~ ~ {Silent:1b,CustomName:{"text":"赤砂の射手","color":"#E07A4A","bold":true,"italic":false},Tags:[lv2,rubra_mesa],DeathLootTable:"neofunction:asset/summon/927",equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":14711370}},mainhand:{id:"minecraft:bow",count:1}}}
