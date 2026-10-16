# 命名：say
# 説明：三つの水門の間の、今の水の分け方を回した人の画面に出す（東・西・北と、合わせての量）
# 実行条件：実行者 プレイヤー（apply のあと：#r2_e・#r2_w・#r2_n temp が入っている）
# >/function neofunction:system/world/ceresta/rubra/d2/water/valve
# >/function neofunction:system/world/ceresta/rubra/d2/water/plug
# =/function neofunction:system/world/ceresta/rubra/d2/water/say

# 内容
execute store result score #r2_a temp run data get storage neofunction:rubra d2.total
title @s actionbar [{"text":"水の分け方　","color":"#7FD8FF"},{"text":"東 ","color":"white"},{"score":{"name":"#r2_e","objective":"temp"},"color":"aqua"},{"text":"　西 ","color":"white"},{"score":{"name":"#r2_w","objective":"temp"},"color":"aqua"},{"text":"　北 ","color":"white"},{"score":{"name":"#r2_n","objective":"temp"},"color":"aqua"},{"text":"　（合わせて ","color":"gray"},{"score":{"name":"#r2_a","objective":"temp"},"color":"gray"},{"text":" つぶん）","color":"gray"}]
