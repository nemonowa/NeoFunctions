# 命名：【エキリブリアム・ベネディクション】
# 説明：
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/67

# 内容：
execute if score @s venedictiontimerflag matches 1 run return run tellraw @s "他の加護を所持しています"
scoreboard players set @s venedictiontimerflag 1
tag @s add playerbomb
tag @s add playerwater
tag @s add playerlev
tag @s add playerdirtshield

# 演出：
playsound minecraft:block.beacon.activate record @a[distance=..8] ~ ~ ~ 2 0.8
playsound minecraft:block.amethyst_block.resonate record @a[distance=..8] ~ ~ ~ 2 0.5
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.1 100 force

# 消費SP
scoreboard players remove @s SP 150