# 命名：drip
# 説明：【追加：2026-10-09 ルブラ編】黒い水の溜まりから黒い滴り（907）が湧く。6 秒に 1 回ぐらい、近くに 3 体まで
# 実行条件：実行者 プレイヤー（黒い水の溜まりの近く）
# >/function neofunction:system/adv/tick/dungeon/rubra2
# =/function neofunction:system/adv/tick/dungeon/rubra2/drip

# 内容
execute store result score #rubra_r temp run random value 1..6
execute unless score #rubra_r temp matches 1 run return 0
execute store result score #rubra_n temp if entity @e[type=drowned,tag=rubra_drip,distance=..24]
execute if score #rubra_n temp matches 3.. run return 0
execute as @e[type=marker,tag=rubra_flush,limit=1,sort=nearest] at @s run function neofunction:system/rubra/d2/drip
