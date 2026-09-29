# 命名：clocker_24
# 説明：（説明未記載）
# >/function neofunction:entity/skill/clock/3s
# =/function neofunction:entity/skill/clocker_24


data modify entity @s transformation.right_rotation set from storage neofunction:skill/clocker Temp.right_rotation
data modify entity @s interpolation_duration set value 20
data modify entity @s start_interpolation set value 0
function neofunction:entity/skill/superdisplay