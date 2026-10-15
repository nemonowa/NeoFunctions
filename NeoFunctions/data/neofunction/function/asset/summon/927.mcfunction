# 命名：赤砂の射手
# 説明：メサの自然湧きの置き換え先（スケルトン枠）。崖の上から旅人を狙う、乾いた骨の射手（砂漠のスケルトン、パーチド）。骨のあいだに星見草が絡まっている。生成は scratchpad の mesa_mob_gen.py
# >/function neofunction:entity/.spawn/mob/.dim/ceresta/mesa
# =/function neofunction:asset/summon/927

summon parched ~ ~ ~ {Silent:1b,CustomName:{"text":"赤砂の射手","color":"#E07A4A","bold":true,"italic":false},Tags:[lv2,rubra_mesa],DeathLootTable:"neofunction:asset/summon/927",equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:flame":1}}}}}
