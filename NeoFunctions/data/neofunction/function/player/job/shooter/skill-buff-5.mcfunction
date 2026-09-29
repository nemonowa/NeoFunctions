# 命名：skill-buff-5
# 説明：
# >/function neofunction:player/job/shooter/skill-buff
# =/function neofunction:player/job/shooter/skill-buff-5


execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/1
execute at @a[tag=shooter-buff] run playsound minecraft:block.amethyst_block.step record @a[distance=..16] ~ ~ ~ 2 2


# 多角形 1
execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^0 ^ ^-4.5 0 0 0 0 1
execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^3.89711 ^ ^-2.25 0 0 0 0 1
execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^3.89711 ^ ^2.25 0 0 0 0 1
execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^0 ^ ^4.5 0 0 0 0 1
execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^-3.89711 ^ ^2.25 0 0 0 0 1
execute at @a[tag=shooter-buff] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^-3.89711 ^ ^-2.25 0 0 0 0 1
