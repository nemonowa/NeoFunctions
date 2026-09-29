# 命名：243-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/243-run

execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp

tag @s add This
execute as @e[tag=enemy,distance=..4] at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1 force
execute as @e[tag=enemy,distance=..4] at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1.2
execute as @s[scores={LVL=0..19}] as @e[tag=enemy,distance=..4] run damage @s 15 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=20..29}] as @e[tag=enemy,distance=..4] run damage @s 25 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=30..39}] as @e[tag=enemy,distance=..4] run damage @s 40 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=40..49}] as @e[tag=enemy,distance=..4] run damage @s 60 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=50..59}] as @e[tag=enemy,distance=..4] run damage @s 100 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=60..69}] as @e[tag=enemy,distance=..4] run damage @s 250 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=70..79}] as @e[tag=enemy,distance=..4] run damage @s 500 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=80..89}] as @e[tag=enemy,distance=..4] run damage @s 1000 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=90..99}] as @e[tag=enemy,distance=..4] run damage @s 5000 minecraft:explosion by @p[tag=This]
execute as @s[scores={LVL=100..}] as @e[tag=enemy,distance=..4] run damage @s 10000 minecraft:explosion by @p[tag=This]
tag @s remove This

scoreboard players remove @s SP 15