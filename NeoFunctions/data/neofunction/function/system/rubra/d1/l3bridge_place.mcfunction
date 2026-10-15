# 命名：l3bridge_place
# 説明：光の橋のボタンの右クリックの所だけを置く（今のワールドに足すとき用。setup でも points2 で置く）
# 実行条件：どこでも
# =/function neofunction:system/rubra/d1/l3bridge_place

# 内容
execute in neodimension:ceresta_festa positioned 845.5 25.75 3284.25 run kill @e[type=interaction,tag=rubra_l3bridge,distance=..2]
execute in neodimension:ceresta_festa run summon interaction 845.5 25.75 3284.25 {Tags:["rubra_click","rubra_d1","rubra_l3bridge"],width:0.7f,height:0.9f,response:1b}
function neofunction:system/rubra/d1/l3bridge_off
tellraw @s {"text":"光の橋のボタンを置きました","color":"gray"}
