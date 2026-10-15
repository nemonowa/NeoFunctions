# 命名：星喰みのセレン
# 説明：零の揺籃の球の広間のボス。星核の欠片を取り込みすぎて星の力に呑まれかけたセレン。体は傷つかず、まわりを回る 6 つの欠片を砕くか抜くと体力が減る（entity/skill/boss/rubra_cradle）
# >/function neofunction:entity/skill/boss/rubra_cradle/spawn
# =/function neofunction:asset/summon/911

summon evoker ~ ~ ~ {Silent:1b,NoAI:1b,PersistenceRequired:1b,Invulnerable:0b,CustomName:{"text":"星喰みのセレン","color":"#E05A6A","bold":true,"italic":false},Tags:[boss,rubra_eater,rubra_d3],DeathLootTable:"neofunction:empty",NoGravity:1b,attributes:[{id:"minecraft:max_health",base:360.0d},{id:"minecraft:knockback_resistance",base:1.0d}],Health:360.0f,active_effects:[{id:"minecraft:resistance",amplifier:4b,duration:-1,show_particles:0b},{id:"minecraft:glowing",amplifier:0b,duration:-1,show_particles:0b}]}
