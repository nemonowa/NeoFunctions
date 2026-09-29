# 命名：.neo
# 説明：チュートリアル個別化処理
# >/function neofunction:asset/event/tutorial/0s
# =/function neofunction:asset/event/tutorial/go/.neo

data modify storage neofunction:tutorial data set value {X:0,Y:0,Z:0}
# X
scoreboard players set #Calc1 temp 0
# Y
scoreboard players set #Calc2 temp 0
# Z
scoreboard players set #Calc3 temp 0
function neofunction:asset/event/tutorial/go/loop

execute if data storage neofunction:tutorial {check:1b} run return run tellraw @s [{"text":"<"},{"selector": "0-0-0-0-1"},{"text": "> チュートリアルが満員です。","color": "red"}]

function neofunction:asset/event/tutorial/go/use_room with storage neofunction:tutorial data

data modify storage neofunction:tutorial move set from storage neofunction:tutorial data
execute store result storage neofunction:tutorial move.X int 1 run data get storage neofunction:tutorial move.X 12
execute store result storage neofunction:tutorial move.Y int 1 run data get storage neofunction:tutorial move.Y 12
execute store result storage neofunction:tutorial move.Z int 1 run data get storage neofunction:tutorial move.Z 15

tp @s 1199.00 128.00 1168.00 -180.00 0.00

execute at @s run function neofunction:asset/event/tutorial/go/move with storage neofunction:tutorial move

function neofunction:asset/event/tutorial/go/set_unique_storage


execute at @s run function neofunction:system/world/nexus/tutorial/0
