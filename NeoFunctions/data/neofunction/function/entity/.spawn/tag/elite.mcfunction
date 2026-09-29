# 命名：elite
# 説明：エンティティ処理
# 説明：カスタムタグを持っている=カスタムエンティティ
# >/function neofunction:entity/1_spawn_check
# =/function neofunction:entity/.spawn/tag/elite



# ボス
team join elite @s[tag=!boss]

effect give @s minecraft:resistance infinite 1

execute as @s[team=elite] at @s run title @a[distance=..64] actionbar [{"text":"戦場の空気が張り詰める...","color":"dark_red"}]

execute as @s at @s as @a[distance=..64] run playsound minecraft:entity.wither.spawn record @s ~ ~ ~ 0.1 1.5 1



execute if entity @s[nbt={PersistenceRequired:0b}] run return run data merge entity @s {Glowing:1b,CustomNameVisible:1b}
data merge entity @s {PersistenceRequired:1b,Glowing:1b,CustomNameVisible:1b}

