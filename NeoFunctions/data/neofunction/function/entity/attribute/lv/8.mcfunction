# 命名：lv8
# 説明：
# >/function neofunction:entity/.spawn/tag
# =/function neofunction:entity/attribute/lv/8


# 内容
# tag @s add god

attribute @s minecraft:max_health modifier add neofunction:00000000-0000-0000-0000-000000000001 1000 add_value
attribute @s minecraft:attack_damage modifier add neofunction:00000000-0000-0000-0000-000000000001 500 add_value
attribute @s minecraft:knockback_resistance modifier add neofunction:00000000-0000-0000-0000-000000000001 4.0 add_value
attribute @s minecraft:movement_speed modifier add neofunction:00000000-0000-0000-0000-000000000001 0.8 add_multiplied_base
attribute @s minecraft:follow_range modifier add neofunction:00000000-0000-0000-0000-000000000001 1.4 add_multiplied_base

data merge entity @s {Health:99999f,AbsorptionAmount:1000f}



