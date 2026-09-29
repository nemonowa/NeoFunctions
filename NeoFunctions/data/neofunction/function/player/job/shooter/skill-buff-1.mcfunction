# 命名：skill-buff-1
# 説明：
# >/function neofunction:player/job/shooter/skill-buff
# =/function neofunction:player/job/shooter/skill-buff-1


execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/circle/1m5
execute at @a[tag=shooter-buff] run playsound minecraft:block.amethyst_block.step record @a[distance=..16] ~ ~ ~ 2 2

execute at @a[tag=shooter-buff] run particle minecraft:dust{color:[1.0,1,1],scale:4.0}