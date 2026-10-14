# 命名：give_stone
# 説明：【追加：2026-10-09 ルブラ編】水守の守り石（1917）を渡す（持っていない人だけ）
# 実行条件：実行者 プレイヤー
# >/function neofunction:system/adv/tick/quest/40/d3/433（会話の Command）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/902
# =/function neofunction:system/adv/tick/quest/40/d3/give_stone

# 内容
execute if items entity @s container.* minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return 0
execute if items entity @s weapon.offhand minecraft:heart_of_the_sea[minecraft:custom_model_data={floats:[1917.0f]}] run return 0
loot give @s loot neofunction:item/1917
