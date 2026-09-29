# 命名：if_loop
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/if
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/if_loop

execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"end"} run scoreboard players remove #CalcEnd temp 1
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"Function",Name:"if"} run scoreboard players add #CalcEnd temp 1
scoreboard players add #Counter temp 1
data remove storage neofunction:item/1717 Run.Command[0]

execute if score #CalcEnd temp matches 1.. run function neofunction:system/adv/tick/cmd/1717/run/main/function/if_loop