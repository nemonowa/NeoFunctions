# 命名：371
# 説明：進捗達成時
# >/function neofunction:consume_item/.all
# =/function neofunction:system/adv/fishing_rod_hooked/371


## 内容
execute as @e[type=fishing_bobber,distance=..64] at @s run damage @e[distance=..4,type=!fishing_bobber,tag=enemy,sort=nearest,limit=1] 5 neofunction:aqua