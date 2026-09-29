# 命名：water
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/chorus_fruit
# =/function neofunction:system/adv/inventory_changed/water


## 内容（なんか誤検知してる
clear @s[gamemode=!creative] potion[minecraft:potion_contents~{potions:"minecraft:water"}] 1
loot spawn ~ ~ ~ loot neofunction:item/69

# すぐに拾いてぇよ
execute at @s run data merge entity @e[type=minecraft:item,distance=..1,limit=1] {PickupDelay:0}

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:inventory_changed/water