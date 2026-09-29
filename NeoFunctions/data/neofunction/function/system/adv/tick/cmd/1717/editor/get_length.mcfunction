# 命名：get_length
# 説明：（説明未記載）
# >/function neofunction:system/adv/tick/cmd/1717/editor/cursor_right
# =/function neofunction:system/adv/tick/cmd/1717/editor/get_length

scoreboard players add #Calc1 temp 1
data remove storage neofunction:item/1717 Temp.List[0]
execute if data storage neofunction:item/1717 Temp.List[0] run function neofunction:system/adv/tick/cmd/1717/editor/get_length