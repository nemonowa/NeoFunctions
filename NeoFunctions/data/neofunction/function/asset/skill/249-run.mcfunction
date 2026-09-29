# 命名：249-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/249-run


execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp
scoreboard players remove @s SP 60


execute at @a[distance=..4] run particle minecraft:totem_of_undying ~ ~1 ~ 3 1 3 0.3 150 force
execute at @a[distance=..4] run playsound minecraft:block.glass.break record @a ~ ~ ~ 1 0.7
execute at @a[distance=..4] run playsound minecraft:entity.evoker.cast_spell record @a ~ ~ ~ 1 0.8

execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 3
execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:strength 200 0
execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:speed 200 0
execute as @s[scores={LVL=0..29}] as @a[distance=..4] run effect give @s minecraft:resistance 200 0
execute as @s[scores={LVL=0..29}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:poison 100 1
execute as @s[scores={LVL=0..29}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:wither 100 0
execute as @s[scores={LVL=0..29}] as @e[distance=..4,tag=enemy] run attribute @s minecraft:armor modifier add neofunction:00000249-0000-0000-0000-000000000249 -2.0 add_value

execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 3
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:strength 200 1
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:speed 200 0
execute as @s[scores={LVL=30..49}] as @a[distance=..4] run effect give @s minecraft:resistance 200 0
execute as @s[scores={LVL=30..49}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:poison 100 1
execute as @s[scores={LVL=30..49}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:wither 100 0
execute as @s[scores={LVL=30..49}] as @e[distance=..4,tag=enemy] run attribute @s minecraft:armor modifier add neofunction:00000249-0000-0000-0000-000000000249 -3.0 add_value

execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 4
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:strength 200 1
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:speed 200 1
execute as @s[scores={LVL=50..69}] as @a[distance=..4] run effect give @s minecraft:resistance 200 0
execute as @s[scores={LVL=50..69}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:poison 100 2
execute as @s[scores={LVL=50..69}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:wither 100 1
execute as @s[scores={LVL=50..69}] as @e[distance=..4,tag=enemy] run attribute @s minecraft:armor modifier add neofunction:00000249-0000-0000-0000-000000000249 -4.0 add_value

execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 4
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:strength 200 2
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:speed 200 1
execute as @s[scores={LVL=70..89}] as @a[distance=..4] run effect give @s minecraft:resistance 200 1
execute as @s[scores={LVL=70..89}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:poison 100 2
execute as @s[scores={LVL=70..89}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:wither 100 1
execute as @s[scores={LVL=70..89}] as @e[distance=..4,tag=enemy] run attribute @s minecraft:armor modifier add neofunction:00000249-0000-0000-0000-000000000249 -5.0 add_value

execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:instant_health 1 5
execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:strength 200 2
execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:speed 200 2
execute as @s[scores={LVL=90..}] as @a[distance=..4] run effect give @s minecraft:resistance 200 1
execute as @s[scores={LVL=90..}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:poison 100 3
execute as @s[scores={LVL=90..}] as @e[distance=..4,tag=enemy] run effect give @s minecraft:wither 100 2
execute as @s[scores={LVL=90..}] as @e[distance=..4,tag=enemy] run attribute @s minecraft:armor modifier add neofunction:00000249-0000-0000-0000-000000000249 -6.0 add_value

execute as @e[distance=..4,tag=enemy] run tag @s add skill249_defdown
execute if entity @e[distance=..4,tag=enemy] run schedule function neofunction:asset/skill/249-1 100t append