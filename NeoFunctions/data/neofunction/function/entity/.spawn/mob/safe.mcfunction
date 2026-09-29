# 命名：safe
# 説明：エンティティ処理
# >/function neofunction:entity/.spawn/mob
# =/function neofunction:entity/.spawn/mob/safe


# 共通処理
tag @s add safe

# 個別処理
execute as @s[type=armor_stand] run function neofunction:entity/.spawn/mob/armor_stand/.neo
execute as @s[type=minecraft:polar_bear] run data merge entity @s {Invulnerable:1b,Tags:["argnaute"]}