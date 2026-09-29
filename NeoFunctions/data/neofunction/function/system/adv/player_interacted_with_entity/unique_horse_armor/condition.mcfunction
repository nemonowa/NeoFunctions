# 命名：condition
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/schedule
# =/function neofunction:system/adv/player_interacted_with_entity/unique_horse_armor/condition

execute store success score #Calc temp run clear @s leather_horse_armor 0
execute if score #Calc temp matches 1 run return 1
return fail