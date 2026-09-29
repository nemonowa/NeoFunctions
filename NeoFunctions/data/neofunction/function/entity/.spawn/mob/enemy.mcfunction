# 命名：enemy
# 説明：敵性エンティティ処理
# >/function neofunction:entity/.spawn/mob
# =/function neofunction:entity/.spawn/mob/enemy


# 共通処理
tag @s add enemy

# ランダムに属性付与
execute if predicate neofunction:random_chance/1 run tag @s[tag=!elite] add soul1
execute if predicate neofunction:random_chance/1 run tag @s[tag=!elite] add soul2
execute if predicate neofunction:random_chance/1 run tag @s[tag=!elite] add soul3
execute if predicate neofunction:random_chance/1 run tag @s[tag=!elite] add soul4

# オプション：夜バフ
execute if score night temp matches -1 as @s[predicate=neofunction:time_check/night] run function neofunction:entity/attribute/night
# execute if score difficulty world matches 100.. run function neofunction:entity/attribute/difficulty

# ゾンビ：ドアを壊して、村人ゾンビのSSR化を防ぎ、ユニークmobは変身しないようにする。
execute as @s[type=zombie] run data merge entity @s {CanBreakDoors:1b}
execute as @e[type=zombie_villager] run data merge entity @s {ConversionTime:2147483647}
execute as @e[type=zombie,nbt=!{Health:20f}] run data merge entity @s {InWaterTime:-2147483647}
execute as @e[type=drowned,nbt=!{Health:20f}] run data merge entity @s {DrownedConversionTime:-2147483647}

# 個別処理
# クリーパー:爆発を早める
#execute as @s[type=creeper,tag=!vanilla] run data merge entity @s {Fuse:0s}

# スライム
execute as @s[type=#neofunction:slimes] run tag @s[tag=vanilla] add del
execute as @s[type=#neofunction:slimes] run tag @s add cuboid

# Shulker
execute as @s[type=shulker] run tag @s add cuboid

# ghast
execute as @s[type=ghast] run tag @s add cuboid

# armadillo
# execute as @s[type=armadillo] run tag @s add cuboid

# bee
execute as @s[type=bee] run effect give @s wither infinite 0 false

# zombie_horse
execute as @s[type=zombie_horse] run effect give @s regeneration infinite 0 false


# 中立mobの敵対化
# execute as @s[type=zombified_piglin] run data merge entity @s {AngerTime:2147483647}
# execute as @s[type=enderman] run data merge entity @s {AngerTime:2147483647}



