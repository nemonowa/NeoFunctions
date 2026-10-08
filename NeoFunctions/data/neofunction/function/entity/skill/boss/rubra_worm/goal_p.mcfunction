# 命名：goal_p
# 説明：【追加：2026-10-08 ルブラ編】目標をてっぺん（px, -28, pz）にする
# 実行条件：引数 worm.next
# >/function neofunction:entity/skill/boss/rubra_worm/emerge
# =/function neofunction:entity/skill/boss/rubra_worm/goal_p

# 内容
$data modify storage neofunction:rubra worm.goal set value {x:$(px).5d,y:-28.0d,z:$(pz).5d,s:0.9d}
