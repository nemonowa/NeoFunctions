# 命名：242-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/242-run

execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp

execute as @e[tag=enemy,distance=..4] at @s run particle minecraft:witch ~ ~1 ~ 0.3 0.3 0.3 0 15 force
execute as @e[tag=enemy,distance=..4] at @s run playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 1 1

execute as @s[scores={LVL=0..29}] as @e[tag=enemy,distance=..4] run effect give @s minecraft:wither 15 2
execute as @s[tag=skill242,scores={LVL=30..49}] at @s as @e[tag=enemy,distance=..4] run effect give @s minecraft:wither 15 3
execute as @s[tag=skill242,scores={LVL=50..69}] at @s as @e[tag=enemy,distance=..4] run effect give @s minecraft:wither 15 4
execute as @s[tag=skill242,scores={LVL=70..89}] at @s as @e[tag=enemy,distance=..4] run effect give @s minecraft:wither 15 5
execute as @s[tag=skill242,scores={LVL=90..}] at @s as @e[tag=enemy,distance=..4] run effect give @s minecraft:wither 15 6

scoreboard players remove @s SP 4
