# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute in neodimension:nexus run tp @a[tag=tempcai2] 1280.07 127.00 1276.71 -179.86 -1.68
execute as @e[tag=cai] at @s run tellraw @a[tag=tempcai2] [{"text":"<"},{"selector":"@s"},{"text":"> 「Terminalでは、様々な追加オプションの設定が可能なほか、まっすぐ進むと私がいる、ターミナルロビーに向うことができます。」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1





