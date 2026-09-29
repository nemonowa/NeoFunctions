# 命名：loop
# 説明：
# >/function neofunction:asset/event/tutorial/go/.neo
# >/function neofunction:asset/event/tutorial/go/loop
# =/function neofunction:asset/event/tutorial/go/loop

function neofunction:asset/event/tutorial/go/check_room with storage neofunction:tutorial data
execute if data storage neofunction:tutorial {check:0b} run return 0
scoreboard players add #Calc1 temp 1
execute if score #Calc1 temp matches 4 run scoreboard players add #Calc2 temp 1
execute if score #Calc2 temp matches 4 run scoreboard players add #Calc3 temp 1
execute if score #Calc3 temp matches 6 run return 0
execute if score #Calc1 temp matches 4 run scoreboard players set #Calc1 temp 0
execute if score #Calc2 temp matches 4 run scoreboard players set #Calc2 temp 0

execute store result storage neofunction:tutorial data.X int 1 run scoreboard players get #Calc1 temp
execute store result storage neofunction:tutorial data.Y int 1 run scoreboard players get #Calc2 temp
execute store result storage neofunction:tutorial data.Z int 1 run scoreboard players get #Calc3 temp

function neofunction:asset/event/tutorial/go/loop