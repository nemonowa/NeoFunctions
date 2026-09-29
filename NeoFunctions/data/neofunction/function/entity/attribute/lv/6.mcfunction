# 命名：6
# 説明：lv6
# >/function neofunction:entity/.spawn/tag
# =/function neofunction:entity/attribute/lv/6


# 内容
# tag @s add boss
attribute @s minecraft:max_health modifier add neofunction:00000000-0000-0000-0000-000000000001 400 add_value
attribute @s minecraft:attack_damage modifier add neofunction:00000000-0000-0000-0000-000000000001 100 add_value
attribute @s minecraft:knockback_resistance modifier add neofunction:00000000-0000-0000-0000-000000000001 0.8 add_value
attribute @s minecraft:movement_speed modifier add neofunction:00000000-0000-0000-0000-000000000001 0.6 add_multiplied_base
attribute @s minecraft:follow_range modifier add neofunction:00000000-0000-0000-0000-000000000001 0.8 add_multiplied_base

data merge entity @s {Health:99999f}


