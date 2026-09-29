# 命名：schedule
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/horse
# =/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/schedule

execute as @a at @s if entity @e[type=horse,distance=..10] run function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/check
execute as @a at @s if function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/condition if entity @e[type=horse,distance=..10] run schedule function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/schedule 1t replace