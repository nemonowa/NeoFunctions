# 命名：1586_schedule
# 説明：
# >/advancement neofunction:inventory_changed/1586
# =/function neofunction:system/adv/inventory_changed/1586_schedule

tag @s add 1586
execute if entity @s run return run schedule function neofunction:system/adv/inventory_changed/1586_schedule 1t
execute as @a[tag=1586] at @s run function neofunction:system/adv/inventory_changed/1586
tag @a[tag=1586] remove 1586