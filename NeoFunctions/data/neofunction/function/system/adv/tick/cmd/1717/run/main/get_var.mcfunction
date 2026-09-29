# 命名：get_var
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/get_number
# =/function neofunction:system/adv/tick/cmd/1717/run/main/get_var

scoreboard players add #Counter temp 1
data remove storage neofunction:item/1717 Run.Command[0]

execute store result storage neofunction:item/1717 Run.Get.Var int 1 run function neofunction:system/adv/tick/cmd/1717/run/main/get_number

execute if data storage neofunction:item/1717 Run.Get{Var:1} run return run scoreboard players get @s slotR
execute if data storage neofunction:item/1717 Run.Get{Var:2} run return run scoreboard players get @s slotG
execute if data storage neofunction:item/1717 Run.Get{Var:3} run return run scoreboard players get @s slotB
execute if data storage neofunction:item/1717 Run.Get{Var:4} run return run data get entity @s Health
execute if data storage neofunction:item/1717 Run.Get{Var:5} run return run attribute @s max_health get
execute if data storage neofunction:item/1717 Run.Get{Var:6} run return run scoreboard players get @s SP
execute if data storage neofunction:item/1717 Run.Get{Var:7} run return run scoreboard players get @s SPmax
execute if data storage neofunction:item/1717 Run.Get{Var:8} run return run function neofunction:system/adv/tick/cmd/1717/run/main/system_var/8

return run function neofunction:system/adv/tick/cmd/1717/run/main/get_var_macro with storage neofunction:item/1717 Run.Get