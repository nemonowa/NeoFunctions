# 命名：trident_thrown
# 説明：
# >/advancement neofunction:using_item/trident
# =/function neofunction:system/adv/player_hurt_entity/throwdamage1


function neofunction:system/adv/player_hurt_entity/.get_entity {Name:"throwdamage"}
execute as @e[tag=hit] at @s as @e[tag=!hashitted,distance=..10,type=trident,limit=1,sort=nearest,nbt={inGround:0b,DealtDamage:1b}] at @s run tag @s add throwdamage
execute as @e[tag=throwdamage] at @s run function neofunction:system/adv/player_hurt_entity/throwdamage2 with entity @s item.components."minecraft:custom_data"
tag @e[tag=hit] remove hit