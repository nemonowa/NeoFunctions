# 命名：attack_drip
# 説明：黒い滴り（907）を番人のまわりに 2 体呼ぶ（近くに 4 体まで）
# 実行条件：実行者・実行位置 本体
# >/function neofunction:entity/skill/boss/rubra_keeper/attack
# =/function neofunction:entity/skill/boss/rubra_keeper/attack_drip

# 内容
execute store result score #rubra_n temp if entity @e[type=drowned,tag=rubra_drip,distance=..24]
# 呼ぶペースを落とした：1 回に 1 体、近くに 3 体まで
execute if score #rubra_n temp matches 2.. run return run function neofunction:entity/skill/boss/rubra_keeper/puddle
execute store result score #rubra_r temp run random value 0..1
execute if score #rubra_r temp matches 0 positioned ~3 ~ ~2 run return run function neofunction:system/rubra/d2/drip
execute positioned ~-3 ~ ~2 run function neofunction:system/rubra/d2/drip
