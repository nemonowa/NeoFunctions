# 命名：luck
# 説明：SP不足時
# 実行条件：@a 1s
# >/function neofunction:clock/1_second
# =/function neofunction:player/sp/luck


# 内容
scoreboard players add @s SP 1
title @s actionbar [{"text":"注：ソウルの枯渇 ","color":"red","bold":false},{"score":{"name":"@s","objective":"SP"},"color":"red","bold":true}]

# === 段階別デバフ ===
# -10以下
execute as @s[scores={SP=..-10}] run effect give @s minecraft:slowness 5 0
# -20以下
execute as @s[scores={SP=..-20}] run effect give @s minecraft:mining_fatigue 5 0
# -30以下
execute as @s[scores={SP=..-30}] run effect give @s minecraft:weakness 5 0
# -40以下
execute as @s[scores={SP=..-40}] run effect give @s minecraft:slowness 5 1
# -50以下
execute as @s[scores={SP=..-50}] run effect give @s minecraft:weakness 5 1
execute as @s[scores={SP=..-50}] run effect give @s minecraft:blindness 5 0
# -60以下
execute as @s[scores={SP=..-60}] run effect give @s minecraft:mining_fatigue 5 1
# -70以下
execute as @s[scores={SP=..-70}] run effect give @s minecraft:weakness 5 2
# -80以下
execute as @s[scores={SP=..-80}] run effect give @s minecraft:mining_fatigue 5 2
# -90以下
execute as @s[scores={SP=..-90}] run effect give @s minecraft:slowness 5 2

execute as @s[scores={SP=..-99}] run trigger kill set 9
execute as @s[scores={SP=..-99}] run scoreboard players set @s SP 100
