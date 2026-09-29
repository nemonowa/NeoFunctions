# 命名：damage
# 説明：（説明未記載）
# >/function neofunction:entity/skill/boss/valerica/tick
# =/function neofunction:entity/skill/boss/valerica/damage

execute if entity @s[tag=valericaToYellow] run function neofunction:entity/skill/boss/valerica/yellow with storage neofunction:bossbar
execute if data entity @s {AbsorptionAmount:0f} run return run data modify entity @s AbsorptionAmount set value 2000f
function neofunction:entity/skill/boss/valerica/yellow_value with storage neofunction:bossbar
execute if data entity @s {AbsorptionAmount:2000f} run return 0
execute store result score #Calc temp run data get entity @s AbsorptionAmount -100000
scoreboard players add #Calc temp 200000000
execute store result storage neofunction:skill/valerica Damage float 0.00001 run scoreboard players get #Calc temp
function neofunction:entity/skill/boss/valerica/damage_macro with storage neofunction:skill/valerica
playsound block.anvil.land hostile @a[distance=..20] ~ ~ ~ 1 2
data modify entity @s AbsorptionAmount set value 2000f