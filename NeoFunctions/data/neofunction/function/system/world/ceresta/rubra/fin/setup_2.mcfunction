# 命名：setup_2
# 説明：終章の目印を置く（setup_in をセレスタ次元で）。終わったらチャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/world/ceresta/rubra/fin/setup
# =/function neofunction:system/world/ceresta/rubra/fin/setup_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/world/ceresta/rubra/fin/setup_in
execute in neodimension:ceresta_festa run forceload remove 900 3270 945 3315
