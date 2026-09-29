# 命名：248-run
# 説明：（説明未記載）
# >/function neofunction:player/job/doctor/potion/player
# =/function neofunction:asset/skill/248-run

execute if score @s SP matches ..0 run return run function neofunction:system/trigger/on/sp
scoreboard players remove @s SP 10

execute as @a[distance=..4] at @s run particle minecraft:happy_villager ~ ~1.5 ~ 0.3 0.3 0.3 0 12 force
execute as @a[distance=..4] at @s run playsound minecraft:block.amethyst_block.chime record @s ~ ~ ~ 1 1.3
execute as @a[distance=..4] run effect clear @s minecraft:poison
execute as @a[distance=..4] run effect clear @s minecraft:wither
execute as @a[distance=..4] run effect clear @s minecraft:weakness
execute as @a[distance=..4] run effect clear @s minecraft:mining_fatigue
execute as @a[distance=..4] run effect clear @s minecraft:slowness
execute as @a[distance=..4] run effect clear @s minecraft:nausea
execute as @a[distance=..4] run effect clear @s minecraft:blindness
execute as @a[distance=..4] run effect clear @s minecraft:hunger
execute as @a[distance=..4] run effect clear @s minecraft:unluck
execute as @a[distance=..4] run effect clear @s minecraft:levitation
execute as @a[distance=..4] run effect clear @s minecraft:darkness

