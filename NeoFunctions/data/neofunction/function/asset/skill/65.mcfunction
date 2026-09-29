# 命名：【テラ・ベネディクション】
# 説明：トリガーすると半径6m以内の敵に根っこを植え付けて移動速度をすこし下げる&微継続ダメージ根っこは3秒後に消える
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/65

# 内容：
execute if score @s venedictiontimerflag matches 1 run return run tellraw @s "他の加護を所持しています"
scoreboard players set @s venedictiontimerflag 1
tag @s add playerdirtshield

# 演出：
playsound minecraft:block.rooted_dirt.fall record @a[distance=..8] ~ ~ ~ 1.0 0.6
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

# 消費SP
scoreboard players remove @s SP 40