# 命名：7
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/103/.neo
# =/function neofunction:system/adv/tick/quest/30/7

effect clear @s minecraft:glowing
scoreboard players set #progressing main_story 1
function neofunction:system/adv/tick/quest/30/tellraw/15
