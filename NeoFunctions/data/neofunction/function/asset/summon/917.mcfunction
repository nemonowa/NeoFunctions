# 命名：クリムゾンバット
# 説明：【追加：2026-10-14 ルブラ編】ルブラの迷宮の共通の敵（パレット）。紅脈の暗がりに棲む赤い蝙蝠。飛び回って体当たりしてくる（小さなファントム。日に焼けないように燃えない）
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >
# =/function neofunction:asset/summon/917

summon phantom ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CustomName:{"text":"クリムゾンバット","color":"#C0392B","bold":true,"italic":false},Tags:[lv2,rubra_dmob,rubra_bat],DeathLootTable:"neofunction:asset/summon/917",attributes:[{id:"minecraft:scale",base:0.5d}],size:0,active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:-1,show_particles:0b}]}
