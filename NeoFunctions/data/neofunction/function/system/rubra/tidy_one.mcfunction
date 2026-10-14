# 命名：tidy_one
# 説明：【追加：2026-10-09 ルブラ編】片付けの 1 体：生き物（体力がある）は del で静かに消し、目印・表示・当たり判定・トロッコなどはそのまま消す
# 実行条件：実行者 消すもの
# >/function neofunction:system/rubra/tidy_d1_2
# >/function neofunction:system/rubra/tidy_d2_2
# >/function neofunction:system/rubra/tidy_d3_2
# >/function neofunction:system/rubra/tidy_fin_2
# =/function neofunction:system/rubra/tidy_one

# 内容
execute if data entity @s Health run return run tag @s add del
kill @s
