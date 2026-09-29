# 命名：trident_thrown
# 説明：
# >/advancement neofunction:using_item/trident
# =/function neofunction:system/adv/player_hurt_entity/throwdamage2

execute on origin run tag @s add attacker
$damage @e[tag=hit,limit=1] $(throwdamage) arrow by @p[tag=attacker,limit=1,sort=nearest]

tag @s remove throwdamage
tag @s add hashitted
