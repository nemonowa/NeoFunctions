# 命名：right_4
# 説明：【追加：2026-10-08 ルブラ編】三つの扉が開いた：謎が解けた場面（413）を広間の真ん中で始める
# 実行条件：schedule
# >/function neofunction:system/rubra/d1/ped/right_3
# =/function neofunction:system/rubra/d1/ped/right_4

# 内容
data remove storage neofunction:rubra d1.opening
execute in neodimension:ceresta_festa positioned 832 13 3268 run function neofunction:system/adv/tick/quest/40/d1/413
