# 命名：ソウルイーター
# 説明：紅脈の坑の大空洞「星の畑」のボス。体力を持つ見えない本体（頭）。体の節は表示エンティティで、entity/skill/boss/rubra_worm が動かす
# 説明：DeathLootTable は空。倒したときの演出と星の血晶は rubra_worm/dying で出す
# >/function neofunction:system/adv/tick/quest/40/d1/boss_start
# =/function neofunction:asset/summon/901

summon ravager ~ ~ ~ {Silent:1b,NoAI:1b,PersistenceRequired:1b,CustomName:{"text":"ソウルイーター","color":"#D7263D","bold":true,"italic":false},Tags:[boss,rubra_worm,rubra_d1],DeathLootTable:"neofunction:empty",attributes:[{id:"minecraft:max_health",base:600.0d},{id:"minecraft:knockback_resistance",base:1.0d},{id:"minecraft:armor",base:6.0d}],Health:600.0f,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
