# 命名：602
# 説明：
# 説明：実行者:フルク
# >/function neofunction:system/adv/player_interacted_with_entity/villager
# =/function neofunction:system/adv/player_interacted_with_entity/villager/611


# 説明：フルクに話しかけたときの固有処理！
effect clear @s minecraft:glowing
execute if score #temp main_story matches 16 run return run function neofunction:system/adv/tick/quest/10/16