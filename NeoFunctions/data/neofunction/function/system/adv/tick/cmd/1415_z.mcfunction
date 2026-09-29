# 命名：1415_z
# 説明：
# >
# =/function neofunction:system/adv/tick/cmd/1415_z

execute positioned ~ ~ ~1 if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
execute positioned ~ ~ ~ if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
execute positioned ~ ~ ~-1 if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
