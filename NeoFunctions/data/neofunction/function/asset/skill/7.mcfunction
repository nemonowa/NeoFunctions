# 命名：7
# 説明：加速
# >
# =/function neofunction:asset/skill/7



# 内容
tag @s add skill7
effect give @s minecraft:speed 1 50
effect give @s minecraft:resistance 1 4
schedule function neofunction:asset/skill/7-1 5t append

particle sonic_boom ~ ~0.5 ~ 0 0 0 1 0 normal
playsound minecraft:entity.warden.sonic_charge master @s ~ ~ ~ 1 2 0.1

# 消費SP
scoreboard players remove @s SP 10