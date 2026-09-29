# 命名：11
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/602
# =/function neofunction:system/adv/tick/quest/30/11


execute store result score @p temp run clear @p minecraft:bone[minecraft:custom_model_data={floats:[1567.0f]}] 0
execute if score @p temp matches 10.. run scoreboard players set #progressing main_story 1
execute if score @p temp matches 10.. run function neofunction:system/adv/tick/quest/30/tellraw/24
scoreboard players reset @p temp 