# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute as @e[tag=cai] at @s run tellraw @a[tag=tempcai2] [{"text":"<"},{"selector":"@s"},{"text":"> 「機能を紹介します。まずは真上のコンパスにカーソルを合わせてください。」"}]
execute in neodimension:nexus run tp @a[tag=tempcai2] 1280.28 127.00 1276.89 1.62 -40.89
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1





