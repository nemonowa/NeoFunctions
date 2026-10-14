# 命名：elite_tick
# 説明：【追加：2026-10-14 ルブラ編】エリートチャレンジ（毎 tick）：取り巻きの黒い滴りを強くする（まだのものに elite_buff）。特殊行動：6 秒ごとに、本体から一人ひとりへ黒い槍（ult_shot）
# 説明：ほかのエリートの変更：ダメージ 1.5 倍（各技の damage の行）、技の間隔 2.5 秒 → 1.7 秒（tick）、必殺技の自機狙いが増える（ult_tick）
# 実行条件：実行者・実行位置 本体（fin.elite が 1b）
# >/function neofunction:entity/skill/boss/rubra_void/tick
# =/function neofunction:entity/skill/boss/rubra_void/elite_tick

# 内容
execute as @e[type=zombie,tag=rubra_fin_drip,tag=!rubra_ebuf,distance=..96] run function neofunction:entity/skill/boss/rubra_void/elite_buff
execute unless data storage neofunction:rubra fin{state:"fight"} run return 0
execute store result score #rv_es temp run data get storage neofunction:rubra fin.es
scoreboard players add #rv_es temp 1
execute if score #rv_es temp matches 120.. run scoreboard players set #rv_es temp 0
execute store result storage neofunction:rubra fin.es int 1 run scoreboard players get #rv_es temp
execute if score #rv_es temp matches 0 run function neofunction:entity/skill/boss/rubra_void/ult_shot
