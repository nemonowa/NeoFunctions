# 命名：slam_goal
# 説明：のしかかりの目標を (ax, y, az) にする（速さ s）
# 実行条件：引数 ax az（worm.next）y s
# >/function neofunction:entity/skill/boss/rubra_worm/slam_start
# >/function neofunction:entity/skill/boss/rubra_worm/slam_rise
# >/function neofunction:entity/skill/boss/rubra_worm/slam_wait
# =/function neofunction:entity/skill/boss/rubra_worm/slam_goal

# 内容
$data modify storage neofunction:rubra worm.goal set value {x:$(ax).5d,y:$(y)d,z:$(az).5d,s:$(s)d}
