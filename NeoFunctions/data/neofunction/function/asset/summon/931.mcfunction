# 命名：砂漠の薬師
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（ウィッチ枠）。谷の薬草と蜜で怪しい薬を煮る、はぐれの薬師。追い払えば材料を落としていく。生成は scratchpad の mesa_mob_gen.py
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/931

summon witch ~ ~ ~ {Silent:1b,CustomName:{"text":"砂漠の薬師","color":"#9FB8E0","bold":true,"italic":false},Tags:[lv3,rubra_mesa],DeathLootTable:"neofunction:asset/summon/931",attributes:[{id:"minecraft:max_health",base:30.0d}],Health:30.0f}
