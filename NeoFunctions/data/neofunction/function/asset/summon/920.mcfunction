# 命名：クリスタルスパイダー
# 説明：【追加：2026-10-14 ルブラ編】ルブラの迷宮の共通の敵（パレット）。星核の結晶を背負った蜘蛛。噛まれると毒（洞窟グモ）。動きが速い
# 説明：【変更：2026-10-15】体力・攻撃力・速さなどはレベルのタグ（lv）からシステムが決めるので書かない（ユーザーの指示）。大きさ（scale）だけ残す
# >
# =/function neofunction:asset/summon/920

summon cave_spider ~ ~ ~ {Silent:0b,PersistenceRequired:0b,CustomName:{"text":"クリスタルスパイダー","color":"#E06C9F","bold":true,"italic":false},Tags:[lv3,rubra_dmob,rubra_spider],DeathLootTable:"neofunction:asset/summon/920",attributes:[{id:"minecraft:scale",base:1.2d}]}
