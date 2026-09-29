# 命名：light
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/light


execute as @s at @e[tag=light,sort=nearest,limit=1] run setblock ^ ^ ^1 minecraft:light[level=8] keep
