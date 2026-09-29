# 命名：01
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/01



## 内容
item modify entity @s weapon.offhand neofunction:cmd/0


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/01