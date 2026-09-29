# 命名：del_comma_end
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_number
# =/function neofunction:system/adv/tick/cmd/1717/run/main/del_comma_end

execute if data storage neofunction:item/1717 Run.Command[0].data{Type:","} run scoreboard players add #Counter temp 1
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:","} run data remove storage neofunction:item/1717 Run.Command[0]
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"end"} run scoreboard players add #Counter temp 1
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"end"} run data remove storage neofunction:item/1717 Run.Command[0]
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:","} run function neofunction:system/adv/tick/cmd/1717/run/main/del_comma_end
execute if data storage neofunction:item/1717 Run.Command[0].data{Type:"end"} run function neofunction:system/adv/tick/cmd/1717/run/main/del_comma_end