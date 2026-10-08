# 命名：right_2
# 説明：【追加：2026-10-08 ルブラ編】扉 2（青）を開け、1 秒後に扉 3（金）へ
# 実行条件：schedule
# >/function neofunction:system/rubra/d1/ped/right
# =/function neofunction:system/rubra/d1/ped/right_2

# 内容
execute in neodimension:ceresta_festa run function neofunction:system/rubra/d1/gate/open2
schedule function neofunction:system/rubra/d1/ped/right_3 20t replace
