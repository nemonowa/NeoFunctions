# 命名：247-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/247-run


execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp
scoreboard players remove @s SP 24

execute as @s[scores={LVL=0..29}] at @s as @a[distance=..4] at @s run particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.02 20 force
execute as @s[scores={LVL=0..29}] at @s as @a[distance=..4] at @s run playsound minecraft:block.beacon.activate neutral @a ~ ~ ~ 1 1.4
execute as @a[distance=..4] run tag @s add ward247
execute if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 20t append
execute if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 40t append
execute if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 60t append
execute if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 80t append
execute as @s[scores={LVL=0..29}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-2 100t append
execute as @s[scores={LVL=30..}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 100t append
execute as @s[scores={LVL=30..49}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-2 120t append
execute as @s[scores={LVL=50..}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 120t append
execute as @s[scores={LVL=50..69}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-2 140t append
execute as @s[scores={LVL=70..}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 140t append
execute as @s[scores={LVL=70..89}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-2 160t append
execute as @s[scores={LVL=90..}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 160t append
execute as @s[scores={LVL=90..}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-1 180t append
execute as @s[scores={LVL=90..}] if entity @a[distance=..4] run schedule function neofunction:asset/skill/247-2 200t append
