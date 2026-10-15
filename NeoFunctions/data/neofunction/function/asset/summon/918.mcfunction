# 命名：マイナーレイス
# 説明：【追加：2026-10-14 ルブラ編】ルブラの迷宮の共通の敵（パレット）。落盤で死んだ鉱夫の亡霊。離れた所から弓で射てくる（スケルトン。日に焼けないように燃えない）
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >
# =/function neofunction:asset/summon/918

summon skeleton ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CustomName:{"text":"マイナーレイス","color":"#9AA7B0","bold":true,"italic":false},Tags:[lv3,rubra_dmob,rubra_wraith],DeathLootTable:"neofunction:asset/summon/918",equipment:{head:{id:"minecraft:leather_helmet",count:1,components:{"minecraft:dyed_color":4271944}},mainhand:{id:"minecraft:bow",count:1}},drop_chances:{head:0.0f,mainhand:0.0f},active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:-1,show_particles:0b}]}
