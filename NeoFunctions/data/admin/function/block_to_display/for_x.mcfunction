# 命名：for_x
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/for_x
 # for_x.mcfunction
 # 
 #
 # Created by .
##

data modify storage admin:btd Macro.Min set value 0
data modify storage admin:btd Macro.Max set from storage admin:btd Macro.Y
data modify storage admin:btd Macro.Function set value "admin:block_to_display/for_y"
$scoreboard players set #CalcX temp $(i)
scoreboard players operation #CalcX temp += #CalcX2 temp

$execute positioned ~$(i) ~ ~ run function neofunction:asset/nbt/for_in_range with storage admin:btd Macro