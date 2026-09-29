# 命名：996
# 説明：異空の徽章：w-book
# >
# =/function neofunction:system/adv/tick/cmd/996


# マイクラ内時間0~24000を0:00~24:00に変換
function neofunction:asset/scoreboard/daytime

# スニーク時の処理
title @s[scores={sneak_time=1..}] actionbar [{"text":"存在解析：","color":"dark_aqua","bold":true},{"score":{"name":"@s","objective":"sneak_time"}},{"text":"/"},{"text":"30 tick"}]

playsound minecraft:block.amethyst_cluster.step record @s[scores={sneak_time=30..}] ~ ~ ~ 1 1.5 1

execute as @s[scores={sneak_time=30..}] run trigger code set 331

scoreboard players set @s[scores={sneak_time=30..}] sneak_time 0
