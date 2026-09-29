# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute as @e[tag=cai] at @s run tellraw @a[distance=..32] [{"text":"<"},{"selector":"@s"},{"text":"> 「まずは正面にいる私にカーソルを合わせてください。」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1





