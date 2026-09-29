# 命名：arrows
# 説明：sikisai
# >
# =/function neofunction:entity/skill/arrows
execute if entity @s[tag=sikisai] at @s[nbt={inGround:0b}] run particle dust{color:[1.0,1.0,1.0],scale:1.5} ~ ~ ~ 0 0 0 1 5 force

# torch 
execute if entity @s[tag=torch] at @s[nbt={inGround:1b}] run function neofunction:entity/skill/torch

# sansa
execute unless entity @s[tag=!sansa,tag=!sansa2] run function neofunction:entity/skill/sansa3