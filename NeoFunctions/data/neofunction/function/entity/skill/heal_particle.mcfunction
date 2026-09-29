# 命名：回復処理
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/heal_particle


# 説明：周囲16m以内の敵が回復する。
execute as @e[tag=Healing] at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 1 0.5 1 100 force
execute as @e[tag=Healing] at @s run playsound block.beacon.activate record @a[distance=..16] ~ ~ ~ 0.2 1.6