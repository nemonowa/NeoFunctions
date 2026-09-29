# 命名：2
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/103/.neo
# =/function neofunction:system/adv/tick/quest/30/2

#発光を解除する。
effect clear @s minecraft:glowing
scoreboard players set #progressing main_story 1

function neofunction:system/adv/tick/quest/30/tellraw/3
