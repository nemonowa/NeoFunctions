# 命名：994
# 説明：座標を表示
# 説明：コンパス処理に統合
# >/function neofunction:system/adv/tick/item/compass
# =/function neofunction:asset/tellraw/994


# 内容
execute as @s store result score pos0 temp run data get entity @s Pos[0]
execute as @s store result score pos1 temp run data get entity @s Pos[1]
execute as @s store result score pos2 temp run data get entity @s Pos[2]
execute as @s store result score pos3 temp run data get entity @s Rotation[0]
execute as @s store result score pos4 temp run data get entity @s Rotation[1]


title @s actionbar [{"text":"x:","color":"dark_aqua"},{"score":{"name":"pos0","objective":"temp"},"bold":true},{"text":" y:"},{"score":{"name":"pos1","objective":"temp"},"bold":true},{"text":" z:"},{"score":{"name":"pos2","objective":"temp"},"bold":true},{"text":" Yaw:"},{"score":{"name":"pos3","objective":"temp"},"bold":true},{"text":" Pitch:"},{"score":{"name":"pos4","objective":"temp"},"bold":true}]