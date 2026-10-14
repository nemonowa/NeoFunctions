# 命名：blt_fan
# 説明：【追加：2026-10-13 ルブラ編】狙い撃ちの扇：今の向き（狙った人）を真ん中に、5 方向（10 度ずつ）
# 実行条件：実行位置と向き 舞台の真ん中から狙った人へ
# >/function neofunction:entity/skill/boss/rubra_void/act
# =/function neofunction:entity/skill/boss/rubra_void/blt_fan

# 内容
execute rotated ~-20 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
execute rotated ~-10 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
execute rotated ~ 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
execute rotated ~10 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
execute rotated ~20 0 run function neofunction:entity/skill/boss/rubra_void/blt_spawn
