# 命名：if
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/if

execute store result score #Calc2 temp run data get storage neofunction:item/1717 Run.Arguments[0]
execute store result score #Calc3 temp run data get storage neofunction:item/1717 Run.Arguments[1]

execute if score #Calc2 temp > #Calc3 temp run return 0

scoreboard players set #CalcEnd temp 1

function neofunction:system/adv/tick/cmd/1717/run/main/function/if_loop