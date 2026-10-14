# 命名：goal_b
# 説明：【追加：2026-10-08 ルブラ編】目標を下りる先（bx, -46, bz）にする
# 実行条件：引数 worm.next
# >/function neofunction:entity/skill/boss/rubra_worm/go_down
# =/function neofunction:entity/skill/boss/rubra_worm/goal_b

# 内容
$data modify storage neofunction:rubra worm.goal set value {x:$(bx).5d,y:-46.0d,z:$(bz).5d,s:$(spb)d}
