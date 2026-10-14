# 命名：dive
# 説明：【追加：2026-10-14 ルブラ編】今の所から地中へ潜る（真下の y-46 へ。着いたら地響きと次の技）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_worm/charge_tick
# >/function neofunction:entity/skill/boss/rubra_worm/stun_end
# >/function neofunction:entity/skill/boss/rubra_worm/slam_hit
# =/function neofunction:entity/skill/boss/rubra_worm/dive

# 内容
data modify storage neofunction:rubra worm.state set value "down"
data modify storage neofunction:rubra worm.goal set value {x:0.0d,y:-46.0d,z:0.0d,s:0.9d}
data modify storage neofunction:rubra worm.goal.x set from entity @s Pos[0]
data modify storage neofunction:rubra worm.goal.z set from entity @s Pos[2]
