# 命名：3_second
# 説明：低周期クロック
# 実行条件：3秒周期
# >/function neofunction:system/clock/all_clock_start
# =/function neofunction:system/clock/3_second


# NEXUSのアンカーにパーティクル
execute at 5f73a4fd-438a-4fd6-8464-cbe575cc9464 run particle minecraft:end_rod ~ ~2 ~ 0 0 0 0.5 22 normal
execute as 6e9de8fd-5925-492a-97eb-4d4a2d86e5b4 at @s facing entity @p eyes run tp @s ~ ~ ~ ~ 0
execute as 6e9de8fd-5925-492a-97eb-4d4a2d86e5b4 at @s positioned ^-0.6 ^1 ^ rotated ~90 ~ run function neofunction:asset/particle/ceresta-wing

# 内容
advancement revoke @a from neofunction:.clock/3s
execute as @e[type=armor_stand,tag=3s] at @s run tp @s ~ ~3.0 ~

# SP自然回復
execute unless score nosp temp matches -1 run function neofunction:player/sp/regene/3s

# 属性
execute as @a at @s as @e[distance=..32,tag=soul1,predicate=neofunction:random_chance/50] at @s anchored eyes run particle minecraft:dust{color:[1.0,1,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force
execute as @a at @s as @e[distance=..32,tag=soul2,predicate=neofunction:random_chance/50] at @s anchored eyes run particle minecraft:dust{color:[1,1,1.0],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force
execute as @a at @s as @e[distance=..32,tag=soul3,predicate=neofunction:random_chance/50] at @s anchored eyes run particle minecraft:dust{color:[1,1.0,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force
execute as @a at @s as @e[distance=..32,tag=soul4,predicate=neofunction:random_chance/50] at @s anchored eyes run particle minecraft:dust{color:[1.0,1.0,1],scale:2} ^ ^ ^ 0.3 0.3 0.3 1 10 force

# skillclock
function neofunction:entity/skill/clock/3s

# AJクロック scoreboard.datが消えても死なない特別仕様
execute if score aj.last_id aj.id matches -2147483648..2147483647 store result storage neofunction:aj last_id int 1 run scoreboard players get aj.last_id aj.id
execute store result score aj.last_id aj.id run data get storage neofunction:aj last_id
execute if score aj.last_id aj.id matches -2147483648..2147483647 run function animated_java:global/data_manager/on_tick

# 再装填
schedule clear neofunction:system/clock/3_second
schedule function neofunction:system/clock/3_second 3s

