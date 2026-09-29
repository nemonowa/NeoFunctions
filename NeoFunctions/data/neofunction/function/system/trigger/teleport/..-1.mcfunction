# 命名：..-1
# 説明：
# >
# =/function neofunction:system/trigger/teleport/..-1
 # トリガー
# >/trigger teleport
# =neofunction:system/trigger/teleport/1
# @a[scores={teleport=1..}]


# 内容
execute as @s[scores={teleport=-1}] run tp @s 0-0-0-0-1
execute as @s[scores={teleport=-2}] run function neofunction:system/pos/spawn_location
execute as @s[scores={teleport=-3}] run function neofunction:system/pos/last_death_location
execute as @s[scores={teleport=-4}] run function neofunction:system/pos/.macro with storage pos:prev
execute as @s[scores={teleport=-5}] run execute in neodimension:nexus run tp @s 1057.23 4 1057.17 134.54 0

# not cai
execute as @s[scores={teleport=-6}] run tp @s @e[type=minecraft:armor_stand,sort=nearest,limit=1,distance=1..8]
execute as @s[scores={teleport=-7}] run function neofunction:system/pos/.macro with storage pos:prev



# tp @s @a[limit=1,distance=1..,sort=nearest]
# tp @s @a[limit=1,distance=1..,sort=furthest]
