# 命名：function
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function

function neofunction:system/adv/tick/cmd/1717/run/main/del_comma_end
execute unless data storage neofunction:item/1717 Run.Command[0] run return 0
execute unless data storage neofunction:item/1717 Run.Command[0].data{Type:"Function"} run return run tellraw @s {"translate": "構文エラー：%1$s文字目は関数であるべきです","color": "dark_red","with": [{"score": {"name": "#Counter","objective": "temp"},"color": "dark_red","bold": true}]}

data modify storage neofunction:item/1717 Run.Function set from storage neofunction:item/1717 Run.Command[0].data

scoreboard players add #Counter temp 1
data remove storage neofunction:item/1717 Run.Command[0]

execute store result score #CalcArgs temp run data get storage neofunction:item/1717 Run.Function.Argument

data remove storage neofunction:item/1717 Run.Arguments
function neofunction:system/adv/tick/cmd/1717/run/main/get_argument

function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo with storage neofunction:item/1717 Run.Function

#tellraw @s {"storage": "neofunction:item/1717","nbt": "Run.Command"}

execute if data storage neofunction:item/1717 Run.Command[0] run function neofunction:system/adv/tick/cmd/1717/run/main/function