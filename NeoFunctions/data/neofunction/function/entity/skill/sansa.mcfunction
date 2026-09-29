# 命名：sansa
# 説明：三叉弓追尾
# 説明：tag=sansa
# >/function neofunction:entity/.spawn/arrow/sansa
# =/function neofunction:entity/skill/sansa


#内容

execute at @e[tag=sansa] run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 1 1 force
execute at @e[tag=sansa] run playsound minecraft:entity.warden.sonic_charge player @a[distance=..16] ~ ~ ~ 0.5 1.7

# サーチ距離
execute at @e[tag=sansa] as @e[tag=enemy,distance=..50] at @s run summon minecraft:marker ~ ~ ~ {Tags:[sansaHoming]}
execute as @e[tag=sansa] at @s positioned ^1.5 ^ ^ summon minecraft:arrow run function neofunction:entity/skill/sansa2
execute as @e[tag=sansa] at @s positioned ^-1.5 ^ ^ summon minecraft:arrow run function neofunction:entity/skill/sansa2
execute as @e[tag=sansa] run function neofunction:entity/skill/sansa2
kill @e[tag=sansaHoming]