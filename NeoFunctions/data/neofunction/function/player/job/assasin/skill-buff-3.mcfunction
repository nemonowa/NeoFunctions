# 命名：skill-buff-3
# 説明：
# >/function neofunction:player/job/assasin/skill-buff
# =/function neofunction:player/job/assasin/skill-buff-3


execute at @a[tag=assasin-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/circle/2m5
execute at @a[tag=assasin-buff] run playsound minecraft:block.amethyst_block.step record @a[distance=..16] ~ ~ ~ 2 2