# 命名：disarmor
# 説明：自分の防具をストレージに一時保存して裸になる
# 実行条件：暗殺士官【ASSASIN】かつ透明化が付与された時
# >/function neofunction:system/adv/effects_changed/invisibility
# =/function neofunction:player/job/assasin/disarmor

data remove storage neofunction:job/assasin temp

execute if data entity @s equipment.head run data modify storage neofunction:job/assasin temp.head set from entity @s equipment.head
execute if data entity @s equipment.chest run data modify storage neofunction:job/assasin temp.chest set from entity @s equipment.chest
execute if data entity @s equipment.legs run data modify storage neofunction:job/assasin temp.legs set from entity @s equipment.legs
execute if data entity @s equipment.feet run data modify storage neofunction:job/assasin temp.feet set from entity @s equipment.feet


summon item_display ~ ~ ~ {Tags:["del","player_name"],view_range:0}
loot replace entity @e[tag=player_name,distance=..1,limit=1,sort=nearest] container.0 loot neofunction:player_head
#tellraw @s {"entity":"@e[tag=player_name,limit=1,sort=nearest,distance=..1]","nbt":""}
function neofunction:player/job/assasin/return_storage with entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"
kill @e[tag=player_name,limit=1,sort=nearest,distance=..1]

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

tag @s add inv_assasin