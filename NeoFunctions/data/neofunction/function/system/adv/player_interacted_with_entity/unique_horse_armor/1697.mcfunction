# 命名：1697
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/check
# =/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/1697

item replace entity @s armor.body with air
execute if entity @s[tag=item1697] run tellraw @a[distance=..10] {"text": "このアイテムは既に使用済みです","color": "dark_red"}
execute if entity @s[tag=item1697] run return run loot spawn ~ ~ ~ loot neofunction:item/1697

tag @s add item1697
playsound entity.player.splash.high_speed player @a[distance=..10] ~ ~ ~ 1 2
particle splash ~ ~1 ~ 1 1 1 0.1 200