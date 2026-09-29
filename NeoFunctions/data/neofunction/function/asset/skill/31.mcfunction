# 命名：アンチドート
# 説明：トリガーすると、毒・空腹・ウィザー状態を回復する。SP10消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/31



# 内容
me 「解毒...」
effect clear @s minecraft:poison
effect clear @s minecraft:wither
effect clear @s minecraft:hunger
playsound minecraft:item.honey_bottle.drink record @a[distance=..8] ~ ~ ~ 1 2 1
particle minecraft:happy_villager ~ ~1.2 ~ 0.4 0.4 0.4 1 50 force

# 消費SP
scoreboard players remove @s SP 10