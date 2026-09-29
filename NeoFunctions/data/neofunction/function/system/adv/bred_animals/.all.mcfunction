# 命名：.all
# 説明：システム
# 説明：進捗達成時（エンチャ金林檎消費
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/bred_animals/.all

## 内容
tellraw @s[tag=ad_info] [{"text":"neofunction:system/adv/bred_animals/.all"}]
scoreboard players add @s karman 10


## 再使用のために進捗剥奪
advancement revoke @s only neofunction:bred_animals/.all