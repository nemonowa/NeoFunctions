# 命名：valve_one
# 説明：【追加：2026-10-09 ルブラ編】水門 1 つぶん：残り時間を 1 減らし、開いていれば水の筋を見せて #rk_open temp に数える。閉じる 5 秒前から 0.5 秒ごとに音で知らせる
# 実行条件：実行者・実行位置 本体。引数 v（v1〜v4）i（1〜4）
# >/function neofunction:entity/skill/boss/rubra_keeper/valves_tick
# =/function neofunction:entity/skill/boss/rubra_keeper/valve_one

# 内容
$execute store result score #rk_v temp run data get storage neofunction:rubra d2.kopen.$(v)
execute unless score #rk_v temp matches 1.. run return 0
scoreboard players remove #rk_v temp 1
$execute store result storage neofunction:rubra d2.kopen.$(v) int 1 run scoreboard players get #rk_v temp
# 【追加：2026-10-09】閉じた：柱を水色に戻す
$execute if score #rk_v temp matches 0 as @e[type=interaction,tag=rubra_kvalve_$(i),limit=1] at @s run fill ~ ~1 ~ ~ ~4 ~ minecraft:light_blue_stained_glass replace minecraft:blue_stained_glass
$execute if score #rk_v temp matches 0 as @e[type=interaction,tag=rubra_kvalve_$(i),limit=1] at @s run playsound minecraft:block.iron_trapdoor.close block @a[distance=..32] ~ ~ ~ 1 0.6
execute if score #rk_v temp matches 0 run return 0
scoreboard players add #rk_open temp 1
execute if score #rk_v temp < #rk_min temp run scoreboard players operation #rk_min temp = #rk_v temp
# 水の筋（10 tick ごと。定数 $10 const を使う）
execute store result score #rk_m temp run data get storage neofunction:rubra keeper.t
scoreboard players operation #rk_m temp %= $10 const
$execute if score #rk_m temp matches 0 as @e[type=interaction,tag=rubra_kvalve_$(i),limit=1] at @s positioned ~ ~1.5 ~ facing entity @e[type=iron_golem,tag=rubra_keeper,limit=1] feet run function neofunction:entity/skill/boss/rubra_keeper/stream
$execute as @e[type=interaction,tag=rubra_kvalve_$(i),limit=1] at @s run particle minecraft:falling_water ~ ~2 ~ 0.3 0.4 0.3 0 3 normal
$execute if score #rk_v temp matches 1..100 if score #rk_m temp matches 0 as @e[type=interaction,tag=rubra_kvalve_$(i),limit=1] at @s run playsound minecraft:block.note_block.hat block @a[distance=..32] ~ ~ ~ 1 1.5
