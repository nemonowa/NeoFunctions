# 命名：getfarmingfortune
# 説明：現在のFFを取得
# >
# =/function neofunction:asset/sign/spellsign/base/getfarmingfortune

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

return run scoreboard players get @s temp