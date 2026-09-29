# 命名：damage_alt
# 説明：
# >/function neofunction:entity/skill/boss/frog_boss/tick
# =/function neofunction:entity/skill/boss/frog_boss/damage_alt

execute store result score Damage temp run data get entity @s AbsorptionAmount -100000
scoreboard players add Damage temp 200000000
execute store result storage neofunction:skill/protected Damage float 0.00001 run scoreboard players get Damage temp
function neofunction:entity/skill/boss/frog_boss/damage_alt_macro with storage neofunction:skill/protected
data modify entity @s AbsorptionAmount set value 2000f