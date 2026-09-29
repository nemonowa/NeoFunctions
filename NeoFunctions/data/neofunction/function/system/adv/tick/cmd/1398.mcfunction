# 命名：1391
# 説明：進捗達成時
# >1s
# =/function neofunction:system/adv/tick/cmd/1391


# 内容
tellraw @s [{"text":"🔯【ダオロスの義眼】","color":"light_purple"}]
execute as @e[distance=..16,tag=enemy,tag=!god] run data merge entity @s {NoAI:1b}

