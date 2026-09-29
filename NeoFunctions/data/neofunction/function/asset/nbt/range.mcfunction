# 命名：range
# 説明：Min以上Max未満の整数値のリストを生成する
# 説明：入力：Min:<最小値 int> Max:<最大値 int>
# 説明：出力：neofunction:asset/nbt Output
# >
# =/function neofunction:asset/nbt/range

data remove storage neofunction:asset/nbt Temp
$scoreboard players set #Asset.Nbt.RangeMin temp $(Min)
$scoreboard players set #Asset.Nbt.RangeMax temp $(Max)

data modify storage neofunction:asset/nbt Output set value []
function neofunction:asset/nbt/range_loop