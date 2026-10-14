# 命名：puddle_cell
# 説明：【追加：2026-10-09 ルブラ編】黒い水溜まりの 1 マス：空気で、下が地面（置き換えられるブロックでない）のときだけ黒いカーペットを置く
# 実行条件：実行位置 置くマス
# >/function neofunction:entity/skill/boss/rubra_keeper/puddle_place
# =/function neofunction:entity/skill/boss/rubra_keeper/puddle_cell

# 内容
execute if block ~ ~ ~ minecraft:air unless block ~ ~-1 ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:black_carpet
