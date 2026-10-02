# 命名：cloud_fade
# 説明：キノコ雲の霧散中。雲の全体から雲・煙・灰の粒を出し続ける（大きさは変えない）
# 実行条件：爆心として（temp の #nk_cur に番号）
# >/function neofunction:asset/enchantment/shuuen/tick
# =/function neofunction:asset/enchantment/shuuen/cloud_fade


# 内容
particle minecraft:cloud ~ ~45 ~ 14 6 14 0.03 60 force
particle minecraft:cloud ~ ~20 ~ 4 15 4 0.03 25 force
particle minecraft:campfire_cosy_smoke ~ ~48 ~ 12 5 12 0.02 15 force
particle minecraft:white_ash ~ ~40 ~ 16 10 16 0 80 force
