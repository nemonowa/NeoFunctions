# 命名：爆ぜ石
# 説明：【追加：2026-10-15 ルブラ編】メサの自然湧きの置き換え先（クリーパー枠）。赤い岩に化けて近づき、熱を溜めて爆ぜる石の魔物。砕けた体は良い火薬になる。生成は scratchpad の mesa_mob_gen.py
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/928

summon creeper ~ ~ ~ {Silent:1b,CustomName:{"text":"爆ぜ石","color":"#C8743C","bold":true,"italic":false},Tags:[lv2,rubra_mesa],DeathLootTable:"neofunction:asset/summon/928",attributes:[{id:"minecraft:scale",base:0.85d}]}
