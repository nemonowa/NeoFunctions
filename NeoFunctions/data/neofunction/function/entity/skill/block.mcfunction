# 命名：block
# 説明：スポナー等破壊処理
# 説明：airのtagを持つエンティティの自座標が空気になった時に実行
# >/function neofunction:entity/skill/.neo
# =/function neofunction:entity/skill/block



#演出
execute as @s at @s run particle block{block_state:"minecraft:sand"} ~ ~ ~ 0 0 0 1 10 normal
execute as @s at @s run playsound minecraft:block.sand.break record @a[distance=..8] ~ ~ ~ 1 0.75 1

#削除
execute as @s at @s on passengers run tag @s add del
execute as @s at @s run tag @s add del