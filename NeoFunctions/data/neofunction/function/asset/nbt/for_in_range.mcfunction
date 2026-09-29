# 命名：for_in_range
# 説明：入力：Function:"<functionのパス>" Min:<最小値 int> Max:<最大値 int>
# 説明：出力：指定functionにマクロでMin以上Max未満の整数をiとして渡す
# >
# =/function neofunction:asset/nbt/for_in_range

$function neofunction:asset/nbt/range {Min:$(Min),Max:$(Max)}
data remove storage neofunction:asset/nbt Temp
$data modify storage neofunction:asset/nbt Temp.For.Function set value "$(Function)"
data modify storage neofunction:asset/nbt Temp.For.List set from storage neofunction:asset/nbt Output
function neofunction:asset/nbt/for with storage neofunction:asset/nbt Temp.For