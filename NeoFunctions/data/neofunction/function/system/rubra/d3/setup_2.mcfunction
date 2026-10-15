# 命名：setup_2
# 説明：第三章の目印を置く（setup_in をセレスタ次元で）。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/rubra/d3/setup
# =/function neofunction:system/rubra/d3/setup_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d3/setup_in
execute in neodimension:ceresta_festa run forceload remove 900 3270 990 3316
