# 命名：for
# 説明：（説明未記載）
# >
# =/function admin:loot/chest/for
$data modify storage admin:chest Macro.j set value $(i)
$scoreboard players set #Calc2 temp $(i)
scoreboard players operation #Calc2 temp %= $27 const
execute store result storage admin:chest Macro.i int 1 run scoreboard players get #Calc2 temp
function admin:loot/chest/for2 with storage admin:chest Macro