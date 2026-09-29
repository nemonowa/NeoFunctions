# 命名：main
# 説明：
# >/function neofunction:system/adv/tick/cmd/offhand/994/dim/ceresta
# =/function neofunction:system/adv/tick/cmd/offhand/994/dim/ceresta/main


#汎用目標の状況に応じて表示する
execute as @s run scoreboard players set @s temp 0
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/9=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/8=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/7=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/6=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/5=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/4=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/3=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/2=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/1=true}] run scoreboard players add @s temp 1
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/0=false}] run return run tellraw @s [{"text":"～第1章：風来と伝承の難破船入江～【進行中:"},{"score":{"name":"@s","objective":"temp"}},{"text":"/9】"}]
execute as @s if entity @s[advancements={neoadvancement:ceresta/root/1/0=true}] run return run tellraw @s [{"text":"～第1章：風来と伝承の難破船入江～【達成済み:"},{"score":{"name":"@s","objective":"temp"}},{"text":"/9】"}]