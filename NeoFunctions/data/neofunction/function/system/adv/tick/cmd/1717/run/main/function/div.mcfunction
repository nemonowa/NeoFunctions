# 命名：div
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/div

data modify storage neofunction:item/1717 Run.Div.Var set from storage neofunction:item/1717 Run.Arguments[0]

execute store result score #Calc2 temp run function neofunction:system/adv/tick/cmd/1717/run/main/function/get_var with storage neofunction:item/1717 Run.Div

execute store result score #Calc3 temp run data get storage neofunction:item/1717 Run.Arguments[1]

scoreboard players operation #Calc2 temp /= #Calc3 temp

execute store result storage neofunction:item/1717 Run.Div.Value int 1 run scoreboard players get #Calc2 temp

function neofunction:system/adv/tick/cmd/1717/run/main/function/set_var with storage neofunction:item/1717 Run.Div