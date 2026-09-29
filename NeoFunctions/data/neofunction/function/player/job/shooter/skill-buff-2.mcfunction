# 命名：skill-buff-2
# 説明：
# >/function neofunction:player/job/shooter/skill-buff
# =/function neofunction:player/job/shooter/skill-buff-2

execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/circle/2m
execute at @a[tag=shooter-buff] run playsound minecraft:block.amethyst_block.step record @a[distance=..16] ~ ~ ~ 2 2