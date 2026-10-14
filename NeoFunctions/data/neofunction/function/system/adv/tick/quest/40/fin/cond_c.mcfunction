# 命名：cond_c
# 説明：【追加：2026-10-09 ルブラ編】結末 C の隠れた条件を調べる（#rf_c temp が 1 なら C）：近くに手記 7 冊すべて（タグ rubra_j1〜4・rubra_j2・rubra_j567）を集めた人がいる ＋ 手記を広場で明かした ＋ セレンを守り石だけで救った ＋ 星の信頼が 1 以上
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/fin/choice_final
# =/function neofunction:system/adv/tick/quest/40/fin/cond_c

# 内容
scoreboard players set #rf_c temp 0
scoreboard players set #rf_s temp 0
execute store result score #rf_s temp run data get storage neofunction:rubra trust.star
execute if score #rf_s temp matches 1.. if entity @a[distance=..96,tag=rubra_j1,tag=rubra_j2,tag=rubra_j3,tag=rubra_j4,tag=rubra_j567] if data storage neofunction:rubra choice{reveal:"reveal",selen_way:"stone"} run scoreboard players set #rf_c temp 1
