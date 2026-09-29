# 命名：drop
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/save/container_check
# =/function neofunction:system/adv/tick/cmd/1717/editor/save/drop

summon item ~ ~ ~ {Tags:["item1717"],Item:{id:"structure_block",count:1}}
data modify entity @e[tag=item1717,limit=1,sort=nearest] Item set from entity @s item.components."minecraft:bundle_contents"[0]
tag @e[tag=item1717] remove item1717