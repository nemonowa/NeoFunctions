# 命名：6
# 説明：（説明未記載）
# >/function neofunction:system/adv/player_interacted_with_entity/villager/103/.neo
# =/function neofunction:system/adv/tick/quest/30/6

execute unless entity @e[tag=enemy,distance=..16] run scoreboard players set #progressing main_story 1
execute unless entity @e[tag=enemy,distance=..16] run function neofunction:system/adv/tick/quest/30/tellraw/13
