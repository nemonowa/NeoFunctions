# 命名：1328
# 説明：elementalstaffで殴った時
# >/function neofunction:tick/looking_at/copy_all
# =/function neofunction:system/adv/player_hurt_entity/1328



## 内容

title @s actionbar [{"text":"スペルアイテム🔯発動【元素の加護】","color":"light_purple"}]

effect give @s minecraft:resistance 15 2 false
effect give @s minecraft:glowing 15 0 true
tag @s add dirtshieldplayer

execute as @e[tag=dirtshield] at @s run playsound block.rooted_dirt.step master @a[distance=..32] ~ ~ ~ 0.5 0.5 0.01


effect give @s minecraft:instant_health
particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0.1 20 force
playsound block.water.ambient record @s ~ ~ ~ 0.4 1.0


execute as @e[tag=enemy,distance=..4,sort=nearest,limit=2] run effect give @s minecraft:levitation 1
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=2] run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.2 10
execute as @e[tag=enemy,distance=..4,sort=nearest,limit=2] run playsound entity.iron_golem.attack record @a[distance=..8] ~ ~ ~ 0.4 0.5 0.01

execute as @e[tag=enemy,distance=..8,sort=nearest,limit=2] at @s run playsound minecraft:entity.generic.explode record @a[distance=..16] ~ ~ ~ 0.5 1.5 0.01
execute as @e[tag=enemy,distance=..8,sort=nearest,limit=2] at @s run damage @s 10 minecraft:explosion by @s
execute as @e[tag=enemy,distance=..8,sort=nearest,limit=2] at @s run particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 0.1 200 force

