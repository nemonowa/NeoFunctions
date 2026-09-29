# 命名：for_loop
# 説明：
# >/function neofunction:asset/nbt/for
# =/function neofunction:asset/nbt/for_loop

data modify storage neofunction:asset/nbt Temp.OutMacro.i set from storage neofunction:asset/nbt Temp.List[0]
# 必要な情報をスタックへGO Last-in Last-out
data modify storage neofunction:asset/nbt Temp.GoStack.InMacro set from storage neofunction:asset/nbt Temp.InMacro
data modify storage neofunction:asset/nbt Temp.GoStack.List set from storage neofunction:asset/nbt Temp.List
data modify storage neofunction:asset/nbt ForStack append from storage neofunction:asset/nbt Temp.GoStack
$function $(Function) with storage neofunction:asset/nbt Temp.OutMacro
# 情報をスタックから取り出す
data modify storage neofunction:asset/nbt Temp.InMacro set from storage neofunction:asset/nbt ForStack[-1].InMacro
data modify storage neofunction:asset/nbt Temp.List set from storage neofunction:asset/nbt ForStack[-1].List
data remove storage neofunction:asset/nbt ForStack[-1]
data remove storage neofunction:asset/nbt Temp.List[0]
execute if data storage neofunction:asset/nbt Temp.List[0] run function neofunction:asset/nbt/for_loop with storage neofunction:asset/nbt Temp.InMacro