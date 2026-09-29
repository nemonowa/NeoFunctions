# 命名：245-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/245-run

execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp
scoreboard players remove @s SP 18

particle minecraft:heart ~ ~1.5 ~ 0.3 0.3 0.3 0 15 force @a[distance=..4]
playsound minecraft:entity.experience_orb.pickup neutral @a[distance=..4] ~ ~ ~ 1 1.4
execute as @s[tag=skill245,scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 0
execute as @s[tag=skill245,scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:regeneration 10 0
execute as @s[tag=skill245,scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 1
execute as @s[tag=skill245,scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:regeneration 10 1
execute as @s[tag=skill245,scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 1
execute as @s[tag=skill245,scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:regeneration 10 2
execute as @s[tag=skill245,scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 2
execute as @s[tag=skill245,scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:regeneration 10 3
execute as @s[tag=skill245,scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 3
execute as @s[tag=skill245,scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:regeneration 10 4

