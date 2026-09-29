# 命名：1416_z
# 説明：
# >
# =/function neofunction:system/adv/tick/cmd/1416_z

execute positioned ~ ~ ~2 if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
execute positioned ~ ~ ~1 if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
execute positioned ~ ~ ~ if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
execute positioned ~ ~ ~-1 if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
execute positioned ~ ~ ~-2 if block ~ ~ ~ wheat[age=7] run function neofunction:system/adv/tick/cmd/1415_harvest
