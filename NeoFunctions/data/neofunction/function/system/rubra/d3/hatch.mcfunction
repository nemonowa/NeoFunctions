# 命名：hatch
# 説明：塔の台座の裏の床石をずらす：目印の所の 3×3 の床（磨かれた石のハーフブロック）を消して、下の階段を見せる
# 実行条件：実行者・実行位置 目印 rubra_cradle_hatch（床石の真ん中）
# >/function neofunction:system/adv/tick/quest/40/d3/433
# =/function neofunction:system/rubra/d3/hatch

# 内容
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:air replace minecraft:polished_deepslate_slab
particle minecraft:block{block_state:"minecraft:polished_deepslate"} ~ ~ ~ 1 0.3 1 0 40 normal
playsound minecraft:block.stone.break block @a[distance=..16] ~ ~ ~ 1 0.6
data modify storage neofunction:rubra d3.hatch set value 1b
