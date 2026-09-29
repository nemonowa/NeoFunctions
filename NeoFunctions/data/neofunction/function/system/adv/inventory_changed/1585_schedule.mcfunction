# 命名：1585_schedule
# 説明：
# >/advancement neofunction:inventory_changed/1585
# =/function neofunction:system/adv/inventory_changed/1585_schedule

tag @s add 1585
execute if entity @s run return run schedule function neofunction:system/adv/inventory_changed/1585_schedule 1t
execute as @a[tag=1585] at @s run function neofunction:system/adv/inventory_changed/1585
tag @a[tag=1585] remove 1585