# 命名：432_move
# 説明：オルドとミラが星見の塔の一階（目印 rubra_ordo_tower・rubra_mira_tower）へ。目印が無ければ（建築前）動かさない
# 実行条件：schedule
# >/function neofunction:system/adv/tick/quest/40/d3/432_end
# =/function neofunction:system/adv/tick/quest/40/d3/432_move

# 内容
execute as @e[type=marker,tag=rubra_ordo_tower,limit=1] at @s run tp @e[type=villager,tag=rubra_ordo] ~ ~ ~ ~ ~
execute as @e[type=marker,tag=rubra_mira_tower,limit=1] at @s run tp @e[type=villager,tag=rubra_mira] ~ ~ ~ ~ ~
