# 命名：1810
# 説明：
# >/advancement neofunction:player_hurt_entity/1810
# =/function neofunction:system/adv/player_hurt_entity/1810

tag @s add attacker

execute as @e[nbt={HurtTime:10s}] at @s run function neofunction:system/adv/player_hurt_entity/1810-1

tag @s remove attacker
