# 命名：goto_loop
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/goto
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/goto_loop

execute if score #Calc2 temp matches 2.. run scoreboard players add #Counter temp 1
execute if score #Calc2 temp matches 2.. run data remove storage neofunction:item/1717 Run.Command[0]
execute if score #Calc2 temp matches 2.. run scoreboard players remove #Calc2 temp 1

execute if score #Calc2 temp matches 2.. run return run function neofunction:system/adv/tick/cmd/1717/run/main/function/goto_loop

execute unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Function"} run scoreboard players add #Counter temp 1
execute unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Function"} run data remove storage neofunction:item/1717 Run.Command[0]
execute unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Function"} run function neofunction:system/adv/tick/cmd/1717/run/main/function/goto_loop