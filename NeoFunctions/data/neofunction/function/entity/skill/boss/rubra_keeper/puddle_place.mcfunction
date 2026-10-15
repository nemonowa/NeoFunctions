# 命名：puddle_place
# 説明：見つけた高さに黒い水溜まりを広げる（5×5 を 1 マスずつ。下が地面のマスだけ。puddle_cell）
# 実行条件：実行位置 地面の上（ブロックの高さにそろえてある）
# >/function neofunction:entity/skill/boss/rubra_keeper/puddle_down
# =/function neofunction:entity/skill/boss/rubra_keeper/puddle_place

# 内容
particle minecraft:squid_ink ~ ~0.5 ~ 1.5 0.3 1.5 0.05 60 normal
execute positioned ~-2 ~ ~-2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-2 ~ ~-1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-2 ~ ~ run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-2 ~ ~1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-2 ~ ~2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-1 ~ ~-2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-1 ~ ~-1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-1 ~ ~ run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-1 ~ ~1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~-1 ~ ~2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~ ~ ~-2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~ ~ ~-1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~ ~ ~ run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~ ~ ~1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~ ~ ~2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~1 ~ ~-2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~1 ~ ~-1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~1 ~ ~ run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~1 ~ ~1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~1 ~ ~2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~2 ~ ~-2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~2 ~ ~-1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~2 ~ ~ run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~2 ~ ~1 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
execute positioned ~2 ~ ~2 run function neofunction:entity/skill/boss/rubra_keeper/puddle_cell
