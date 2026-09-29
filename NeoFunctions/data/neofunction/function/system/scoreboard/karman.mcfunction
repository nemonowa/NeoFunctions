# 命名：karman
# 説明：カルマ値の処理
# 説明：一分おきに１ずつ０へ戻ろうとする。
# >/function neofunction:system/clock/60_second
# >/function neofunction:system/adv/player_killed_entity/safe
# >/function neofunction:system/adv/player_killed_entity/ally
# =/function neofunction:system/scoreboard/karman


# 内容
title @s actionbar [{"text":"カルマ値：","color":"red","bold":true},{"score":{"name":"@s","objective":"karman"}}]

# 100
execute as @s[scores={karman=100..120}] run function neofunction:system/scoreboard/karman/good
execute as @s[scores={karman=-120..-100}] run function neofunction:system/scoreboard/karman/bad

# 500
execute as @s[scores={karman=500..}] run function neofunction:system/scoreboard/karman/goodness
execute as @s[scores={karman=..-500}] run function neofunction:system/scoreboard/karman/badness

execute unless score @s karman matches -500..500 run scoreboard players set @s karman 0