# 命名：回復処理
# 説明：
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/healed


# 説明：周囲16m以内の敵が回復する。
effect give @e[tag=enemy,tag=Healing] regeneration 5 4
execute as @e[tag=enemy,tag=Healing] at @s run particle minecraft:heart ~ ~ ~ 0.2 0.2 0.2 0.1 9 force
execute as @e[tag=enemy,tag=Healing] at @s run playsound block.beacon.activate master @a[distance=..16] ~ ~ ~ 1.5 1.6
tag @e[tag=Healing] remove Healing