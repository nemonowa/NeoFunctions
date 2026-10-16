# 命名：build_go
# 説明：星還りの空を建てる準備：チャンクを読み込んで 1.5 秒後に建てる（build_go_2）
# 実行条件：どこでも
# >/function neofunction:entity/skill/boss/rubra_void/start
# =/function neofunction:system/world/ceresta/rubra/fin/arena/build_go

# 内容
execute in neodimension:ceresta_festa run forceload add 866 3226 976 3338
schedule function neofunction:system/world/ceresta/rubra/fin/arena/build_go_2 30t replace
