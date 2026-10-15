# 命名：whip_ray_start
# 説明：鞭の線を本体から狙いの方向へ 20 マス伸ばす（0.8 ずつ 25 回）。#rk_hit temp が 1 なら打つ
# 実行条件：実行位置と向き 本体の足もとから狙いの方へ（水平）
# >/function neofunction:entity/skill/boss/rubra_keeper/whip_tick
# =/function neofunction:entity/skill/boss/rubra_keeper/whip_ray_start

# 内容
scoreboard players set #rk_ray temp 25
function neofunction:entity/skill/boss/rubra_keeper/whip_ray
