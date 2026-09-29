# 命名：.neo
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/quest/30/tellraw/1
# =/function neofunction:asset/event/talk/.neo


summon item_display ~ ~ ~ {view_range:0,Tags:["del","resolve"]}
loot replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 loot neofunction:player_head
data remove storage neofunction:talk $
$data modify storage neofunction:talk $.Talks set from storage $(Path)
data modify storage neofunction:talk $.Time set value 0
function neofunction:asset/event/talk/save with entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:profile"
tag @s add Talking
kill @e[tag=resolve,limit=1,sort=nearest]
function neofunction:asset/event/talk/schedule_player

