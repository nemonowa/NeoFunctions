# 命名：赤砂の旋風
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（エンダーマン枠）。砂漠薔薇の花びらを巻き上げて吹く、意思を持った小さなつむじ風。生成は scratchpad の mesa_mob_gen.py
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/930

summon breeze ~ ~ ~ {Silent:1b,CustomName:{"text":"赤砂の旋風","color":"#F0A8B8","bold":true,"italic":false},Tags:[lv3,rubra_mesa],DeathLootTable:"neofunction:asset/summon/930"}
