# 命名：1095
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/tick/cmd/1095



## 内容
tellraw @s [{"text":"🔯セットスペル発動【土の抱擁】","color":"light_purple"}]
effect give @s minecraft:resistance 5 2
execute as @s at @s run playsound block.pointed_dripstone.land record @p ~ ~ ~ 1.0 0.8