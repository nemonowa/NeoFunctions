# 命名：schedule_player
# 説明：（説明未記載）
# >/function neofunction:asset/event/talk/schedule
# =/function neofunction:asset/event/talk/schedule_player


summon item_display ~ ~ ~ {view_range:0,Tags:["del","resolve"]}
loot replace entity @e[tag=resolve,limit=1,sort=nearest] container.0 loot neofunction:player_head
function neofunction:asset/event/talk/load with entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:profile"
execute unless data storage neofunction:talk $.Talks[0].Delay run data modify storage neofunction:talk $.Talks[0].Delay set value 140
execute if data storage neofunction:talk $.Talks[0].Command run function neofunction:asset/event/talk/command with storage neofunction:talk $.Talks[0]
execute store result score #Calc1 temp run time query gametime
execute store result score #Calc2 temp run data get storage neofunction:talk $.Time
execute if score #Calc1 temp < #Calc2 temp run return run kill @e[tag=resolve,limit=1,sort=nearest]
execute store result storage neofunction:talk $.Time int 1 run function neofunction:asset/event/talk/get_next
execute unless data storage neofunction:talk ${Delay:0} run tellraw @s {"text": ""}
tellraw @s {"nbt": "$.Talks[0].Text","interpret": true,"storage": "neofunction:talk"}
data modify storage neofunction:talk $.Delay set from storage neofunction:talk $.Talks[0].Delay
function neofunction:asset/event/talk/sound with storage neofunction:talk $.Talks[0].Sound
function neofunction:asset/event/talk/schedule_macro with storage neofunction:talk $.Talks[0]
data remove storage neofunction:talk $.Talks[0]
execute unless data storage neofunction:talk $.Talks[0] run tag @s remove Talking
execute unless data storage neofunction:talk $.Talks[0] run data remove storage neofunction:talk $.Delay

function neofunction:asset/event/talk/save with entity @e[tag=resolve,limit=1,sort=nearest] item.components."minecraft:profile"
kill @e[tag=resolve,limit=1,sort=nearest]


execute if data storage neofunction:talk ${Delay:0} run function neofunction:asset/event/talk/schedule_player