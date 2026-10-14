# 命名：slam_wait_start
# 説明：【追加：2026-10-14 ルブラ編】のしかかり：高みで止まり、落ちる所に赤い輪の予告（1 秒）
# 実行条件：実行者 本体
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/slam_wait_start

# 内容
data modify storage neofunction:rubra worm.state set value "s_wait"
data modify storage neofunction:rubra worm.t set value 20
