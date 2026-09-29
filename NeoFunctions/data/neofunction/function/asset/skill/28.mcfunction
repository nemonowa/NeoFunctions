# 命名：やってられるか！
# 説明：トリガーすると、嫌なことを放り出し自然に帰れる（満腹度を3ゲージ消費して♡×6回復する。）
# 説明：https://docs.google.com/spreadsheets/d/1oRn_1tbEpzJEsyvsKct2pbeRSbK9n8WjXLdGHn6SC50/edit?gid=372993580#gid=372993580&range=A1
# >
# =/function neofunction:asset/skill/28



# 内容
execute as @s[scores={food=..10}] run return run me 「腹が減ってるので戦はしない。」
playsound minecraft:entity.villager.no record @a[distance=..8] ~ ~ ~ 1 0.7 1

me 「やってられるか！」
effect give @s minecraft:hunger 2 127 false
scoreboard players set @s heal 12
playsound minecraft:entity.pig.death record @a[distance=..8] ~ ~ ~ 2 0.01 1
particle minecraft:angry_villager ~ ~1 ~ 0.2 0.2 0.2 0.1 10 force