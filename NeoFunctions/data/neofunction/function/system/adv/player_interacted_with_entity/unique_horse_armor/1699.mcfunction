# 命名：1699
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/check
# =/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/1699

item replace entity @s armor.body with air
execute if entity @s[tag=item1699] run tellraw @a[distance=..10] {"text": "このアイテムは既に使用済みです","color": "dark_red"}
execute if entity @s[tag=item1699] run return run loot spawn ~ ~ ~ loot neofunction:item/1699

tag @s add item1699
playsound block.rooted_dirt.fall player @a[distance=..10] ~ ~ ~ 1 1
particle block{block_state:"minecraft:dirt"} ~ ~1 ~ 1 1 1 0.1 70