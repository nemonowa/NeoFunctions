# 命名：goal_a
# 説明：目標を次の狙いの真下（ax, -46, az）にする
# 実行条件：引数 worm.next
# >/function neofunction:entity/skill/boss/rubra_worm/plan
# =/function neofunction:entity/skill/boss/rubra_worm/goal_a

# 内容
$data modify storage neofunction:rubra worm.goal set value {x:$(ax).5d,y:-46.0d,z:$(az).5d,s:$(spa)d}
