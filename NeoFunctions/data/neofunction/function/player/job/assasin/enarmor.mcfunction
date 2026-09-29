# 命名：enarmor
# 説明：自分の防具をストレージから呼び出す
# 実行条件：暗殺士官【ASSASIN】かつ透明化が解除された時
# 実行条件：暗殺士官【ASSASIN】から転職したとき
# >/function neofunction:system/adv/effects_changed/invisibility
# =/function neofunction:player/job/assasin/enarmor

data remove storage neofunction:job/assasin temp
summon item_display ~ ~ ~ {Tags:["del","player_name"],view_range:0}
loot replace entity @e[tag=player_name,distance=..1,limit=1,sort=nearest] container.0 loot neofunction:player_head
function neofunction:player/job/assasin/get_storage with entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"

#頭復元orドロップ
execute if data storage neofunction:job/assasin temp.head if data entity @s equipment.head run summon item ~ ~ ~ {Tags:["armor_drop"],Item:{id:"structure_block",count:1}}
execute if data storage neofunction:job/assasin temp.head if data entity @s equipment.head run data modify entity @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] Item set from storage neofunction:job/assasin temp.head
execute if data storage neofunction:job/assasin temp.head if data entity @s equipment.head run tag @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] remove armor_drop
execute if data storage neofunction:job/assasin temp.head if data entity @s equipment.head run data remove storage neofunction:job/assasin temp.head
execute if data storage neofunction:job/assasin temp.head run data modify entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item set from storage neofunction:job/assasin temp.head
execute if data storage neofunction:job/assasin temp.head run item replace entity @s armor.head from entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] container.0
#胴復元orドロップ
execute if data storage neofunction:job/assasin temp.chest if data entity @s equipment.chest run summon item ~ ~ ~ {Tags:["armor_drop"],Item:{id:"structure_block",count:1}}
execute if data storage neofunction:job/assasin temp.chest if data entity @s equipment.chest run data modify entity @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] Item set from storage neofunction:job/assasin temp.chest
execute if data storage neofunction:job/assasin temp.chest if data entity @s equipment.chest run tag @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] remove armor_drop
execute if data storage neofunction:job/assasin temp.chest if data entity @s equipment.chest run data remove storage neofunction:job/assasin temp.chest
execute if data storage neofunction:job/assasin temp.chest run data modify entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item set from storage neofunction:job/assasin temp.chest
execute if data storage neofunction:job/assasin temp.chest run item replace entity @s armor.chest from entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] container.0
#脚復元orドロップ
execute if data storage neofunction:job/assasin temp.legs if data entity @s equipment.legs run summon item ~ ~ ~ {Tags:["armor_drop"],Item:{id:"structure_block",count:1}}
execute if data storage neofunction:job/assasin temp.legs if data entity @s equipment.legs run data modify entity @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] Item set from storage neofunction:job/assasin temp.legs
execute if data storage neofunction:job/assasin temp.legs if data entity @s equipment.legs run tag @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] remove armor_drop
execute if data storage neofunction:job/assasin temp.legs if data entity @s equipment.legs run data remove storage neofunction:job/assasin temp.legs
execute if data storage neofunction:job/assasin temp.legs run data modify entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item set from storage neofunction:job/assasin temp.legs
execute if data storage neofunction:job/assasin temp.legs run item replace entity @s armor.legs from entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] container.0
#足復元orドロップ
execute if data storage neofunction:job/assasin temp.feet if data entity @s equipment.feet run summon item ~ ~ ~ {Tags:["armor_drop"],Item:{id:"stone",count:1}}
execute if data storage neofunction:job/assasin temp.feet if data entity @s equipment.feet run data modify entity @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] Item set from storage neofunction:job/assasin temp.feet
execute if data storage neofunction:job/assasin temp.feet if data entity @s equipment.feet run tag @e[tag=armor_drop,limit=1,sort=nearest,distance=..1] remove armor_drop
execute if data storage neofunction:job/assasin temp.feet if data entity @s equipment.feet run data remove storage neofunction:job/assasin temp.feet
execute if data storage neofunction:job/assasin temp.feet run data modify entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item set from storage neofunction:job/assasin temp.feet
execute if data storage neofunction:job/assasin temp.feet run item replace entity @s armor.feet from entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] container.0

loot replace entity @e[tag=player_name,distance=..1,limit=1,sort=nearest] container.0 loot neofunction:player_head
function neofunction:player/job/assasin/remove_storage with entity @e[tag=player_name,limit=1,sort=nearest,distance=..1] item.components."minecraft:profile"


kill @e[tag=player_name,limit=1,sort=nearest,distance=..1]

tag @s remove inv_assasin