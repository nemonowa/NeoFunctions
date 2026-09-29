# 命名：1018-1
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/inventory_changed/1018-1



## 内容
#実行者をプレイヤー別に還元する。
execute as @a[tag=wheattemp] at @s run function neofunction:system/adv/inventory_changed/1018-2
#特定したら片づけ
tag @a[tag=wheattemp] remove wheattemp
