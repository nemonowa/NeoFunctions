# 命名：skill-buff-4
# 説明：
# >/function neofunction:player/job/shooter/skill-buff
# =/function neofunction:player/job/shooter/skill-buff-4


execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/circle/3m
execute at @a[tag=shooter-buff] run playsound minecraft:block.amethyst_block.step record @a[distance=..16] ~ ~ ~ 2 2