# 命名：remove
# 説明：（説明未記載）
# >/function neofunction:asset/bossbar/hide
# =/function neofunction:asset/bossbar/remove

execute store result score #Calc1 temp run data get storage neofunction:bossbar Remove[0]
execute if score #Calc temp = #Calc1 temp run data modify storage neofunction:bossbar ID set from storage neofunction:bossbar IDsCopy[0]
execute if score #Calc temp = #Calc1 temp store result storage neofunction:bossbar For.Max int 1 run data get storage neofunction:bossbar For.Max 0.99999999
execute if score #Calc temp = #Calc1 temp run function neofunction:asset/bossbar/remove_macro with storage neofunction:bossbar
execute unless score #Calc temp = #Calc1 temp run data modify storage neofunction:bossbar IDs append from storage neofunction:bossbar IDsCopy[0]
data remove storage neofunction:bossbar IDsCopy[0]
scoreboard players add #Calc temp 1
execute if data storage neofunction:bossbar IDsCopy[0] run function neofunction:asset/bossbar/remove