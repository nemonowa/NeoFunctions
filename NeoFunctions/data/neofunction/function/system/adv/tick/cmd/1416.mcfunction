# 命名：1416
# 説明：
# >/advancement neofunction:tick/cmd/1416
# =/function neofunction:system/adv/tick/cmd/1416

# 幸運[農業]に対応
# FarmingFortune:{Slot:"head/chest/legs/feet/mainhand/offhand",Amount:<Double>}
scoreboard players set @s temp 100
scoreboard players set FarmingFortune temp 0
execute if data entity @s equipment.head.components."minecraft:custom_data".FarmingFortune{Slot:"head"} store result score FarmingFortune temp run data get entity @s equipment.head.components."minecraft:custom_data".FarmingFortune.Amount 100
scoreboard players operation @s temp += FarmingFortune temp
scoreboard players set FarmingFortune temp 0
execute if data entity @s equipment.chest.components."minecraft:custom_data".FarmingFortune{Slot:"chest"} store result score FarmingFortune temp run data get entity @s equipment.chest.components."minecraft:custom_data".FarmingFortune.Amount 100
scoreboard players operation @s temp += FarmingFortune temp
scoreboard players set FarmingFortune temp 0
execute if data entity @s equipment.legs.components."minecraft:custom_data".FarmingFortune{Slot:"legs"} store result score FarmingFortune temp run data get entity @s equipment.legs.components."minecraft:custom_data".FarmingFortune.Amount 100
scoreboard players operation @s temp += FarmingFortune temp
scoreboard players set FarmingFortune temp 0
execute if data entity @s equipment.feet.components."minecraft:custom_data".FarmingFortune{Slot:"feet"} store result score FarmingFortune temp run data get entity @s equipment.feet.components."minecraft:custom_data".FarmingFortune.Amount 100
scoreboard players operation @s temp += FarmingFortune temp
scoreboard players set FarmingFortune temp 0
execute if data entity @s equipment.offhand.components."minecraft:custom_data".FarmingFortune{Slot:"offhand"} store result score FarmingFortune temp run data get entity @s equipment.offhand.components."minecraft:custom_data".FarmingFortune.Amount 100
scoreboard players operation @s temp += FarmingFortune temp
scoreboard players set FarmingFortune temp 0
execute if data entity @s SelectedItem.components."minecraft:custom_data".FarmingFortune{Slot:"mainhand"} store result score FarmingFortune temp run data get entity @s SelectedItem.components."minecraft:custom_data".FarmingFortune.Amount 100
scoreboard players operation @s temp += FarmingFortune temp

scoreboard players operation BonusFF temp = @s temp
scoreboard players operation BonusFF temp %= $100 const
execute store result score random temp run random value 1..100
execute if score BonusFF temp >= random temp run scoreboard players add @s temp 100
scoreboard players operation @s temp -= BonusFF temp

execute if data entity @s equipment.head if data entity @s equipment.chest if data entity @s equipment.legs if data entity @s equipment.feet run tag @s add item1593

# 内容
execute positioned ~2 ~ ~ run function neofunction:system/adv/tick/cmd/1416_y
execute positioned ~1 ~ ~ run function neofunction:system/adv/tick/cmd/1416_y
execute positioned ~ ~ ~ run function neofunction:system/adv/tick/cmd/1416_y
execute positioned ~-1 ~ ~ run function neofunction:system/adv/tick/cmd/1416_y
execute positioned ~-2 ~ ~ run function neofunction:system/adv/tick/cmd/1416_y

tag @s[tag=item1593] remove item1593