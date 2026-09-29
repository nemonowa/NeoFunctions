# 命名：water1s
# 説明：
# >adv
# =/function neofunction:system/adv/enter_block/water1s

execute if biome ~ ~ ~ neodimension:plantopia run function neofunction:player/sp/remove/abyss
execute if biome ~ ~ ~ neodimension:plantopia run function neofunction:player/sp/.neo
execute if biome ~ ~ ~ neodimension:plantopia run playsound block.beacon.deactivate hostile @s ~ ~ ~ 0.3 2