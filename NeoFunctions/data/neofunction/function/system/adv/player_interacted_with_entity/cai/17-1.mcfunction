# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute in neodimension:nexus run tp @a[tag=tempcai2] 1276.53 127.00 1280.13 89.12 -4.60
execute as @e[tag=cai] at @s run tellraw @a[tag=tempcai2] [{"text":"<"},{"selector":"@s"},{"text":"> 「SkillTreeでは職業の変更が可能です。」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1





