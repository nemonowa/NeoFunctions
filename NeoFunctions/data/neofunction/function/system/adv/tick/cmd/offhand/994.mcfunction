# 命名：994
# 説明：
# 実行条件：オフハンドにコンパスを持っている場合
# >/
# =/function neofunction:system/adv/tick/cmd/offhand/994


# 所持時の処理
execute as @s store result score pos0 temp run data get entity @s Pos[0]
execute as @s store result score pos1 temp run data get entity @s Pos[1]
execute as @s store result score pos2 temp run data get entity @s Pos[2]
execute as @s store result score pos3 temp run data get entity @s Rotation[0]
execute as @s store result score pos4 temp run data get entity @s Rotation[1]

title @s actionbar [{"text":"x:","color":"dark_aqua"},{"score":{"name":"pos0","objective":"temp"},"bold":true},{"text":" y:"},{"score":{"name":"pos1","objective":"temp"},"bold":true},{"text":" z:"},{"score":{"name":"pos2","objective":"temp"},"bold":true},{"text":" Yaw:"},{"score":{"name":"pos3","objective":"temp"},"bold":true},{"text":" Pitch:"},{"score":{"name":"pos4","objective":"temp"},"bold":true}]

title @s[scores={sneak_time=1..}] actionbar [{"text":"運命羅針：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"sneak_time"}},{"text":"/"},{"text":"20 tick"}]
playsound minecraft:block.amethyst_cluster.step record @s[scores={sneak_time=50..}] ~ ~ ~ 1 1.5 1
execute as @s[scores={sneak_time=20..}] run function neofunction:system/adv/tick/cmd/offhand/994/994
scoreboard players set @s[scores={sneak_time=20..}] sneak_time 0