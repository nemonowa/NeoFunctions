# 命名：995_haste_calc
# 説明：採掘上昇レベルを計算
# 実行条件：外付けの採掘上昇がある
# >/function neofunction:system/adv/tick/cmd/995
# =/function neofunction:system/adv/tick/cmd/995_haste_calc

scoreboard players operation 10x temp = @s HasteLevel
scoreboard players operation 10x temp += 10x temp
scoreboard players add 10x temp 10
# もともとの速度計算式：1+0.2level
# x倍後：0.2(xlevel+5x) = 1+0.2*0.1(10xlevel+50(x-1))
# レベルを10x倍して50(x-1)レベル足して10で割る
scoreboard players operation MiningSpeed temp *= 10x temp
scoreboard players remove 10x temp 10
scoreboard players operation MiningSpeed temp += 10x temp
scoreboard players operation MiningSpeed temp += 10x temp
scoreboard players operation MiningSpeed temp += 10x temp
scoreboard players operation MiningSpeed temp += 10x temp
scoreboard players operation MiningSpeed temp += 10x temp

scoreboard players operation MiningSpeed temp /= $10 const