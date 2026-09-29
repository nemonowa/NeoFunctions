# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute in neodimension:nexus run tp @a[tag=tempcai2] 1280.24 127.00 1284.28 -0.05 -7.31
execute as @e[tag=cai] at @s run tellraw @a[tag=tempcai2] [{"text":"<"},{"selector":"@s"},{"text":"> 「転移区画ではディメンション間の移動を行えます」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1





