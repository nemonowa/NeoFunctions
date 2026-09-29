# 命名：7
# 説明：lv7
# 実行条件：impulse
# >/function neofunction:entity/.spawn/tag
# =/function neofunction:entity/attribute/lv/7


# 内容
# tag @s add king
attribute @s minecraft:max_health modifier add neofunction:00000001-0001-0001-0001-000000000001 800 add_value
attribute @s minecraft:attack_damage modifier add neofunction:00000001-0001-0001-0001-000000000001 200 add_value
attribute @s minecraft:knockback_resistance modifier add neofunction:00000001-0001-0001-0001-000000000001 2.0 add_value
attribute @s minecraft:movement_speed modifier add neofunction:00000001-0001-0001-0001-000000000001 0.7 add_multiplied_base
attribute @s minecraft:follow_range modifier add neofunction:00000001-0001-0001-0001-000000000001 1.2 add_multiplied_base

data merge entity @s {Health:99999f}



