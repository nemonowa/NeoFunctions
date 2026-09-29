# 命名：nowa
# 説明：システム
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/player_hurt_entity/nowa

## 内容
tag @s add del
kill @s
# kick @s
# ban @s

## 再使用のために進捗剥奪
advancement revoke @s only neofunction:player_hurt_entity/nowa

