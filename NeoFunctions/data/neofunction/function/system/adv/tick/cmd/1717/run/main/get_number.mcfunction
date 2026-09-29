# 命名：get_number
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_argument
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_number
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_var
# =/function neofunction:system/adv/tick/cmd/1717/run/main/get_number

function neofunction:system/adv/tick/cmd/1717/run/main/del_comma_end
execute unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Number"} unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Var"} run return run tellraw @s {"translate": "構文エラー：%1$s文字目は数字あるいはVarであるべきです","color": "dark_red","with": [{"score": {"name": "#Counter","objective": "temp"},"color": "dark_red","bold": true}]}

execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"Var"} run return run function neofunction:system/adv/tick/cmd/1717/run/main/get_var

execute store result score #Calc1 temp run data get storage neofunction:item/1717 Run.Command[0].data.Name
scoreboard players operation #CalcNum temp *= $10 const
scoreboard players operation #CalcNum temp += #Calc1 temp

scoreboard players add #Counter temp 1
data remove storage neofunction:item/1717 Run.Command[0]

execute unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Number"} run return run scoreboard players get #CalcNum temp
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"Number"} run return run function neofunction:system/adv/tick/cmd/1717/run/main/get_number
