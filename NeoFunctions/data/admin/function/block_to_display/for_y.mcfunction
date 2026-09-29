# 命名：for_y
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/for_y
 # for_y.mcfunction
 # 
 #
 # Created by .
##
data modify storage admin:btd Macro.Min set value 0
data modify storage admin:btd Macro.Max set from storage admin:btd Macro.Z
data modify storage admin:btd Macro.Function set value "admin:block_to_display/for_z"
$scoreboard players set #CalcY temp $(i)
scoreboard players operation #CalcY temp += #CalcY2 temp

$execute positioned ~ ~$(i) ~ run function neofunction:asset/nbt/for_in_range with storage admin:btd Macro