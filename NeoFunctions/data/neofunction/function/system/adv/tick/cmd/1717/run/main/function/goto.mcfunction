# 命名：goto
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/run/main/function/.neo
# =/function neofunction:system/adv/tick/cmd/1717/run/main/function/goto

scoreboard players add #GotoCount temp 1

execute if score #GotoCount temp matches 100000.. run tellraw @s {"text": "エラー：100000回を超えるGotoの実行により強制停止","color": "dark_red","bold": true}

data modify storage neofunction:item/1717 Run.Command set from storage neofunction:item/1717 Run.Base

execute store result score #Calc2 temp run data get storage neofunction:item/1717 Run.Arguments[0]

scoreboard players set #Counter temp 1
function neofunction:system/adv/tick/cmd/1717/run/main/function/goto_loop