# 命名：赤砂の旋風
# 説明：メサの自然湧きの置き換え先（エンダーマン枠）。砂漠薔薇の花びらを巻き上げて吹く、意思を持った小さなつむじ風。生成は scratchpad の mesa_mob_gen.py
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/930

summon breeze ~ ~ ~ {Silent:1b,CustomName:{"text":"赤砂の旋風","color":"#F0A8B8","bold":true,"italic":false},Tags:[lv3,rubra_mesa],DeathLootTable:"neofunction:asset/summon/930",attributes:[{id:"minecraft:scale",base:0.8d}]}
