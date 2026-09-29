# 命名：for
# 説明：（説明未記載）
# >/function neofunction:asset/bossbar/hide
# =/function neofunction:asset/bossbar/for

$execute store result score #Calc temp run data get storage neofunction:bossbar IDs[$(i)]
execute as @e[tag=boss] store result score @s temp run data get entity @s UUID[0]
data modify storage neofunction:bossbar Check set value 0b
execute as @e[tag=boss] if score @s temp = #Calc temp run data modify storage neofunction:bossbar Check set value 1b
$execute if data storage neofunction:bossbar {Check:0b} run data modify storage neofunction:bossbar Remove append value $(i)
