# 命名：244-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/244-run

execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp

execute as @s[scores={LVL=0..29}] as @e[tag=enemy,distance=..4] at @s run particle minecraft:witch ~ ~1 ~ 2 1 2 0 40 force
execute as @s[scores={LVL=0..29}] as @e[tag=enemy,distance=..4] at @s run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~ 1 0.7
execute as @s[scores={LVL=0..29}] as @e[tag=enemy,distance=..4] at @s run effect give @s minecraft:poison 3 0
execute as @s[scores={LVL=0..29}] as @e[tag=enemy,distance=..4] at @s run damage @s 3 minecraft:magic
execute as @s[scores={LVL=30..49}] as @e[tag=enemy,distance=..4] at @s run effect give @s minecraft:poison 5 0
execute as @s[scores={LVL=30..49}] as @e[tag=enemy,distance=..4] at @s run damage @s 4 minecraft:magic
execute as @s[scores={LVL=50..69}] as @e[tag=enemy,distance=..4] at @s run effect give @s minecraft:poison 5 1
execute as @s[scores={LVL=50..69}] as @e[tag=enemy,distance=..4] at @s run damage @s 5 minecraft:magic
execute as @s[scores={LVL=70..89}] as @e[tag=enemy,distance=..4] at @s run effect give @s minecraft:poison 7 1
execute as @s[scores={LVL=70..89}] as @e[tag=enemy,distance=..4] at @s run damage @s 6 minecraft:magic
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..4] at @s run effect give @s minecraft:poison 7 2
execute as @s[scores={LVL=90..}] as @e[tag=enemy,distance=..4] at @s run damage @s 8 minecraft:magic

scoreboard players remove @s SP 5