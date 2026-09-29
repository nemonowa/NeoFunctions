# 命名：3
# 説明：実行者はtag=cai
# >/function neofunction:system/adv/player_interacted_with_entity/cai/0
# =/function neofunction:system/adv/player_interacted_with_entity/cai/3


## 内容
execute as @e[tag=cai] at @s run tellraw @a[distance=..32] [{"text":"<"},{"selector":"@s"},{"text":"> 「まずはチュートリアルを受講しましょう。転移メニューを開き、\n"},{"text":"⌖ 基礎：初回訓練OR-1（第1章へ）","color":"aqua","bold":true},{"text":"を選択してください」"}]
## ボイス
execute as @e[tag=cai] at @s run playsound minecraft:neo/entity/cai/3 master @a[distance=..32] ~ ~ ~ 1 1 1

tag @a[tag=tempcai0] remove tempcai0




