# 命名：scatter
# 説明：【追加：2026-10-09 ルブラ編】舞台の上に、目印を 6 個ばらまく（真ん中から 27 マスの中、舞台の床の上）
# 実行条件：実行位置 舞台の真ん中
# >/function neofunction:entity/skill/boss/rubra_void/meteor_start

# =/function neofunction:entity/skill/boss/rubra_void/scatter

# 内容
summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark","rubra_fin_new"]}
summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark","rubra_fin_new"]}
summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark","rubra_fin_new"]}
summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark","rubra_fin_new"]}
summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark","rubra_fin_new"]}
summon marker ~ ~ ~ {Tags:["rubra_fin","rubra_fin_mark","rubra_fin_new"]}
spreadplayers ~ ~ 3 27 under 201 false @e[type=marker,tag=rubra_fin_new]
tag @e[type=marker,tag=rubra_fin_new] remove rubra_fin_new
