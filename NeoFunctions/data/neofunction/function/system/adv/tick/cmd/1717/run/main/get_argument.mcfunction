# 命名：get_argument
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_argument
# =/function neofunction:system/adv/tick/cmd/1717/run/main/get_argument

scoreboard players set #CalcNum temp 0
execute store result storage neofunction:item/1717 Run.Function.NewArg int 1 run function neofunction:system/adv/tick/cmd/1717/run/main/get_number
data modify storage neofunction:item/1717 Run.Arguments append from storage neofunction:item/1717 Run.Function.NewArg
scoreboard players remove #CalcArgs temp 1
execute if score #CalcArgs temp matches 1.. run function neofunction:system/adv/tick/cmd/1717/run/main/get_argument