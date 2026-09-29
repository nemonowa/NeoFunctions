# 命名：5
# 説明：
# >
# =/function neofunction:asset/skill/257/5


execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/17
execute at @a[tag=257] run playsound minecraft:block.amethyst_block.step record @a ~ ~ ~ 2 2

# 多角形 1
execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1.0],scale:4.0} ^0 ^ ^-4.5 0 0 0 0 1
execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^3.89711 ^ ^-2.25 0 0 0 0 1
execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^3.89711 ^ ^2.25 0 0 0 0 1
execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^0 ^ ^4.5 0 0 0 0 1
execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^-3.89711 ^ ^2.25 0 0 0 0 1
execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run particle minecraft:dust{color:[1.0,1,1],scale:4.0} ^-3.89711 ^ ^-2.25 0 0 0 0 1

#
tag @a remove 257
