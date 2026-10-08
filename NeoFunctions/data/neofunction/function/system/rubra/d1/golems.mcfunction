# 命名：golems
# 説明：【追加：2026-10-08 ルブラ編】赤土の巨人の像の足もとに印（marker、タグ rubra_golem）を置く。星喰い蟲が近くに飛び出すと像が壊れる。座標は dungeon1_points.txt から
# 実行条件：セレスタ次元
# >/function neofunction:system/rubra/d1/setup_2
# =/function neofunction:system/rubra/d1/golems

# 内容
kill @e[type=marker,tag=rubra_golem]
summon marker 831.5 -41 3279.5 {Tags:["rubra_golem","rubra_d1"]}
summon marker 812.5 -41 3290.5 {Tags:["rubra_golem","rubra_d1"]}
summon marker 793.5 -40 3279.5 {Tags:["rubra_golem","rubra_d1"]}
summon marker 793.5 -39 3257.5 {Tags:["rubra_golem","rubra_d1"]}
summon marker 812.5 -39 3246.5 {Tags:["rubra_golem","rubra_d1"]}
summon marker 831.5 -39 3257.5 {Tags:["rubra_golem","rubra_d1"]}
