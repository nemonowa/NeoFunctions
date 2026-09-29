# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/1/21


## 内容
execute as @e[tag=cai] at @s run tellraw @a[tag=tempcai2] [{"text":"<"},{"selector":"@s"},{"text":"> 「この内容について再度受講したい場合はTerminalにいる私からNexusの区画紹介についてを選択してください」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1

advancement grant @a[tag=tempcai2] only neoadvancement:nexus/root/2/11
execute in neodimension:nexus run tp @a[tag=tempcai2] 1279.96 128.00 1191.77 -180.80 6.04
tag @a[tag=tempcai2] remove tempcai2



