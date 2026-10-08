# 命名：sanddead
# 説明：【追加：2026-10-08 ルブラ編】三の層の砂の亡者。ときどき湧き（近くに 4 体まで）、星核の欠片の光の近くでは弱る
# 説明：ガラン・ルーの札を窪みに置いたあとは湧かない
# 実行条件：実行者 プレイヤー（三の層 y22〜30）
# >/function neofunction:system/adv/tick/dungeon/rubra1
# =/function neofunction:system/adv/tick/dungeon/rubra1/sanddead

# 内容
# 砂のこぼれる見た目
execute as @e[type=husk,tag=rubra_sanddead,distance=..24] at @s run particle minecraft:falling_dust{block_state:"minecraft:sand"} ~ ~1 ~ 0.3 0.6 0.3 0 3 normal
# 星核の欠片の光で弱る
execute if items entity @s weapon.offhand minecraft:red_dye[minecraft:custom_model_data={floats:[1867.0f]}] as @e[type=husk,tag=rubra_sanddead,distance=..5] run effect give @s minecraft:weakness 2 1 true
execute if items entity @s weapon.offhand minecraft:red_dye[minecraft:custom_model_data={floats:[1867.0f]}] as @e[type=husk,tag=rubra_sanddead,distance=..5] run effect give @s minecraft:slowness 2 1 true
# 湧く（8 秒に 1 回ぐらい、近くに 4 体まで）
execute if data storage neofunction:rubra d1{galan:1b} run return 0
execute store result score #rubra_r temp run random value 1..8
execute unless score #rubra_r temp matches 1 run return 0
execute store result score #rubra_n temp if entity @e[type=husk,tag=rubra_sanddead,distance=..32]
execute if score #rubra_n temp matches 4.. run return 0
execute store result score #rubra_r temp run random value 1..3
execute if score #rubra_r temp matches 1 positioned 839.5 25 3293.5 unless entity @s[distance=..8] run function neofunction:system/adv/tick/dungeon/rubra1/sanddead_spawn
execute if score #rubra_r temp matches 2 positioned 833.5 25 3287.5 unless entity @s[distance=..8] run function neofunction:system/adv/tick/dungeon/rubra1/sanddead_spawn
execute if score #rubra_r temp matches 3 positioned 848.5 25 3287.5 unless entity @s[distance=..8] run function neofunction:system/adv/tick/dungeon/rubra1/sanddead_spawn
