# 命名：1698
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/check
# =/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/1698

item replace entity @s armor.body with air
execute if entity @s[tag=item1698] run tellraw @a[distance=..10] {"text": "このアイテムは既に使用済みです","color": "dark_red"}
execute if entity @s[tag=item1698] run return run loot spawn ~ ~ ~ loot neofunction:item/1698

tag @s add item1698
playsound entity.wind_charge.wind_burst player @a[distance=..10] ~ ~ ~ 1 1
particle sweep_attack ~ ~1 ~ 1 1 1 0.1 40
attribute @s movement_speed modifier add neofunction:00000000-0000-0000-0000-000000000001 1 add_multiplied_total
attribute @s jump_strength modifier add neofunction:00000000-0000-0000-0000-000000000001 0.4142 add_multiplied_total