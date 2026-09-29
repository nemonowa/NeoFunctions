# 命名：range_loop
# 説明：
# >/function neofunction:asset/nbt/range
# =/function neofunction:asset/nbt/range_loop

execute store result storage neofunction:asset/nbt Temp int 1 run scoreboard players get #Asset.Nbt.RangeMin temp
execute if score #Asset.Nbt.RangeMin temp >= #Asset.Nbt.RangeMax temp run return 0
data modify storage neofunction:asset/nbt Output append from storage neofunction:asset/nbt Temp
scoreboard players add #Asset.Nbt.RangeMin temp 1
execute if score #Asset.Nbt.RangeMin temp matches -2147483648..2147483647 run function neofunction:asset/nbt/range_loop