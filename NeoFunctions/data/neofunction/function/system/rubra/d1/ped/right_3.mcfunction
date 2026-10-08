# 命名：right_3
# 説明：【追加：2026-10-08 ルブラ編】扉 3（金）を開け、1 秒後に謎が解けた場面（413）へ
# 実行条件：schedule
# >/function neofunction:system/rubra/d1/ped/right_2
# =/function neofunction:system/rubra/d1/ped/right_3

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d1/gate/open3
schedule function neofunction:system/rubra/d1/ped/right_4 20t replace
