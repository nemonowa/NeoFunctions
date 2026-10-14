# 命名：drip
# 説明：【追加：2026-10-09 ルブラ編】黒い水が盛り上がって、黒い滴り（907）になる
# 実行条件：実行位置 黒い水の溜まりの目印、または番人のまわり
# >/function neofunction:system/adv/tick/dungeon/rubra2/drip
# >/function neofunction:entity/skill/boss/rubra_keeper/attack_drip
# =/function neofunction:system/rubra/d2/drip

# 内容
particle minecraft:falling_dust{block_state:"minecraft:black_concrete"} ~ ~0.5 ~ 0.5 0.8 0.5 0 30 normal
playsound minecraft:entity.drowned.ambient_water hostile @a[distance=..16] ~ ~ ~ 1 0.6
function neofunction:asset/summon/907
