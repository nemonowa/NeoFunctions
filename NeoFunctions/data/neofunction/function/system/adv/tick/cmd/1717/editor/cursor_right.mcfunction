# 命名：cursor_right
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/write
# =/function neofunction:system/adv/tick/cmd/1717/editor/cursor_right

scoreboard players set #Calc1 temp 0
data modify storage neofunction:item/1717 Temp.List set from storage neofunction:item/1717 data.List
function neofunction:system/adv/tick/cmd/1717/editor/get_length
execute store result score #Calc2 temp run data get storage neofunction:item/1717 data.Cursor
scoreboard players add #Calc2 temp 1
execute if score #Calc1 temp < #Calc2 temp run scoreboard players operation #Calc2 temp = #Calc1 temp
execute unless data storage neofunction:item/1717 data.List[0] run scoreboard players set #Calc2 temp 0
execute store result storage neofunction:item/1717 data.Cursor int 1 run scoreboard players get #Calc2 temp