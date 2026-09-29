# 命名：1018-2
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/inventory_changed/1018-2



## 内容

# セレスタ麦のインベントリ1st毎のカウント数をストレージに保存 　1/128 = 0.0078125 1/64 = 0.015625
execute store result storage neofunction:wheatcount value float 0.015625 run clear @s wheat[minecraft:custom_model_data={floats:[1422.0f]}] 0
# マクロ使ってその値を押し付ける
function neofunction:system/adv/inventory_changed/1018-3 with storage neofunction:wheatcount
