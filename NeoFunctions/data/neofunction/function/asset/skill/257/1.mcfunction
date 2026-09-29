# 命名：1
# 説明：
# >
# =/function neofunction:asset/skill/257/1


execute at @a[tag=257] positioned ~ ~0.5 ~ facing ~ ~ ~ run function neofunction:asset/particle/circle/1m5
execute at @a[tag=257] run playsound minecraft:entity.wither.shoot record @a ~ ~ ~ 0.7 1.2


execute at @a[tag=257] run particle minecraft:dust{color:[1.0,1,1],scale:4.0}