# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/write
# =/function neofunction:system/adv/tick/cmd/1717/editor/save/.neo

execute unless predicate neofunction:item/auto_skill_rule run return 0

summon item_display ~ ~ ~ {view_range:0,Tags:["resolve","del"]}
item replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand

execute as @e[tag=resolve,limit=1,sort=nearest] at @s if data entity @s item.components."minecraft:bundle_contents"[0] run function neofunction:system/adv/tick/cmd/1717/editor/save/container_check

data modify storage neofunction:item/1717 Temp.List set from storage neofunction:item/1717 data.List
data modify storage neofunction:item/1717 Temp.Items set value []
execute as @e[tag=resolve,limit=1,sort=nearest] at @s run function neofunction:system/adv/tick/cmd/1717/editor/save/item

item replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 from entity @s weapon.mainhand
data modify entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:bundle_contents" set from storage neofunction:item/1717 Temp.Items
item replace entity @s weapon.mainhand from entity @e[tag=resolve,limit=1,sort=nearest] container.0

kill @e[tag=resolve,limit=1,sort=nearest]