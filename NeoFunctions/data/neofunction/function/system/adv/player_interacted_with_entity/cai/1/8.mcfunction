# 命名：3
# 説明：
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/1/8


## 内容
execute as @e[tag=cai] at @s run tellraw @a[distance=..32] [{"text":"<"},{"selector":"@s"},{"text":"> 「続いて私にカーソルを合わせ再度転移メニューを開いてください。」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1





