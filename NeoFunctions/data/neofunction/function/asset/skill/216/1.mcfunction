# 命名：1
# 説明：
# >
# =/function neofunction:asset/skill/216/1


execute at @a[tag=216] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/circle/1m5
execute at @a[tag=216] run playsound minecraft:block.amethyst_block.step record @a ~ ~ ~ 2 2

execute at @a[tag=216] run particle minecraft:dust{color:[1.0,1,1],scale:4.0}