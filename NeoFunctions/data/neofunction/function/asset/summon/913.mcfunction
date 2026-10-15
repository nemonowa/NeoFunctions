# 命名：ヴォイド・ゼロ
# 説明：終章のボス。星還りの空に浮かぶ（見えない大きなガスト＝当たり判定、見た目は表示エンティティ）
# 説明：1 体のまま体力のスコアで形態を分ける（1000〜701 ヴォイド・ゼロ、700〜301 ヴォイド・ゼロ、300〜 ヴォイド・ゼロ）。共通のボスバーは 10 区切り
# >/function neofunction:entity/skill/boss/rubra_void/spawn
# >/function neofunction:entity/skill/boss/rubra_void/ctl_tick
# =/function neofunction:asset/summon/913

summon ghast ~ ~ ~ {Silent:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,CustomName:{"text":"ヴォイド・ゼロ","color":"#6A5ACD","bold":true,"italic":false},Tags:[boss,rubra_void,rubra_fin],DeathLootTable:"neofunction:asset/summon/913",attributes:[{id:"minecraft:max_health",base:1000.0d},{id:"minecraft:scale",base:2.5d}],Health:1000.0f,active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
