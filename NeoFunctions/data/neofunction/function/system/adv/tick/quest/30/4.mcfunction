# 命名：4
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/103/.neo
# =/function neofunction:system/adv/tick/quest/30/4


execute store result score @p temp run clear @p minecraft:wheat[minecraft:custom_model_data={floats:[1422.0f]}] 0
execute if score @p temp matches 64.. run scoreboard players set #progressing main_story 1
execute if score @p temp matches 64.. run function neofunction:system/adv/tick/quest/30/tellraw/7
scoreboard players reset @p temp 