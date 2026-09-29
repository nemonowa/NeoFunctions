# 命名：protected
# 説明：10m以内のprotectorにダメージを引き受けられている
# >
# =/function neofunction:entity/skill/protected

execute if data entity @s {AbsorptionAmount:2000f} if entity @e[tag=protector,distance=..10] run return 0

execute unless data entity @s {AbsorptionAmount:2000f} store result score Damage temp run data get entity @s AbsorptionAmount -100000
execute unless data entity @s {AbsorptionAmount:2000f} run scoreboard players add Damage temp 200000000
execute unless data entity @s {AbsorptionAmount:2000f} store result storage neofunction:skill/protected Damage float 0.00001 run scoreboard players get Damage temp
execute unless data entity @s {AbsorptionAmount:2000f} run function neofunction:entity/skill/protected_macro with storage neofunction:skill/protected
execute unless data entity @s {AbsorptionAmount:2000f} run playsound block.anvil.land hostile @a[distance=..20] ~ ~ ~ 1 2
execute unless data entity @s {AbsorptionAmount:2000f} run data modify entity @s AbsorptionAmount set value 2000f

execute unless entity @e[tag=protector,distance=..10] run data modify entity @s AbsorptionAmount set value 0f
execute unless entity @e[tag=protector,distance=..10] run attribute @s max_absorption modifier remove neofunction:00000000-0000-0000-0001-000000000001
execute unless entity @e[tag=protector,distance=..10] run tag @s remove protected