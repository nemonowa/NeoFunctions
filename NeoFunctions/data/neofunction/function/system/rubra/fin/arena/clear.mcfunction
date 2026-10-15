# 命名：clear
# 説明：星還りの空を片付ける（チャンクを読み込んで 1.5 秒後に clear_2）
# 実行条件：どこでも
# >/function neofunction:system/adv/tick/quest/40/fin/449
# >/function neofunction:system/rubra/fin/reset_2
# =/function neofunction:system/rubra/fin/arena/clear

# 内容
execute in neodimension:ceresta_festa run forceload add 866 3226 976 3338
schedule function neofunction:system/rubra/fin/arena/clear_2 30t replace
