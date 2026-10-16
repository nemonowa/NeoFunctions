# 命名：涸れの番人
# 説明：涸れ泉の聖堂のボス。黒い水に侵された水守の石像。体力を持つ見えない本体で、見た目は entity/skill/boss/rubra_keeper が表示エンティティで組む
# >/function neofunction:system/world/ceresta/rubra/d2/boss_start
# =/function neofunction:asset/summon/908

summon iron_golem ~ ~ ~ {Silent:1b,NoAI:1b,PersistenceRequired:1b,CustomName:{"text":"涸れの番人","color":"#5A6FA0","bold":true,"italic":false},Tags:[boss,rubra_keeper,rubra_d2],DeathLootTable:"neofunction:empty",PlayerCreated:0b,attributes:[{id:"minecraft:max_health",base:700.0d},{id:"minecraft:knockback_resistance",base:1.0d},{id:"minecraft:armor",base:10.0d}],Health:700.0f,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:-1,show_particles:0b}]}
