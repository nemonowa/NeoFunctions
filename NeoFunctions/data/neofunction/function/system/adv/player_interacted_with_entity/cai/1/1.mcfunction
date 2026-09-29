# 命名：0
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/1/1


## 内容
execute as @e[tag=cai] at @s run tellraw @a[distance=..32] [{"text":"<"},{"selector":"@s"},{"text":"> 「ようこそ「新世界」へ」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/0-1 master @a[distance=..32] ~ ~ ~ 1 1 1



