# 命名：ハンティング・サイト
# 説明：トリガーすると、付近128m以内にいる野生動物を発光表示する。SP15消費。
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/32



# 内容
me 「そろそろ狩るか♠」
effect give @e[team=gray,distance=..128] minecraft:glowing 60 0
playsound minecraft:ambient.underwater.exit record @a[distance=..8] ~ ~ ~ 1 0.1 1
particle minecraft:crit ~ ~1.2 ~ 0.4 0.4 0.4 1 50 force

# 消費SP
scoreboard players remove @s SP 15