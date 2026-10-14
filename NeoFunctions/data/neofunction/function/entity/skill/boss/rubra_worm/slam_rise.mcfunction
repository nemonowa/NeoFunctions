# 命名：slam_rise
# 説明：【追加：2026-10-14 ルブラ編】のしかかり：床を割って真上へ高く跳ぶ（y-16 まで）
# 実行条件：実行者・実行位置 本体（狙いの真下）
# >/function neofunction:entity/skill/boss/rubra_worm/arrive
# =/function neofunction:entity/skill/boss/rubra_worm/slam_rise

# 内容
data modify storage neofunction:rubra worm.state set value "s_up"
data modify storage neofunction:rubra worm.next.y set value "-16.0"
data modify storage neofunction:rubra worm.next.s set value "1.4"
function neofunction:entity/skill/boss/rubra_worm/slam_goal with storage neofunction:rubra worm.next
playsound minecraft:entity.ravager.roar hostile @a[distance=..64] ~ -38 ~ 2.5 0.4
particle minecraft:block{block_state:"minecraft:deepslate"} ~ -40 ~ 1.5 0.5 1.5 0 60 normal
