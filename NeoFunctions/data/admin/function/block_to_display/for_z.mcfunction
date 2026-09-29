# 命名：for_z
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/for_z
 # for_z.mcfunction
 # 
 #
 # Created by .
##
$scoreboard players set #CalcZ temp $(i)
scoreboard players operation #CalcZ temp += #CalcZ2 temp
$execute positioned ~ ~ ~$(i) unless block ~ ~ ~ #admin:non_visible run function admin:block_to_display/check
