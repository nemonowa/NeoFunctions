# 命名：1288
# 説明：システム
# 説明：進捗達成時
# >
# =/function neofunction:system/adv/player_hurt_entity/1288



## 内容
effect give @s minecraft:resistance 10 1 false
effect give @s minecraft:glowing 10 0 true
tag @s add dirtshieldplayer

playsound block.rooted_dirt.step record @a[distance=..16] ~ ~ ~ 0.5 0.5 0.01