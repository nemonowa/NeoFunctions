# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute as @e[tag=cai] at @s run tellraw @a[distance=..32] [{"text":"<"},{"selector":"@s"},{"text":"> 「次に職業を選択しましょう。転移メニューを開き、\n"},{"text":"⌖ 任務：ブリーフィング（第2章へ）","color":"aqua","bold":true},{"text":"を選択してください」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/300 master @a[distance=..32] ~ ~ ~ 1 1 1

tag @a[tag=tempcai1] remove tempcai1





