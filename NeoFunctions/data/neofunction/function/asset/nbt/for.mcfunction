# 命名：for
# 説明：入力：List:[<繰り返す中身>] Function:"<functionのパス>"
# 説明：出力：指定functionにマクロでListの中身をiとして渡す
# >
# =/function neofunction:asset/nbt/for

data remove storage neofunction:asset/nbt Temp
$data modify storage neofunction:asset/nbt Temp.List set value $(List)
$data modify storage neofunction:asset/nbt Temp.InMacro.Function set value "$(Function)"

function neofunction:asset/nbt/for_loop with storage neofunction:asset/nbt Temp.InMacro

data remove storage neofunction:asset/nbt Temp