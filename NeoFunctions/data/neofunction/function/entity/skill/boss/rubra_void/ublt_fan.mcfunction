# 命名：ublt_fan
# 説明：【追加：2026-10-14 ルブラ編】黒い槍の扇：今の向きを真ん中に 3 方向（左右 6 度）
# 実行条件：実行位置と向き 撃ち出す所と、狙った人への向き
# >/function neofunction:entity/skill/boss/rubra_void/ult_shot_one
# =/function neofunction:entity/skill/boss/rubra_void/ublt_fan

# 内容
execute rotated ~-6 ~ run function neofunction:entity/skill/boss/rubra_void/ublt_spawn
execute rotated ~ ~ run function neofunction:entity/skill/boss/rubra_void/ublt_spawn
execute rotated ~6 ~ run function neofunction:entity/skill/boss/rubra_void/ublt_spawn
