# 命名：get_model2
# 説明：（説明未記載）
# >
# =/function admin:block_to_display/get_model2
data modify storage admin:btd Temp.block_state set from entity @s block_state
data modify storage admin:btd Temp.transformation.translation set from entity @s transformation.translation
data modify storage admin:btd Passengers append from storage admin:btd Temp

data remove storage admin:btd Temp