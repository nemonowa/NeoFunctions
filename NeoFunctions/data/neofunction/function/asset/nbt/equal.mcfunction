# 命名：equal
# 説明：マクロでAとBをもらって等しいかどうか判定してreturn
# >
# =/function neofunction:asset/nbt/equal

data remove storage neofunction:asset/nbt Temp
$data modify storage neofunction:asset/nbt Temp.A set value $(A)
$data modify storage neofunction:asset/nbt Temp.B set value $(B)

execute store success storage neofunction:asset/nbt Temp.NotResult byte 1 run data modify storage neofunction:asset/nbt Temp.A set from storage neofunction:asset/nbt Temp.B

# 結果が逆転してるので戻す
execute if data storage neofunction:asset/nbt Temp{NotResult:1b} run return 0
execute if data storage neofunction:asset/nbt Temp{NotResult:0b} run return 1
