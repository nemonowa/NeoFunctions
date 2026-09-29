# 命名：air
# 説明：スポナー等破壊処理
# 説明：airのtagを持つエンティティ(スポナーアマスタ起点)の自座標が空気になった時に実行
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/air


# 演出
execute as @s at @s run particle soul ~ ~1.2 ~ 0 0 0 1 0 normal
execute as @s at @s run playsound minecraft:block.glass.break record @a[distance=..8] ~ ~ ~ 1 0.75 1
execute as @s at @s run playsound minecraft:block.amethyst_cluster.break record @a[distance=..8] ~ ~ ~ 1 1.5 1

# スポナー等破壊
scoreboard players add @a[distance=..5] minedSpawner 1
scoreboard players add credit world 1

# 透明化解除
effect clear @a[distance=..6] minecraft:invisibility

# 通知
execute as @a[distance=..8] run title @s actionbar [{"text":"スポナー破壊クレジット：","color":"gold","bold":true},{"score":{"name":"@s","objective":"minedSpawner"}}]

# 25%の確率で壺抽選を実行（特定のアイテムで破壊した時に発動
execute if entity @a[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[1146.0f]}}}},distance=..8] as @s[predicate=neofunction:random_chance/25] at @s run function neofunction:entity/skill/air-pot

# 100%の確率でEXPOrbをその場に召喚（火器で破壊した場合）
execute if entity @a[nbt={SelectedItem:{components:{"minecraft:custom_model_data":{floats:[995.0f]}}}},distance=..8] at @s run summon experience_orb ~ ~ ~ {Count:3,Value:12}


#削除
execute as @s at @s on passengers run kill @s
execute as @s at @s run kill @s
