# 命名：ult_rain
# 説明：【追加：2026-10-13 ルブラ編】無差別爆撃 1 回ぶん：舞台のどこか 3 か所に、小さな黒星（【変更：2026-10-13】2 → 3 か所、0.25 秒ごと）
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_void/ult_tick
# =/function neofunction:entity/skill/boss/rubra_void/ult_rain

# 内容
execute positioned 921.5 200 3282.5 run summon marker ~ ~ ~ {Tags:["check","rubra_fin","rubra_fin_new"]}
execute positioned 921.5 200 3282.5 run summon marker ~ ~ ~ {Tags:["check","rubra_fin","rubra_fin_new"]}
execute positioned 921.5 200 3282.5 run summon marker ~ ~ ~ {Tags:["check","rubra_fin","rubra_fin_new"]}
spreadplayers 921.5 3282.5 2 28 under 201 false @e[type=marker,tag=rubra_fin_new]
execute as @e[type=marker,tag=rubra_fin_new] at @s positioned ~ ~26 ~ run function neofunction:entity/skill/boss/rubra_void/star_spawn
kill @e[type=marker,tag=rubra_fin_new]
