# 命名：1
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/1

## 内容（なんか誤検知してる
#give @s compass[minecraft:custom_model_data={floats:[1.0f]}] 1
#playsound minecraft:ui.button.click master @s ~ ~ ~ 1 0.9 1




## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/1