# 命名：.neo
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/.neo
 # .neo.mcfunction
 # 
 #
 # Created by .
##

# X1~Z1に正の値、X2~Z2に負の値を入れる想定
function admin:block_to_display/make_list
summon marker ~ ~ ~ {Tags:["BTD"]}

$scoreboard players set #Calc1 temp $(X1)
$scoreboard players set #Calc2 temp $(Y1)
$scoreboard players set #Calc3 temp $(Z1)

scoreboard players add #Calc1 temp 1
scoreboard players add #Calc2 temp 1
scoreboard players add #Calc3 temp 1

$scoreboard players set #CalcX2 temp $(X2)
$scoreboard players set #CalcY2 temp $(Y2)
$scoreboard players set #CalcZ2 temp $(Z2)

scoreboard players operation #Calc1 temp -= #CalcX2 temp
scoreboard players operation #Calc2 temp -= #CalcY2 temp
scoreboard players operation #Calc3 temp -= #CalcZ2 temp

execute store result storage admin:btd Macro.X int 1 run scoreboard players get #Calc1 temp
execute store result storage admin:btd Macro.Y int 1 run scoreboard players get #Calc2 temp
execute store result storage admin:btd Macro.Z int 1 run scoreboard players get #Calc3 temp

$execute as @e[tag=BTD] at @s positioned ~$(X2) ~$(Y2) ~$(Z2) run function admin:block_to_display/marker with storage admin:btd Macro



kill @e[tag=BTD]