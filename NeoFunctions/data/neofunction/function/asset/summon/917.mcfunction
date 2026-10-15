# 命名：クリムゾンバット
# 説明：ルブラの迷宮の共通の敵（パレット）。紅脈の暗がりに棲む赤い蝙蝠。飛び回って体当たりしてくる
# 説明：体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない。大きさ（scale）だけ残す
# >
# =/function neofunction:asset/summon/917

summon phantom ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CustomName:{"text":"クリムゾンバット","color":"#C0392B","bold":true,"italic":false},Tags:[lv2,rubra_dmob,rubra_bat],DeathLootTable:"neofunction:asset/summon/917",attributes:[{id:"minecraft:scale",base:0.5d}],size:0,active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:-1,show_particles:0b}]}
