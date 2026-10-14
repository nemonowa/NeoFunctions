# 命名：arrow_ray_start
# 説明：【追加：2026-10-09 ルブラ編】矢の線を 0.7 ずつ 40 回（28 マス）伸ばす。#rc_hit temp が 1 なら射抜く
# 実行条件：実行位置と向き セレンの胸から狙いの方へ
# >/function neofunction:entity/skill/boss/rubra_cradle/arrow_tick
# =/function neofunction:entity/skill/boss/rubra_cradle/arrow_ray_start

# 内容
scoreboard players set #rc_ray temp 40
function neofunction:entity/skill/boss/rubra_cradle/arrow_ray
