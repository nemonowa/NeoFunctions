# 命名：246-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/246-run


execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp
scoreboard players remove @s SP 26


execute as @a[distance=..4] at @s run particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 25 force
execute as @a[distance=..4] at @s run playsound minecraft:entity.zombie.infect neutral @a ~ ~ ~ 1 0.8
tag @s add backlash
schedule function neofunction:asset/skill/246/backlash 20s append

execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:strength 20 0
execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:speed 20 0
execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:resistance 20 0
execute as @s[scores={LVL=0..29}] as @a[distance=..4] run tag @s add dmg8
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:strength 20 1
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:speed 20 1
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:resistance 20 0
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run tag @s add dmg12
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:strength 20 3
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:speed 20 3
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:resistance 20 0
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run tag @s add dmg16
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:strength 20 10
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:speed 20 10
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:resistance 20 1
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run tag @s add dmg20
execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:strength 20 20
execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:speed 8 20
execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:resistance 20 2
execute as @s[scores={LVL=90..}] as @a[distance=..4] run tag @s add dmg24
