# 命名：1311
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1311



## 内容
title @s actionbar [{"text":"スペルアイテム🔯発動【岩鎧の加護】","color":"light_purple"}]
tag @s add dirtshieldplayer

effect give @s minecraft:resistance 15 2 false
effect give @s minecraft:glowing 15 0 true

execute as @s[tag=dirtshield] at @s run playsound block.rooted_dirt.step master @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01