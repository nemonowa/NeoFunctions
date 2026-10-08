# 命名：golem
# 説明：【追加：2026-10-08 ルブラ編】赤土の巨人の像を壊す（隠れる場所が減っていく）。像の足もとの印（marker、タグ rubra_golem）のまわりのテラコッタを消す
# 実行条件：実行者・実行位置 像の印
# >/function neofunction:entity/skill/boss/rubra_worm/emerge
# =/function neofunction:entity/skill/boss/rubra_worm/golem

# 内容
particle minecraft:block{block_state:"minecraft:red_terracotta"} ~ ~4 ~ 1.5 3 1.5 0 200 normal
playsound minecraft:entity.iron_golem.death hostile @a[distance=..64] ~ ~4 ~ 2 0.5
playsound minecraft:block.stone.break hostile @a[distance=..64] ~ ~4 ~ 2 0.5
fill ~-3 ~ ~-3 ~3 ~9 ~3 minecraft:air replace #minecraft:terracotta
fill ~-3 ~ ~-3 ~3 ~9 ~3 minecraft:air replace minecraft:black_glazed_terracotta
kill @s
