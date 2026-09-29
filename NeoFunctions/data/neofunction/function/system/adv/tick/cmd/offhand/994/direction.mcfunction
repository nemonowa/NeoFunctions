# 命名: direction
# 説明：
# >/function neofunction:system/adv/tick/cmd/offhand/994
# =/function neofunction:system/adv/tick/cmd/offhand/994/direction


#最寄りのアンカーを向く
execute if entity @e[type=armor_stand,tag=marked,distance=..256,limit=1,sort=nearest] run tellraw @s "最寄のアンカーポイントの方向を捉えた！"
execute unless entity @e[type=armor_stand,tag=marked,distance=..256,limit=1,sort=nearest] run tellraw @s "付近にアンカーポイントは存在しない！"
tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=marked,distance=..256,limit=1,sort=nearest] feet







