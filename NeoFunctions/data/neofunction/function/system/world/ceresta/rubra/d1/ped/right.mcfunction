# 命名：right
# 説明：鐘の判定が正しかった：扉を赤（すぐ）→青（1 秒後）→金（2 秒後）の順に開け、3 秒後に謎が解けた場面（413）へ
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/world/ceresta/rubra/d1/ped/ring
# =/function neofunction:system/world/ceresta/rubra/d1/ped/right

# 内容
data modify storage neofunction:rubra d1.opening set value 1b
execute in neodimension:ceresta_festa run function neofunction:system/world/ceresta/rubra/d1/gate/open1
schedule function neofunction:system/world/ceresta/rubra/d1/ped/right_2 20t replace
