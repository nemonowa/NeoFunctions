# 命名：paper
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:inventory_changed/paper
# =/function neofunction:system/adv/inventory_changed/paper



## 内容
clear @s minecraft:paper[minecraft:custom_name={"text":"SummonScroll"}]

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/paper