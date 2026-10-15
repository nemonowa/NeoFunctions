# 命名：影
# 説明：零の揺籃の影。守り石の光の外ではすり抜けて斬れない（tick/dungeon/rubra3 が無敵を切り替える）
# >/function neofunction:system/rubra/d3/shadow
# =/function neofunction:asset/summon/910

summon vex ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CustomName:{"text":"影","color":"#4A4A60","bold":true,"italic":false},Tags:[lv4,rubra_shadow,rubra_d3],DeathLootTable:"neofunction:asset/summon/910",attributes:[{id:"minecraft:max_health",base:10.0d},{id:"minecraft:attack_damage",base:4.0d}],Health:10.0f,Glowing:1b,equipment:{mainhand:{id:"minecraft:air",count:1}}}
