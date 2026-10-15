# 命名：build_go_2
# 説明：星還りの空を建てて、柱の目印を置き、チャンクの固定を外す
# 実行条件：schedule
# >/function neofunction:system/rubra/fin/arena/build_go
# =/function neofunction:system/rubra/fin/arena/build_go_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/fin/arena/build
execute in neodimension:ceresta_festa run function neofunction:system/rubra/fin/arena/marks
execute in neodimension:ceresta_festa run forceload remove 866 3226 976 3338
