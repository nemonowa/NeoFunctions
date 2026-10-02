# 命名：pillar_fade
# 説明：光の柱の霧散中。大きさは変えずに、柱の全体から光の粒と灰を出し続ける
# 実行条件：爆心として
# >/function neofunction:asset/enchantment/reiten/tick
# =/function neofunction:asset/enchantment/reiten/pillar_fade


# 内容
particle minecraft:end_rod ~ ~70 ~ 2 70 2 0.05 120 force
particle minecraft:white_ash ~ ~70 ~ 3 70 3 0 150 force
particle minecraft:glow ~ ~40 ~ 2 40 2 0 30 force
